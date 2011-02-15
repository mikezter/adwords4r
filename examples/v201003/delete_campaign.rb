#!/usr/bin/ruby
#
# Author:: api.sgomes@gmail.com (Sérgio Gomes)
#
# Copyright:: Copyright 2010, Google Inc. All Rights Reserved.
#
# License:: Licensed under the Apache License, Version 2.0 (the "License");
#           you may not use this file except in compliance with the License.
#           You may obtain a copy of the License at
#
#           http://www.apache.org/licenses/LICENSE-2.0
#
#           Unless required by applicable law or agreed to in writing, software
#           distributed under the License is distributed on an "AS IS" BASIS,
#           WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
#           implied.
#           See the License for the specific language governing permissions and
#           limitations under the License.
#
# This example deletes a campaign by setting the status to 'DELETED'. To get
# campaigns, run get_all_campaigns.rb.
#
# Tags: CampaignService.mutate

require 'rubygems'
gem 'soap4r', '= 1.5.8'
require 'adwords4r'

API_VERSION = 201003

def delete_campaign()
  # AdWords::AdWordsCredentials.new will read a credentials file from
  # ENV['HOME']/adwords.properties when called without parameters.
  adwords = AdWords::API.new
  campaign_srv = adwords.get_service('Campaign', API_VERSION)

  campaign_id = 'INSERT_CAMPAIGN_ID_HERE'.to_i

  # Prepare for deleting campaign.
  operation = {
    :operand => {
      :id => campaign_id,
      :status => 'DELETED',
    },
    :operator => 'SET'
  }

  # Delete campaign.
  response = campaign_srv.mutate([operation])
  campaign = response.rval.value.first
  puts 'Campaign with name \"%s\" and id %d was deleted.' %
      [campaign.name, campaign.id]
end

if __FILE__ == $0
  # To enable logging of SOAP requests, set the ADWORDS4R_DEBUG environment
  # variable to 'true'. This can be done either from your operating system
  # environment or via code, as done below.
  ENV['ADWORDS4R_DEBUG'] = 'false'

  begin
    delete_campaign()

  # Connection error. Likely transitory.
  rescue Errno::ECONNRESET, SOAP::HTTPStreamError, SocketError => e
    puts 'Connection Error: %s' % e
    puts 'Source: %s' % e.backtrace.first

  # API Error.
  rescue AdWords::Error::ApiError => e
    puts 'SOAP Error: %s (code: %d)' % [e.soap_faultstring_ex, e.code_ex]
    puts 'Trigger: %s' % e.trigger_ex unless e.trigger_ex.nil?
    puts 'Source: %s' % e.backtrace.first
  end
end
