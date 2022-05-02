public class Company {
    public String companyName;
    public String ceo;
    public Integer employeeCount;
    public Long annualRevenue;
    
    private List<Client> customers = new List<Client>(); 
    public void addNewCustomer(String clientName,String website,String email,Long phone)
    {
        Client customer = new Client(clientName,website,email,phone);
        customers.add(customer);
    }
    
    public void getAllCustomers()
    {
       for(Client customer : customers) 
       {
           System.debug('Customer Name : '+customer.clientName+', Website :'+customer.website+', Enail :'+customer.email+', Phone :'+customer.phone);
       }
    }
    
    private class Client
    {
        public String clientName;
        public String website;
        public String email;
        public Long phone;
        
        Client(String clientName,String website,String email,Long phone)
        {
            this.clientName = clientName;
            this.website = website;
            this.email = email;
            this.phone = phone;            
        }
    }
    
    
}