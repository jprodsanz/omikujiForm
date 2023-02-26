package com.pablo.omikujiform.controllers;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;

@Controller
public class MainController {
    @RequestMapping("/")
    public String index() {
        return "redirect:/omikuji";
    }
    @RequestMapping(value="/omikuji")
    public String indexReal() {
        return "index.jsp";
    }

    @RequestMapping(value="/submitForm", method=RequestMethod.POST)
    public String submitForm(
            @RequestParam(value="randomNum") int randomNum,
            @RequestParam(value="city") String city,
            @RequestParam(value="humanName") String humanName,
            @RequestParam(value="profession") String profession,
            @RequestParam(value="livingThing") String livingThing,
            @RequestParam(value="saySomethingNice") String saySomethingNice,
            HttpSession session) {
            String dataForm = String.format(
                    "In %s short/long years, you will live in %s with %s.  The next time you see a %s, you will have lots of dough. Also, get a %s",
                    randomNum, city, humanName, profession, livingThing,saySomethingNice);

            session.setAttribute("dataFormFinal", dataForm);
            return "redirect:/omikuji/display";
    }
    @RequestMapping("/omikuji/display")
    public String display(
            HttpSession session, Model model) {
        String displayInput = (String) session.getAttribute("dataFormFinal");
        model.addAttribute("result", displayInput);
        return "display.jsp";
    }
}
