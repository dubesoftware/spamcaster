module Spamcaster
  class PartsBin
    SLK_WHK_SUBDOMAIN = 'hooks'
    SLK_WHK_DOMAIN    = 'slack'
    SLK_WHK_PATH      = 'services'
    SLK_WHK_REMAINDER = {
      1 => 'TF0RCGM3M',
      2 => 'B04TWV2A9TJ',
      3 => 'Z6bAvFPsERSZm6VIPvbONHtr'
    }

    def service_url
      build_service_url
    end

    private

      def build_service_url
        service_url = "https://#{SLK_WHK_SUBDOMAIN}/" +
        "#{SLK_WHK_DOMAIN}.com/" +
        "#{SLK_WHK_PATH}/" +
        "#{SLK_WHK_REMAINDER[1]}/" +
        "#{SLK_WHK_REMAINDER[2]}/" +
        "#{SLK_WHK_REMAINDER[3]}"

        service_url
      end
  end
end