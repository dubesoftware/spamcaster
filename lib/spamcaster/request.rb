module Spamcaster
  class Request
    attr_reader :email_address, :payload, :spam
  
    PAYLOAD_TYPE_CODES = {
      spam_notificiation: 512,
      hard_bounce: 1
    }
  
    PAYLOAD_TYPES = {
      512 => "SpamNotification",
      1   => "HardBounce"
    }
    
    def initialize(body)
      @body = body
      @spam = false
      check_spam
      set_email_address
    end
  
    def spam?
      @spam
    end
    
    def to_s
      @body
    end
    
    private
      
      def check_spam
        spam_type_code        = PAYLOAD_TYPE_CODES[:spam_notificiation]
        spam_type             = PAYLOAD_TYPES[spam_type_code]
        received_payload_type = @body["Type"]
        
        @spam                 = (received_payload_type == spam_type)
      end
  
      def set_email_address
        @email_address = @body["Email"]
      end
  end
end
