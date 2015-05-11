package com.khavid.springformwizard.init;

import com.agung.springfromwizard.validator.CustomerValidator;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

/**
 *
 * @author khavid
 */
@Configuration
@EnableWebMvc
@ComponentScan("com.agung.springformwizard")
public class WebAppConfig{
    
    @Bean
    public InternalResourceViewResolver internalResourceViewResolver(){
        InternalResourceViewResolver resolver=new InternalResourceViewResolver();
        resolver.setPrefix("/WEB-INF/jsp/");
        resolver.setSuffix(".jsp");
        return resolver;
    }
    
    @Bean
    public CustomerValidator customerValidator(){
        return new CustomerValidator();
    }
    
    @Bean(name = "messageSource")
    public ResourceBundleMessageSource resourceBundleMessageSource(){
        ResourceBundleMessageSource bundleMessageSource=new ResourceBundleMessageSource();
        bundleMessageSource.setBasename("messages");
        return bundleMessageSource;
    }
}
