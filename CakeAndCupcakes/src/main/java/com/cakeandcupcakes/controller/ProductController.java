package com.cakeandcupcakes.controller;

import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.http.HttpServletRequest;
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
import org.springframework.web.multipart.MultipartFile;

import com.cakeandcupcakes.model.Product;
import com.cakeandcupcakes.model.Sub_Category;
import com.cakeandcupcakes.model.Supplier;
import com.cakeandcupcakes.service.ProductService;
import com.cakeandcupcakes.service.Sub_CategoryService;
import com.cakeandcupcakes.service.SupplierService;

@Controller
public class ProductController {
	Path path;
	@Autowired	(required=true)
	private ProductService productService;
	@Autowired	(required=true)
	private Sub_CategoryService sub_categoryService;
    @Autowired (required=true)
    private SupplierService supplierService;
    
	@RequestMapping(value = "products", method = RequestMethod.GET)
	public String listProduct(Model model) {
		model.addAttribute("product", new Product());
		model.addAttribute("sub_category", new Sub_Category());
		model.addAttribute("supplier", new Supplier());
		model.addAttribute("productList", this.productService.list());
		model.addAttribute("sub_categoryList", this.sub_categoryService.list());
	    model.addAttribute("supplierList",this.supplierService.list());
		return "product";
	}
	
			@RequestMapping(value= "/product/add")
			public String addProduct(@ModelAttribute("product") Product product ,HttpServletRequest request){
				/*if(result.hasErrors())
				{
					return "product";
				}
				else
				{*/
				Sub_Category sub_category = sub_categoryService.getByName(product.getSub_category().getName());
				sub_categoryService.saveOrUpdate(sub_category);
				
				Supplier supplier = supplierService.getByName(product.getSupplier().getName());
				supplierService.saveOrUpdate(supplier);
				
				product.setSub_category(sub_category);
				product.setSupplier(supplier);
				
				product.setSubcat_id(sub_category.getId());
				product.setSup_id(supplier.getId());
				productService.saveOrUpdate(product);
				
				MultipartFile img = product.getImg();
				String rootDirectory = request.getSession().getServletContext().getRealPath("/");
				path = Paths.get(rootDirectory +  "/resources/images/" + product.getId() + ".jpg");

				if (img != null && !img.isEmpty()) {
					try {
						img.transferTo(new File(path.toString()));
						System.out.println("Image successfully uploaded" + path);
					} catch (Exception ex) {
						ex.printStackTrace();
						throw new RuntimeException("Product image saving failed", ex);
					}
				}	
				
				return "redirect:/productlist";
				}
   
			@RequestMapping("product/remove/{id}")
		    public String deleteSub_Category(@PathVariable("id") Integer id,ModelMap model) throws Exception{
				
		       try {
				productService.delete(id);
				model.addAttribute("message","Successfully Added");
			} catch (Exception e) {
				model.addAttribute("message",e.getMessage());
				e.printStackTrace();
			}
		       
		        return "redirect:/productlist";
		    }
		    @RequestMapping("product/edit/{id}")
		    public String editProduct(@PathVariable("id") Integer id, Model model){
		    	System.out.println("editProduct");
		        model.addAttribute("product", this.productService.get(id));
		        model.addAttribute("productList", this.productService.list());
		        model.addAttribute("sub_categoryList", this.sub_categoryService.list());
		        model.addAttribute("supplierList", this.supplierService.list());
		        return "product";
		    }
		    
		    
		    
		    @RequestMapping("/productview{id}")
		    public String view(@PathVariable("id") Integer id, Model model){
		    	System.out.println("view");
		    	model.addAttribute("product", this.productService.get(id));
		    	model.addAttribute("productdetails", this.productService.get(id));
		    	return "viewproduct";
		    }
		       	    
		    @RequestMapping("/productlist")
		    public String getList(Model model){
		    	model.addAttribute("productList", this.productService.list());
		    	return "productlist";

		    	
		    }
		    @RequestMapping("/productdisplay{id}")
		    public String productdisplay(@PathVariable("id") String id, Model model){
		    	System.out.println("productdisplay");
		    	
		    	model.addAttribute("productdisplay", this.productService.list());
		    	return "productdisplay";
		    }

}