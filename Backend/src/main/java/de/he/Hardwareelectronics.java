package de.he;

import org.glassfish.jersey.server.mvc.Viewable;
import java.net.URI;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Hashtable;
import java.util.Vector;

import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import javax.json.Json;
import javax.ws.rs.GET;
import javax.ws.rs.Path;

@Path("/")
public class Hardwareelectronics {
    @GET
    public Viewable Template() throws Exception {
        // This method is only here to deliver the base HTML
        // which then includes the needed client side javascript to fetch JSON data.
        return new Viewable("/index.jsp");
    }

    @GET
    @Path("/cpus.json")
    // Tell Jersey we want to return JSON
    //@Produces(MediaType.APPLICATION_JSON)
    public String cpusJSON() throws Exception {
        //Vector<CPU> entries = getAllCpus();   //Activate when Joels method is ready to return vector
        CPU cpus = getAllCpus();

        // By setting our Vector<EntryModel> into the entity method
        // Jersey now tries to convert our POJO (Plain Old Java Object) into JSON
        //return Response.status(200).entity(cpus).build();
        return "<html>Hallo Welt!</html>";
    }

    //only test until joels method is done
    public CPU getAllCpus() {
        //Aufruf von Joels methode um die objekte aus der db zu ziehen
        CPU cpus = new CPU(120, 1, "AMD", "Ryzen 6", 12, 4, 2, 1000, 1, "AM4", 2);

        //String header = "<html>Hallo Welt!</html>";
        return cpus;
    }
}
