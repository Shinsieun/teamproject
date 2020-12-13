package com.project.myapp;
import java.util.List;    
import org.springframework.beans.factory.annotation.Autowired;    
import org.springframework.stereotype.Controller;  
import org.springframework.ui.Model;  
import org.springframework.web.bind.annotation.ModelAttribute;    
import org.springframework.web.bind.annotation.PathVariable;    
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;     
import com.project.dao.BoardDao;
import com.project.bean.BoardRE;
import com.project.bean.BoardVO;    
@Controller
public class BoardController{    
    @Autowired    
    BoardDao dao;//will inject from XML file    
        
    /*It displays a form to input data, here "command" is a reserved request attribute  
     *which is used to display object data into form  
     */    
    @RequestMapping("/reser")    
    public String showreser(Model m){    
       List<BoardRE> list=dao.getreserve();    
        m.addAttribute("list",list);     
        
        return "reser";   
    }    
    @RequestMapping("/add_res")    
    public String addres(Model m){    
          
        m.addAttribute("command",new BoardRE());
        return "add_res";   
    } 
    @RequestMapping("/addform")    
    public String showform(Model m){    
        m.addAttribute("command", new BoardVO());
        return "addform";
    }
    /*It saves object into database. The @ModelAttribute puts request data
     *  into model object. You need to mention RequestMethod.POST method
     *  because default request is GET*/
    @RequestMapping(value="/save",method = RequestMethod.POST)    
    public String save(@ModelAttribute("vo") BoardVO vo){    
        dao.save(vo);    
       
        return "redirect:/viewboard";//will redirect to viewemp request mapping
    }    
    @RequestMapping(value="/save_2",method = RequestMethod.POST)    
    public String save_2(@ModelAttribute("re") BoardRE re){    
        dao.save_2(re);    
        return "redirect:/reser";//will redirect to viewemp request mapping
    }    
    /* It provides list of employees in model object */    
    @RequestMapping("/viewboard")    
    public String viewemp(Model m){    
        List<BoardVO> list=dao.getEmployees();    
        m.addAttribute("list",list);  
        return "viewboard";    
    }    
   
    /* It displays object data into form for the given id.   
     * The @PathVariable puts URL data into variable.*/    
    @RequestMapping(value="/editform/{seq}")    
    public String edit(@PathVariable int seq, Model m){    
        BoardVO vo=dao.getBoardVOById(seq); 
        m.addAttribute("command",vo);  
        return "editform";    
    }    
    @RequestMapping(value="/edit_res/{seq}")    
    public String edit_res(@PathVariable int seq, Model m){    
        BoardRE re=dao.getBoardREById(seq); 
        m.addAttribute("command",re);  
        return "edit_res";    
    }   
    /* It updates model object. */    
    @RequestMapping(value="/editsave",method = RequestMethod.POST)    
    public String editsave(@ModelAttribute("vo") BoardVO vo){    
        dao.update(vo);    
        return "redirect:/viewboard";    
    }    
    @RequestMapping(value="/editsave_2",method = RequestMethod.POST)    
    public String editsave_2(@ModelAttribute("re") BoardRE re){    
        dao.res_update(re);    
        return "redirect:/reser";    
    }    
    /* It deletes record for the given id in URL and redirects to /viewemp */    
    @RequestMapping(value="/deleteboard/{seq}",method = RequestMethod.GET)    
    public String delete(@PathVariable int seq){    
        dao.delete(seq);    
        return "redirect:/viewboard";    
    }     
}