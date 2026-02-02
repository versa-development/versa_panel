-- Global Constants
_G.RESOURCE_NAME = GetCurrentResourceName()
_G.RESOURCE_VERSION = GetResourceMetadata(RESOURCE_NAME, 'version')
_G.IS_SERVER = IsDuplicityVersion()

-- Global SDK Modules
_G.SDK = {
    Log = require '@versa_sdk/utils/logger'
}

if IS_SERVER then
    -- Ensure resource name is versa_panel for API
    if RESOURCE_NAME ~= 'versa_panel' then
        --[[
            Important Notice:
            This resource MUST be named "versa_panel" in your server's resources directory.

            The Versa Panel API has to use the resource name as part of the endpoint URL (blame cfx):
            https://<YOUR_SERVER_PATH>/versa_panel/<ENDPOINT>

            Renaming this resource will cause API requests to fail and your panel to not function correctly.
        ]]
        error('The ' .. RESOURCE_NAME .. ' resource must be named "versa_panel" to function correctly on the server.')
    end

    SDK.Log.info('Initializing Versa Panel - v' .. RESOURCE_VERSION)
else

end
