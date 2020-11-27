module Rpush
  module Client
    module ActiveModel
      module Hms
        module App
          def service_name
            'hms'
          end

          def self.included(base)
            base.instance_eval do
              validates :auth_key, presence: true
              validates :hms_app_id, presence: true
            end
          end
        end
      end
    end
  end
end
