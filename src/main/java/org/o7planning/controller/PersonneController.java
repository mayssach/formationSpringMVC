package org.o7planning.controller;

import org.o7planning.dao.PersonneDAO;
import org.o7planning.model.Personne;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@Controller
public class PersonneController {
    @Autowired
    PersonneDAO dao; //will inject dao from XML file

    @RequestMapping("/personneform")
    public String add(Model m){
        m.addAttribute("command", new Personne());
        return "personneform";
    }

    @PostMapping(value="/save")
    public String save(@ModelAttribute("personne") Personne personne, @RequestParam("dateNaissance") String date) {
        dao.save(personne);
        return "redirect:/viewpersonnes";//will redirect to viewpersonnes request mapping
    }

    @RequestMapping("/viewpersonnes")
    public String showAll(Model m){
        List<Personne> list=dao.getPersonnes();
        m.addAttribute("list",list);
        return "viewpersonnes";
    }
    /* It displays object data into form for the given id.
     * The @PathVariable puts URL data into variable.*/
    @RequestMapping(value="/editform/{id}")
    public String edit(@PathVariable int id, Model m){
        Personne emp=dao.getPersonneById(id);
        m.addAttribute("command",emp);
        return "editform";
    }
    @RequestMapping(value="/editsave",method = RequestMethod.POST)
    public String editsave(@ModelAttribute("personne") Personne personne){
        dao.update(personne);
        return "redirect:/viewpersonnes";
    }

    @RequestMapping(value="/delete/{id}")
    public String delete(@PathVariable int id){
        dao.delete(id);
        return "redirect:/viewpersonnes";
    }
    @RequestMapping("/recherchepersonne")
    public String recherche(Model m){
        m.addAttribute("command", new Personne());
        return "/recherchepersonne";
    }
    @RequestMapping("/viewrecherche")
    public String viewrecherche(Model m,@ModelAttribute("personne") Personne personne) {
        List<Personne> liste = null;
        if (personne.getNom() == "" && personne.getPrenom() == "" && personne.getCivilite() == "");
        else
            liste = dao.getPersonnesByNomEtPrenomEtCivilite(personne.getNom(), personne.getPrenom(), personne.getCivilite());
        m.addAttribute("liste", liste);
        return "/viewrecherche";
    }
}
