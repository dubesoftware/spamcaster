require 'httpx'
require 'json'

module Spamcaster
  class Notifier
    # N.B: The Webhook URL would NOT live here in a production application
    SLACK_WEBHOOK_URL = 'https://hooks.slack.com/services/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'
    
    def self.notify(type, recipient)
      send(type, recipient)
    end
    
    private
      
      def self.send(type, recipient)
        case type
        when :email
          email recipient
        when :slack
          slack recipient
        end
      end
      
      def self.slack_json_payload(recipient)
        {:json =>
          {
            "text" => "A spam payload for the email address #{recipient} was detected."
          }
        }
      end
      
      def self.email(recipient)
        "Email notification sent to #{recipient}!"
      end
      
      def self.slack(recipient)
        HTTPX.post(SLACK_WEBHOOK_URL, :json => slack_json_payload(recipient)[:json])
        "Slack notification for #{recipient} sent to Spamcaster's Slack channel!"
      end
      
      # Etc. Define methods to send other notification types e.g. SMS here
  end
end
