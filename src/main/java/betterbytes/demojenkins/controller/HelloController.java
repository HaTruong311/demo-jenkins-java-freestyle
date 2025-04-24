package betterbytes.demojenkins.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * A simple REST controller that provides a "Hello world" endpoint.
 */
@RestController
public class HelloController {

    /**
     * Returns a simple "Hello world" message.
     *
     * @return A greeting message
     */
    @GetMapping("/api/hello")
    public String hello() {
        return "Hello world";
    }
}
