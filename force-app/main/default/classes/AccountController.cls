/*public class AccountController 
{
public static List<Account> insertAccounts(List<Account> accountToInsert)
{
    insert accountToInsert;
    return accountToInsert;
}
public static Account insertAccount(Account accountToInsert)
{
    insert accountToInsert;
    return accountToInsert;
}    
public static List<Account> getAllAccounts()
{
        List<Account> accounts = [SELECT Name, Phone FROM Account];
        return accounts;       
}
public static void printAllAccounts()
{
List<Account> accounts = getAllAccounts();
 for(Account acc : accounts)
 {
     System.debug('Account Name:'+acc.Name+'Account Phone: '+acc.Phone);
 }
}
    public static Integer getAccountSize()
    {
        List<Account> accounts = getAllAccounts();
        return accounts.size();
    }
}*/

public class AccountController {

    public static void updateAvgCaseResolutionDays(List<Id> accountIds){

        Map<Id, Integer> accountTotalCaseMap = new Map<Id, Integer>();

        Map<Id, Integer> accountTotalCaseDAysMap = new Map<Id, Integer>();

      
        // retrive all the cases for this account

        // get resolution days for each account (ClosedDate - CreatedDate)

        for(Case caseObj : [SELECT Id, CreatedDate, ClosedDate, AccountId

                             FROM Case

                             WHERE IsClosed=true

                                AND AccountId IN : accountIds]){

            // if map doesn't have current account id then add it

            if(! accountTotalCaseMap.containsKey(caseObj.AccountId))

            {

                accountTotalCaseMap.put(caseObj.AccountId, 0);

                accountTotalCaseDAysMap.put(caseObj.AccountId, 0);

            }

            Integer totalCases = accountTotalCaseMap.get(caseObj.AccountId);

            totalCases++;

            accountTotalCaseMap.put(caseObj.AccountId,totalCases);                       

            // get duration in days and add it to totalDays

            Integer totalDays = accountTotalCaseDAysMap.get(caseObj.AccountId);

            totalDays += caseObj.CreatedDate.date().daysBetween(caseObj.ClosedDate.date());

            accountTotalCaseDAysMap.put(caseObj.AccountId,totalDays);

        }

        List<Account> accountToUpdate = new List<Account>();
        for(Id accountID : accountTotalCaseMap.keySet())
        {
         Decimal resolutionDays = accountTotalCaseDAysMap.get(accountId)/accountTotalCaseMap.get(accountId);
        // update account object
        accountToUpdate.add(new Account(Id=accountId, Avg_Case_Resolution_Days__c = resolutionDays));
        }
         update accountToUpdate;

    }

}