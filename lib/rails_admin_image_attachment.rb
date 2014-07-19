require "rails_admin_image_attachment/engine"

module RailsAdminImageAttachment
end

require 'rails_admin/config/fields'
require 'rails_admin/config/fields/base'

module RailsAdmin
  module Config
    module Fields
      module Types
        class ImageAttachment < RailsAdmin::Config::Fields::Base
          RailsAdmin::Config::Fields::Types::register(self)
        end
      end
    end
  end
end

RailsAdmin::Config::Fields.register_factory do |parent, properties, fields|
  if properties[:name] == :image_attachment
    fields << RailsAdmin::Config::Fields::Types::ImageAttachment.new(parent, properties[:name], properties)
    true
  else
    false
  end
end


