package com.petclinic;

import org.junit.Test;
import org.junit.Before;
import static org.junit.Assert.*;

public class WelcomeServletTest {

    private WelcomeServlet servlet;

    @Before
    public void setUp() {
        servlet = new WelcomeServlet();
    }

    @Test
    public void testGetMessage() {
        String message = servlet.getMessage();
        assertNotNull("Message should not be null", message);
        assertEquals("Welcome To Pet_Clinic_App", message);
    }

    @Test
    public void testMessageNotEmpty() {
        String message = servlet.getMessage();
        assertFalse("Message should not be empty", message.isEmpty());
    }
}
