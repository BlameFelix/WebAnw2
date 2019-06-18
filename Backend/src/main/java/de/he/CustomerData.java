package de.he;

public class CustomerData {

    protected String Email;
    protected String firstname;
    protected String lastname;
    protected String adress;
    protected String city;


    public CustomerData(String Email, String firstname, String lastname, String adress, String city) {
        this.Email = Email;
        this.firstname = firstname;
        this.lastname = lastname;
        this.adress = adress;
        this.city = city;
    }

    public String getEmail() { return Email; }

    public void setEmail( String Email ) { this.Email = Email; }

    public String getFirstname(){ return firstname; }

    public void setFirstname( String firstname ) { this.firstname = firstname; }

    public String getLastname() { return this.lastname; }

    public void setLastname( String lastname ) { this.lastname = lastname; }

    public String getAdress() { return this.adress; }

    public void setAdress(String adress) { this.adress = adress; }

    public String getCity() { return this.city; }

    public void setCity(String city) { this.adress = adress; }

}
