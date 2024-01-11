*** Settings ***
Documentation     XPath expressions for web elements

*** Variables ***
${rpa_sub_header}    //header/h1[text()="RPA Tutorial for Beginners: Learn Robotic Process Automation"]
${rpa_header}    //ul[@class="sub-menu clicked"]/li/a[text()="RPA"]
${testing_header}    //a/span[text()="Testing"]
${pop-up-agree_btn}    //button/span[text()="AGREE"]
${SAP_header}        //a/span[text()="SAP"]
${All_SAP_elments}    //ul[@class='sub-menu clicked']/li/a
${udemy_pop_up}        (//div[@class='cb-close'])[1]
    