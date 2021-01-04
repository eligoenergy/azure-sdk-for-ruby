# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2020_09_01
  module Models
    #
    # CDN origin is the source of the content being delivered via CDN. When the
    # edge nodes represented by an endpoint do not have the requested content
    # cached, they attempt to fetch it from one or more of the configured
    # origins.
    #
    class Origin < ProxyResource

      include MsRestAzure

      # @return [String] The address of the origin. Domain names, IPv4
      # addresses, and IPv6 addresses are supported.This should be unique
      # across all origins in an endpoint.
      attr_accessor :host_name

      # @return [Integer] The value of the HTTP port. Must be between 1 and
      # 65535.
      attr_accessor :http_port

      # @return [Integer] The value of the HTTPS port. Must be between 1 and
      # 65535.
      attr_accessor :https_port

      # @return [String] The host header value sent to the origin with each
      # request. If you leave this blank, the request hostname determines this
      # value. Azure CDN origins, such as Web Apps, Blob Storage, and Cloud
      # Services require this host header value to match the origin hostname by
      # default. This overrides the host header defined at Endpoint
      attr_accessor :origin_host_header

      # @return [Integer] Priority of origin in given origin group for load
      # balancing. Higher priorities will not be used for load balancing if any
      # lower priority origin is healthy.Must be between 1 and 5
      attr_accessor :priority

      # @return [Integer] Weight of the origin in given origin group for load
      # balancing. Must be between 1 and 1000
      attr_accessor :weight

      # @return [Boolean] Origin is enabled for load balancing or not
      attr_accessor :enabled

      # @return [String] The Alias of the Private Link resource. Populating
      # this optional field indicates that this origin is 'Private'
      attr_accessor :private_link_alias

      # @return [String] The Resource Id of the Private Link resource.
      # Populating this optional field indicates that this backend is 'Private'
      attr_accessor :private_link_resource_id

      # @return [String] The location of the Private Link resource. Required
      # only if 'privateLinkResourceId' is populated
      attr_accessor :private_link_location

      # @return [String] A custom message to be included in the approval
      # request to connect to the Private Link.
      attr_accessor :private_link_approval_message

      # @return [OriginResourceState] Resource status of the origin. Possible
      # values include: 'Creating', 'Active', 'Deleting'
      attr_accessor :resource_state

      # @return [String] Provisioning status of the origin.
      attr_accessor :provisioning_state

      # @return [PrivateEndpointStatus] The approval status for the connection
      # to the Private Link. Possible values include: 'Pending', 'Approved',
      # 'Rejected', 'Disconnected', 'Timeout'
      attr_accessor :private_endpoint_status


      #
      # Mapper for Origin class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Origin',
          type: {
            name: 'Composite',
            class_name: 'Origin',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              system_data: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'systemData',
                type: {
                  name: 'Composite',
                  class_name: 'SystemData'
                }
              },
              host_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.hostName',
                type: {
                  name: 'String'
                }
              },
              http_port: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.httpPort',
                constraints: {
                  InclusiveMaximum: 65535,
                  InclusiveMinimum: 1
                },
                type: {
                  name: 'Number'
                }
              },
              https_port: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.httpsPort',
                constraints: {
                  InclusiveMaximum: 65535,
                  InclusiveMinimum: 1
                },
                type: {
                  name: 'Number'
                }
              },
              origin_host_header: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.originHostHeader',
                type: {
                  name: 'String'
                }
              },
              priority: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.priority',
                constraints: {
                  InclusiveMaximum: 5,
                  InclusiveMinimum: 1
                },
                type: {
                  name: 'Number'
                }
              },
              weight: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.weight',
                constraints: {
                  InclusiveMaximum: 1000,
                  InclusiveMinimum: 1
                },
                type: {
                  name: 'Number'
                }
              },
              enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.enabled',
                type: {
                  name: 'Boolean'
                }
              },
              private_link_alias: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.privateLinkAlias',
                type: {
                  name: 'String'
                }
              },
              private_link_resource_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.privateLinkResourceId',
                type: {
                  name: 'String'
                }
              },
              private_link_location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.privateLinkLocation',
                type: {
                  name: 'String'
                }
              },
              private_link_approval_message: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.privateLinkApprovalMessage',
                type: {
                  name: 'String'
                }
              },
              resource_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.resourceState',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              private_endpoint_status: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.privateEndpointStatus',
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
