# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.15.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # The instance view of a virtual machine boot diagnostics.
    #
    class BootDiagnosticsInstanceView

      include MsRestAzure

      # @return [String] Gets or sets the console screenshot blob Uri.
      attr_accessor :console_screenshot_blob_uri

      # @return [String] Gets or sets the Linux serial console log blob Uri.
      attr_accessor :serial_console_log_blob_uri

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
        # Nothing to validate
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.console_screenshot_blob_uri
        output_object['consoleScreenshotBlobUri'] = serialized_property unless serialized_property.nil?

        serialized_property = object.serial_console_log_blob_uri
        output_object['serialConsoleLogBlobUri'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [BootDiagnosticsInstanceView] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = BootDiagnosticsInstanceView.new

        deserialized_property = object['consoleScreenshotBlobUri']
        output_object.console_screenshot_blob_uri = deserialized_property

        deserialized_property = object['serialConsoleLogBlobUri']
        output_object.serial_console_log_blob_uri = deserialized_property

        output_object
      end
    end
  end
end
