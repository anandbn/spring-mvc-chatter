package com.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.model.Person;
import com.example.service.ChatterFeedService;
import com.example.service.PersonService;
import com.force.sdk.oauth.context.ForceSecurityContextHolder;
import com.salesforce.chatter.entities.ChatterFeed;

import java.util.Map;

@Controller
public class PersonController {

    @Autowired
    private PersonService personService;

    @Autowired
    private ChatterFeedService chatterService;
    
    @RequestMapping("/")
    public String listPeople(Map<String, Object> map) {
    	map.put("person", new Person());
        map.put("peopleList", personService.listPeople());

        return "people";
    }

    @RequestMapping("/chatter")
    public String chatterFeed(Map<String, Object> map) {
    	/*map.put("chatterFeed", chatterService.getMyChatterFeed());
    	map.put("apiEndpoint",ForceSecurityContextHolder.get().getEndPointHost());
        */
    	return "chatter";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String addPerson(@ModelAttribute("person") Person person, BindingResult result) {

        personService.addPerson(person);

        return "redirect:/people/";
    }

    @RequestMapping("/delete/{personId}")
    public String deletePerson(@PathVariable("personId") String personId) {

        personService.removePerson(personId);

        return "redirect:/people/";
    }
}
