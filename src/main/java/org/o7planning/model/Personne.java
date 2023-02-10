package org.o7planning.model;



import javax.persistence.*;


@Entity
@Table(name="PERSONNE")
public class Personne {
    @Override
    public String toString() {
        return "Personne [id=" + id + ", nom=" + nom + ", prenom=" + prenom
                + ", civilite=" + civilite + ", adresse=" + adresse + ", dateNaissance=" + dateNaissance + "]";
    }
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    @Column(name="id")
    private int id;
    @Column(name="nom")
    private String nom;
    @Column(name="prenom")
    private String prenom;
    @Column(name="civilite")
    private String civilite;
    @Column(name="adresse")
    private String adresse;
    @Column(name="dateNaissance")
    private String dateNaissance;

    public void setId(int id) {
        this.id = id;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public void setCivilite(String civilite) {
        this.civilite = civilite;
    }

    public void setAdresse(String adresse) {
        this.adresse = adresse;
    }

    public void setDateNaissance(String dateNaissance) {
        this.dateNaissance = dateNaissance;
    }

    public int getId() {
        return id;
    }

    public String getNom() {
        return nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public String getCivilite() {
        return civilite;
    }

    public String getAdresse() {
        return adresse;
    }

    public String getDateNaissance() {
        return dateNaissance;
    }
}
