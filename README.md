This tool is no longer supported here. Please use the tool in forcedotcom repository. 
https://github.com/forcedotcom/CustomMetadataLoader

# Custom Metadata Loader

Custom metadata loader is a tool for creating custom metadata records from a csv file. Create custom metadata types in your Salesforce org using Metadata API and then use custom metadata loader to bulk load the records. Behind the scenes, custom metadata loader uses Metadata API to bulk load up to 200 records with a single call. 

Custom metadata loader has a sample custom metadata type CountryMapping__mdt that allows users to map country codes to country names. 

#How to deploy custom metadata loader
1. Download the folder custom_md_loader and zip all the files inside this folder. Package.xml should be at the top level of the zipped file. 
2. Log in to your developer organization via workbench and deploy this zip file. (migration -> deploy)

# How to use custom metadata loader

1. Once you have deployed custom metadata loader in your org, assign the permission set 'Custom Metadata Loader' to the users who need to use the tool. These users also need the 'Customize Application' to create Custom Metadata records. Admin should have this permission by default. 
2. Create a CSV file with a header that contains the field API names, including the org namespace. Either Label or Developer Name is required. A sample csv for CountryMapping__mdt is in the same folder as this README file. 
3. Select Custom Metadata Loader from the app menu in your org, then go to the Custom Metadata Loader tab.The app will prompt you to create a remote site setting if it is missing. 
4. Select the CSV file and the corresponding custom metadata type.
5. Click 'Create custom metadata' to bulk load the records from the CSV file into your org.
