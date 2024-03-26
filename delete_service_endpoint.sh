#!/bin/bash

choice=0
echo "***************************************"
echo "Welcome to the Deletion of Service Connectionn / endpoint using the interactive way"
echo "***************************************"
while [ $choice -ne 1 ]
do

    read -p "Enter the Organization Name:" organization
    read -p "Enter the project name:" project
    read -p "Enter the id:" id

    echo "-----------------------------------------"
    echo "You have entered Organization Name: $organization"
    echo "You have entered Project Name: $project"
    echo "You have entered ID: $id"

    echo "-----------------------------------------"

    echo "Executing the command..."

    az devops service-endpoint delete --organization $organization --project $project --id $id

    echo "Command Executed Successfully...!!!"

    choice=1
    echo "Do you want to use the API call again yes or no"  
    read temporary
    if [ $temporary = 'yes' ]; then
    choice=0
    fi
done