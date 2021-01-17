@objc(Hydrococcus) class Hydrococcus: CDVPlugin {
    
    @objc(hydrococcusSays:)
    func hydrococcusSays(command: CDVInvokedUrlCommand) {
        var pluginResult = CDVPluginResult (status: CDVCommandStatus_ERROR, messageAs: "The Plugin failed");
        
        pluginResult = CDVPluginResult (status: CDVCommandStatus_OK, messageAs: "The Plugin succeeded");
        
        self.commandDelegate!.send(pluginResult, callbackId: command.callbackId);
    }
}
