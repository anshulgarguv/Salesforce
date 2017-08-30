function deleteContactFromAccount(contactId) {
    console.log('delete ' + contactId);
    Visualforce.remoting.Manager.invokeAction(
            '{!$RemoteAction.AdvanceAccountController.deleteContact}',
            contactId,
            function(result, event) {
                console.log('status ' + event.status);
                console.log('type ' + event. type);
                console.log('message ' + event. message);
                console.log('where ' + event. where);
                // Refresh the page after deleting the record
                location.reload();
            });
}