#UI mapping of WebElements in each page object

#Login Page
LoginPageMap = dict(
    LoginUsernameInputXpath = "xpath=/html/body/div[1]/div[3]/div[1]/div/form/div[1]/input",
    LoginPasswordInputXpath = "xpath=/html/body/div[1]/div[3]/div[1]/div/form/div[2]/input",
    LoginLogInButtonXpath = "xpath=/html/body/div[1]/div[3]/div[1]/div/form/div[3]/input"
)

MainPageMap = dict(
    OpenNewAccountLink = "link:Open New Account",
    AccountOverviewLink = "link:Accounts Overview",
    TransferFoundsLink = "link:Accounts Overview",
    BillPayLink = "link:Ball Pay",
    FindTransactionLink = "link:Accounts Overview",
    UpdateContactInfoLink = "link:Accounts Overview",
    RequestLoanLink = "link:Request Loan",
    LogOutLink = "link:Log Out"
)

OpenAccountPageMap = dict(
    ConfirmAccountCreationButtonXpath = "xpath=/html/body/div[1]/div[3]/div[2]/div/div[1]/form/div/input",
    AccountTypeSelectXpath = '//*[@id="type"]'
)