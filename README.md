# No Second AP Approval - Acumatica Workflow Edit
### Acumatica Versions Supported:
- 22R1
- 22R2

This customization edits the AP Bills and Adjustments screen to prevent unnecessary second approvals if a document is sent back for edits to things such as descriptions or GL Account/Sub changes.

### Normal Acumatica AP Bill Workflow
On Hold => Pending Approval => Balanced => Put Back On Hold (To make a minor change like a description change, document balance remains the same) => Pending Approval => Balanced.

The second approval process is very frustrating for executives who dont want to see a second approval for the same document.

### Edited Workflow
On Hold => Pending Approval => Balanced => Put Back On Hold (To make a minor change like a description change, document balance remains the same) => Balanced.

### Added Fields
![The fields added on the approvals tab](/images/image1.jpg "Fields Added")
1. Approved Previously
    - A field that persists whether the document has gone through the approval process once
2. Approved amount
    - A field that persists what the value of the document was when the approval process was completed. The document's total has to be exactly the same for the approval process to be skipped

It is important that these values be locked down using security.

## To Apply to the Acumatica Site

Take the appropriate LS.APApproval[*BuildNumber*].zip customization package at the root of the repository, import it into your Acumatica instance, and publish
