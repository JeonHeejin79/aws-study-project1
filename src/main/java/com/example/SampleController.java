package com.example;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SampleController {

    @RequestMapping(value = "/hello")
    public ModelAndView hello() {

        ModelAndView mav = new ModelAndView();
        mav.addObject("message", "hello World");

        return mav;
    }

}
