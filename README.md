# MSM Plugin. Request Extra Checklist

This plugin converts multiline attribute field to an extra list of fields. The list data is stored in JSON format as the attribute value.
The plugin is based on the original Marval Software plugin RequestToDoList.

## Compatible Versions

| Plugin  | MSM               |
|---------|-------------------|
| 1.0.3   | 14.8.0 - 14.10.2  |

## Installation

Please see your MSM documentation for information on how to install plugins.

Once the plugin has been installed you will need to create a multiline text box request attribute type that applies to required request types and configure the following setting within the plugin page:

+ *RequestAttributeId* : Request attribute identifier to store an extra list data and to be converted to a dynamic list.
+ *RequestLayoutIds* : Request layout identifiers (separated by comma) where the the attribute field conversion should be processed. The attribute will become hidden automatically in all other layouts.
+ *ListParameters* : List parameters defined in JSON format.
	The List parameters definition structure: 
		fixedEntries: If you wish to use the fixed list of records, you may define all values separated by comma here. If this parameter is empty, you will be able to enter new list records dynamically.
		fieldsDef: array of elements {"type", "label"}. "type" possible values: txt - textbox, chk - checkbox
		newElementPlaceholder: a text to be displayed as placeholder for a field to add a new list item.
		autoCheck: true/false. To enable a specific functionality to "left check"/"right uncheck" checkbox fields automatically.
		markCompleted: true/false. Strikethrough element name when alol checkboxes are selected.
		
	List parameters example: {"fieldsDef":[{"id":"rev", "type":"chk", "label":"Reviewed"},{"id":"cmpl", "type":"chk", "label":"Completed"},{"id":"note", "type":"txt", "label":"Notes:"}}], "newElementPlaceholder":"Enter new entry name here...", "autoCheck":true, "markCompleted":true, "fixedEntries":[]}


## Usage

The plugin converts multiline attribute (Id is set as plugin parameter RequestAttributeId) to an extra list of checkboxes element automatically on form load when specific layout (list of Ids is set as plugin parameter RequestLayoutIds) is used.
Each element (row) of the converted list has a structure defined in the plugin parameter ListElementDataStructure.

## Contributing

We welcome all feedback including feature requests and bug reports. Please raise these as issues on GitHub. If you would like to contribute to the project please fork the repository and issue a pull request.
