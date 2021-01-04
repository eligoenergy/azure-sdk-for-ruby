# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2020_09_01
  module Models
    #
    # Defines the ARM Resource ID for the linked endpoints
    #
    class CdnEndpoint

      include MsRestAzure

      # @return [String] ARM Resource ID string.
      attr_accessor :id


      #
      # Mapper for CdnEndpoint class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CdnEndpoint',
          type: {
            name: 'Composite',
            class_name: 'CdnEndpoint',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
