*** Keywords ***

Open add group dialog  [Arguments]  ${user}
  Click Button  name=btn-add-group
  Wait Until Page Contains  Add group(s) to ${user}

Close add group dialog
  Click Element  name=modal-btn-cancel
  Wait until modal overlay disappear

Open add Open ID Connect account dialog  [Arguments]  ${user}
  Click Button  name=btn-add-oidc
  Wait Until Page Contains  Add Open ID Connect account to ${user}

Close Open ID Connect account dialog
  Click Element  id=modal-btn-cancel
  Wait until modal overlay disappear

Open add SSH Key account dialog  [Arguments]  ${user}
  Click Button  name=btn-add-sshkey
  Wait Until Page Contains  Add SSH Key to ${user}

Close SSH Key account dialog
  Click Element  id=modal-btn-cancel
  Wait until modal overlay disappear

Open add SAML account dialog  [Arguments]  ${user}
  Focus  name=btn-add-samlid
  Wait Until Element Is Visible  name=btn-add-samlid
  Click Button  name=btn-add-samlid
  Wait Until Page Contains  Add SAML Account to ${user}

Close add SAML account dialog
  Click Element  id=modal-btn-cancel
  Wait until modal overlay disappear

Open add x509 certificate dialog  [Arguments]  ${user}
  Focus  name=btn-add-x509cert
  Wait Until Element Is Visible  name=btn-add-x509cert
  Click Button  name=btn-add-x509cert
  Wait Until Page Contains  Add x509 Certificate to ${user}

Close x509 certificate dialog
  Click Element  id=modal-btn-cancel
  Wait until modal overlay disappear

Open edit user dialog  [Arguments]  ${user}
  Click Element  name=edit-user-btn
  Wait Until Page Contains  Edit '${user}' account details

Close edit user dialog
  Click Element  id=modal-btn-cancel
  Wait until modal overlay disappear

Remove Open ID Account  [Arguments]  ${issuer}  ${subject}
  Click Element  xpath=//*[@id='oidc_account_list']/tbody/tr/td[text()='${subject}']/following-sibling::td//button
  Wait Until Page Contains  Remove OpenID-Connect Account
  Wait Until Element Is Enabled  id=btn-confirm
  Click Button  id=btn-confirm
  Wait until modal overlay disappear
  Wait Until Page Contains  OpenID-Connect accounts updated succesfully

Remove SAML Account  [Arguments]  ${idp}  ${userid}
  Click Element  xpath=//*[@id='saml_account_list']/tbody/tr/td[text()='${idp}']/following-sibling::td[text()='${userId}']/..//button
  Wait Until Page Contains  Remove SAML Account
  Wait Until Element Is Enabled  id=btn-confirm
  Click Button  id=btn-confirm
  Wait until modal overlay disappear
  Wait Until Page Contains  SAML accounts updated succesfully
  
Remove x509 certificate  [Arguments]  ${label}
  Click Element  xpath=//*[@id='x509_list']/tbody/tr/td[text()='${label}']/..//button[text()[normalize-space()='Remove']]
  Wait Until Page Contains  Remove «${label}» x509 certificate?
  Wait Until Element Is Enabled  id=btn-confirm
  Click Button  id=btn-confirm
  Wait until modal overlay disappear
  Wait Until Page Contains  updated successfully
  