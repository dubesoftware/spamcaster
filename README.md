A [Sinatra](https://sinatrarb.com/)-based web endpoint that accepts JSON payloads and fires off Slack notifications upon detection of spam.

To install as a Ruby gem:

Open a terminal and type `gem install spamcaster`.
Once installed, type `spamcaster` to invoke the command.

The Sinatra web framework should run, listening on the default port (4567).
To test payloads, use an HTTP client to send POST requests passing the JSON payloads to the endpoint http://localhost:4567/api/v1/spamcheck

Payloads containing spam should trigger notifications to the Spamcaster channel of Dube Software's Slack workspace. Please request an invitation if you would like to test in this workspace. Alternatively, change the webhook URL in the parts_bin.rb file to point to your own Slack integration.
