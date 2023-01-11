package com.bloomingdale.service;

import com.bloomingdale.dao.ProductRepository;
import com.bloomingdale.entity.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductService {

    @Autowired
    private ProductRepository repository;

    public Product saveProduct(Product product) {
        return repository.save(product);
    }

    public Product getProductById(Long id) {
        return repository.findById(id).orElse(null);
    }

//    public List<Product> getProductByName(String name){
//        return repository.findByNameContaining(name);
//    }

    public String deleteProduct(Long id) {
        repository.deleteById(id);
        return "Product " + id + " removed.";
    }

    public Product updateProduct(Product product) {
        Product existingProduct = repository.findById(product.getId())
                .orElse(null);
        existingProduct.setCategory(product.getCategory());
        existingProduct.setName(product.getName());
        existingProduct.setDescription(product.getDescription());
        existingProduct.setUnit_price(product.getUnit_price());
        existingProduct.setImage_url(product.getImage_url());
        existingProduct.setActive(product.isActive());
        existingProduct.setUnits_in_stock(product.getUnits_in_stock());

        return repository.save(existingProduct);
    }


}
