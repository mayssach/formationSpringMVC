package org.o7planning.dao;

import org.o7planning.model.Personne;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;


@Repository
public class PersonneDAOImp implements PersonneDAO{
    @Autowired
    JdbcTemplate template;


    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }
    public int save(Personne p){
        SimpleDateFormat oldsimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        SimpleDateFormat newsimpleDateFormat = new SimpleDateFormat("yyyy/MM/dd");
        Date date = null;
        try {
            date = oldsimpleDateFormat.parse(p.getDateNaissance());
        } catch (ParseException e) {
            throw new RuntimeException(e);
        }
        p.setDateNaissance(newsimpleDateFormat.format(date));
        String sql="insert into PERSONNE(nom,prenom,civilite,adresse,dateNaissance) values('"+p.getNom()+"','"+p.getPrenom()+"','"+p.getCivilite()+"','"+p.getAdresse()+"','"+p.getDateNaissance()+"' )";
        return template.update(sql);
    }
    public int update(Personne p){
        String sql="update PERSONNE set nom='"+p.getNom()+"', prenom='"+p.getPrenom()+"',civilite='"+p.getCivilite()+"'," +
                " adresse='"+p.getAdresse()+"', dateNaissance='"+p.getDateNaissance()+"' where id="+p.getId()+"";
        return template.update(sql);
    }
    public int delete(int id){
        String sql="delete from PERSONNE where id="+id+"";
        return template.update(sql);
    }
    public Personne getPersonneById(int id){
        String sql="select * from PERSONNE where id=?";
        return template.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<Personne>(Personne.class));
    }
    public List<Personne> getPersonnes(){
        return template.query("select * from PERSONNE",new RowMapper<Personne>(){
            public Personne mapRow(ResultSet rs, int row) throws SQLException {
                Personne p=new Personne();
                SimpleDateFormat newsimpleDateFormat = new SimpleDateFormat("dd/MM/yyyy");
                p.setId(rs.getInt(1));
                p.setNom(rs.getString(2));
                p.setPrenom(rs.getString(3));
                p.setCivilite(rs.getString(4));
                p.setAdresse(rs.getString(5));
                p.setDateNaissance((rs.getString(6)));
                return p;
            }
        });
    }
    public List<Personne> getPersonnesByNom(String nom){
        return template.query("select * from PERSONNE where nom like '%"+nom+"%'",new RowMapper<Personne>(){
            public Personne mapRow(ResultSet rs, int row) throws SQLException {
                Personne p=new Personne();
                p.setNom(rs.getString(2));
                p.setPrenom(rs.getString(3));
                p.setCivilite(rs.getString(4));
                p.setAdresse(rs.getString(5));
                return p;
            }
        });
    }

    public List<Personne> getPersonnesByPrenom(String prenom){
        return template.query("select * from PERSONNE where prenom like '%"+prenom+"%'",new RowMapper<Personne>(){
            public Personne mapRow(ResultSet rs, int row) throws SQLException {
                Personne p=new Personne();
                p.setNom(rs.getString(2));
                p.setPrenom(rs.getString(3));
                p.setCivilite(rs.getString(4));
                p.setAdresse(rs.getString(5));
                return p;
            }
        });
    }

    public List<Personne> getPersonnesByCivilite(String civilite){
        return template.query("select * from PERSONNE where civilite='"+civilite+"'",new RowMapper<Personne>(){
            public Personne mapRow(ResultSet rs, int row) throws SQLException {
                Personne p=new Personne();
                p.setNom(rs.getString(2));
                p.setPrenom(rs.getString(3));
                p.setCivilite(rs.getString(4));
                p.setAdresse(rs.getString(5));
                return p;
            }
        });
    }


    public List<Personne> getPersonnesByNomEtPrenomEtCivilite(String nom,String prenom,String civilite){
        return template.query("select * from PERSONNE where nom like '%"+nom+"%' and prenom like'%"+prenom+"%' and civilite like '%"+civilite+"%'",new RowMapper<Personne>(){
            public Personne mapRow(ResultSet rs, int row) throws SQLException {
                Personne p=new Personne();
                p.setNom(rs.getString(2));
                p.setPrenom(rs.getString(3));
                p.setCivilite(rs.getString(4));
                p.setAdresse(rs.getString(5));
                return p;
            }
        });
    }

    public List<Personne> getPersonnesByNomEtCivilite(String nom,String civilite){
        return template.query("select * from PERSONNE where nom like '%"+nom+"%' and civilite='"+civilite+"'",new RowMapper<Personne>(){
            public Personne mapRow(ResultSet rs, int row) throws SQLException {
                Personne p=new Personne();
                p.setNom(rs.getString(2));
                p.setPrenom(rs.getString(3));
                p.setCivilite(rs.getString(4));
                p.setAdresse(rs.getString(5));
                return p;
            }
        });
    }


}
