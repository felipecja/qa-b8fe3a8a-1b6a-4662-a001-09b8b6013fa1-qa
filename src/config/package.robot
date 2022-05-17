*** Settings ***
Documentation    Mapping files and libraries

Library          SeleniumLibrary
Library          String

### Framework ###
Resource         hooks.robot
Variables        hooks.yaml

### Keywords ###
Resource         ../auto/keywords/kws_home.robot
Resource         ../auto/keywords/kws_cart.robot

### Data ###
Variables        ../auto/data/dta_user.yaml

### Elements ###
Resource         ../auto/elements/ets_home.robot
Resource         ../auto/elements/ets_product.robot
Resource         ../auto/elements/ets_cart.robot