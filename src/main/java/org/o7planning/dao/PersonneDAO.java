package org.o7planning.dao;

import org.o7planning.model.Personne;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;

public interface PersonneDAO {
    public int save(Personne p);
    public int update(Personne p);
    public int delete(int id);
    public Personne getPersonneById(int id);
    public List<Personne> getPersonnes();
    public List<Personne> getPersonnesByNom(String nom);
    public List<Personne> getPersonnesByPrenom(String prenom);
    public List<Personne> getPersonnesByCivilite(String civilite);
    public List<Personne> getPersonnesByNomEtPrenomEtCivilite(String nom,String prenom,String civilite);
    void setTemplate(JdbcTemplate template);
}
