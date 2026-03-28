package clientapiworkflow;

import com.fasterxml.jackson.databind.ObjectMapper;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Base64;
import java.util.Map;
import javax.imageio.ImageIO;
import javax.swing.ImageIcon;
import javax.swing.JFrame;
import javax.swing.JLabel;

public class ClientApiWorkflow {

    private static void showImage(BufferedImage image, String NomsClient) {
        JFrame frame = new JFrame("Noms du client Workflow MICROPOP SA : " + NomsClient);
        JLabel label = new JLabel(new ImageIcon(image));
        frame.getContentPane().add(label);
        frame.pack();
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setVisible(true);
    }

    public static void main(String[] args) {
        try {
            try {
                // Requête HTTP GET
                URL url = new URL("http://localhost:8087/api/images/10");
                HttpURLConnection conn = (HttpURLConnection) url.openConnection();
                conn.setRequestMethod("GET");

                // Lire la réponse JSON
                InputStream is = conn.getInputStream();
                ObjectMapper mapper = new ObjectMapper();
                Map<String, String> response = mapper.readValue(is, Map.class);

                String base64Image = response.get("image");

                // Décoder l’image
                //  byte[] imageBytes = Base64.getDecoder().decode(base64Image);
                String actualBase64 = base64Image.substring(base64Image.indexOf(",") + 1);
                byte[] imageBytes = Base64.getDecoder().decode(actualBase64);

                InputStream in = new ByteArrayInputStream(imageBytes);
                BufferedImage image = ImageIO.read(in);

                // Afficher l’image dans une JFrame
                showImage(image, response.get("nomscompletclient"));

            } catch (Exception e) {
                e.printStackTrace();
            }
        } catch (Exception e) {
        }
    }
}
