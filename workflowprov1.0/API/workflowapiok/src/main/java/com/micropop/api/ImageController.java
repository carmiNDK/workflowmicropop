package com.micropop.api;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;

import org.springframework.util.Base64Utils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ImageController {
	@GetMapping("/api/images/{idclient}")
	public ImageResponse sendImage(@PathVariable("idclient") int idClient) throws IOException {
		Dao D = new Dao();
		String NomClient = D.GetNomClient(idClient);
		String PostNomClient = D.GetPostNomClient(idClient);
		String PrenomClient = D.GetPreNomClient(idClient);
		String NomsCompletClient = NomClient + " " + PostNomClient + " " + PrenomClient;
		// String UrlPhotos = D.GetPhotos(idClient);

		// File imageFile = new File("C:\\dossier_credit_workflow\\" + NomsCompletClient
		// + "\\ " + UrlPhotos); // 🔁
		// Change chemin
		// si besoin
		File imageFile = new File("C:\\dossier_credit_workflow\\Photos\\carmiok.jpg"); // 🔁 Change chemin
		// si besoin
		if (!imageFile.exists()) {
			throw new IOException("Fichier introuvable : " + imageFile.getAbsolutePath());
		}

		byte[] bytes = Files.readAllBytes(imageFile.toPath());
		String mimeType = Files.probeContentType(imageFile.toPath());
		String base64Image = "data:" + mimeType + ";base64," + Base64Utils.encodeToString(bytes);

		return new ImageResponse(NomsCompletClient, "La photos du client de MICROPOP SA", base64Image);
	}
}
