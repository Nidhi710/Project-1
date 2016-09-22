package com.cakeandcupcakes.controller;



import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cakeandcupcakes.model.Supplier;
import com.cakeandcupcakes.service.SupplierService;
@Controller
public class SupplierController {
	@Autowired(required=true)
	private SupplierService supplierService;
	
	
	@RequestMapping(value = "/suppliers",method = RequestMethod.GET)
	public String listSuppliers(Model model) {
		model.addAttribute("supplier", new Supplier());
		model.addAttribute("supplierList", this.supplierService.list());
		return "supplier";
	}
	
	/*@RequestMapping(value = "/onLoad", method = RequestMethod.GET)
	public String onLoad(Model model) {
		System.out.println("onLoad");
		model.addAttribute("supplier", new Supplier());
		model.addAttribute("supplierList", this.supplierService.list());
		return "/Home";
	}*/
	
	
	
	@RequestMapping(value= "/supplier/add")
	public String addSupplier(@Valid@ModelAttribute("supplier") Supplier supplier,BindingResult result){
		if (result.hasErrors())
		{
			return "supplier";
		}
		else
		{
	
			supplierService.saveOrUpdate(supplier);
		
		return "redirect:/suppliers";
		}
	}
	@RequestMapping("supplier/remove/{id}")
    public String deleteSupplier(@PathVariable("id") Integer id,ModelMap model) throws Exception{
		
       try {
		supplierService.delete(id);
		model.addAttribute("message","Successfully Added");
	} catch (Exception e) {
		model.addAttribute("message",e.getMessage());
		e.printStackTrace();
	}
       //redirectAttrs.addFlashAttribute(arg0, arg1)
        return "redirect:/suppliers";
    }
 
    @RequestMapping("supplier/edit/{id}")
    public String editSupplier(@PathVariable("id") Integer id, Model model){
    	System.out.println("editSupplier");
        model.addAttribute("supplier", this.supplierService.get(id));
        model.addAttribute("listSuppliers", this.supplierService.list());
        return "supplier";
    }

    


}
