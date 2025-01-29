*** setting ***
Resource          resource.robot

*** Test Cases ***
Open Form
    Open Browser To Form Page
    Form Page Should Be Open
    [Teardown]    Close Browser

Empty Destination
    Open Browser To Form Page
    Input Text    id=firstname    Somsong
    Input Text    id=lastname    Sandee
    Input Text    id=contactperson    Sodsai Sandee
    Input Text    id=relationship    Mother
    Input Text    id=email    somsong@kkumail.com
    Input Text    id=phone    081-111-1234
    Click Button    id=submitButton
    Page Should Contain    Please enter your destination.
    [Teardown]    Close Browser

Open Form
    Open Browser To Form Page
    Form Page Should Be Open
    [Teardown]    Close Browser

Empty Email
    Open Browser To Form Page
    Input Text    id=firstname    Somsong
    Input Text    id=lastname    Sandee
    Input Text    id=destination    Europe
    Input Text    id=contactperson    Sodsai Sandee
    Input Text    id=relationship    Mother
    Input Text    id=phone    081-111-1234
    Click Button    id=submitButton
    Page Should Contain    Please enter a valid email address.

Open Form
    Open Browser To Form Page
    Form Page Should Be Open
    [Teardown]    Close Browser

Invalid Email
    Open Browser To Form Page
    Input Text    id=firstname    Somsong
    Input Text    id=lastname    Sandee
    Input Text    id=destination    Europe
    Input Text    id=contactperson    Sodsai Sandee
    Input Text    id=relationship    Mother
    Input Text    id=email    somsong@
    Input Text    id=phone    081-111-1234
    Click Button    id=submitButton
    Page Should Contain    Please enter a valid email address.

Open Form
    Open Browser To Form Page
    Form Page Should Be Open
    [Teardown]    Close Browser

Empty Phonenumber
    Open Browser To Form Page
    Input Text    id=firstname    Somsong
    Input Text    id=lastname    Sandee
    Input Text    id=destination    Europe
    Input Text    id=contactperson    Sodsai Sandee
    Input Text    id=relationship    Mother
    Input Text    id=email    somsong@kkumail.com
    Click Button    id=submitButton
    Page Should Contain    Please enter a phone number.

Open Form
    Open Browser To Form Page
    Form Page Should Be Open
    [Teardown]    Close Browser

Invalid Phonenumber
    Open Browser To Form Page
    Input Text    id=firstname    Somsong
    Input Text    id=lastname    Sandee
    Input Text    id=destination    Europe
    Input Text    id=contactperson    Sodsai Sandee
    Input Text    id=relationship    Mother






    Input Text    id=email    somsong@kkumail.com
    Input Text    id=phone    191
    Click Button    id=submitButton
    Page Should Contain    Please enter a valid phone number, e.g., 081-234-5678, 081 234 5678, or 081.234.5678)