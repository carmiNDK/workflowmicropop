package service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JOptionPane;
import javax.swing.JTable;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

@Path("/workflow")
// http://localhost:8080/apiworkflowmcpop/workflow/InformationClient/12
public class webservicewf {
	Dao d = new Dao();

	@GET
	@Path("/InformationClient/{IdClient}")
	@Produces(MediaType.APPLICATION_JSON)
	public Client GetInformationClient(
			@PathParam(value = "IdClient") int IdClient) {
		Client InformationClient = new Client();
		try {
			InformationClient = d.GetInformationClient(IdClient);
		} catch (Exception e) {

			System.out.println("erreur au niveau GetInformationClient : "
					+ e.getMessage());
			e.printStackTrace();
		}
		return InformationClient;
	}
}
