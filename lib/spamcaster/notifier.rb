require 'httpx'
require 'json'

module Spamcaster
  class Notifier    
    def self.notify(type, recipient, service_url)
      send(type, recipient, service_url)
    end
    
    private
      
      def self.send(type, recipient, service_url)
        case type
        when :email
          email recipient
        when :slack
          slack(recipient, service_url)
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
      
      def self.slack(recipient, service_url)
        HTTPX.post(service_url, :json => slack_json_payload(recipient)[:json])
        "Notification for #{recipient} sent to Spamcaster's channel!"
      end
      
      # Etc. Define methods to send other notification types e.g. SMS here
  end
end
