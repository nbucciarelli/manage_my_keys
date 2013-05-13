class Key < ActiveRecord::Base
  belongs_to :user
  
  attr_accessible :device_name
  attr_accessible :assets
  attr_accessible :internal_address
  attr_accessible :primary_internal_protocol
  attr_accessible :port
  attr_accessible :external_address
  attr_accessible :necessary_external_protocol_port
  attr_accessible :external_credentials
  attr_accessible :internal_credentials

end
