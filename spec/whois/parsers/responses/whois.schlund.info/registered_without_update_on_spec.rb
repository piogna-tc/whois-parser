# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.schlund.info/registered_without_update_on.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.schlund.info", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.schlund.info/registered_without_update_on.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.schlund.info")
    Whois::Parser.parser_for(part)
  end

  it "matches registered_without_update_on.expected" do
    expect(subject.updated_on).to eq(nil)
  end
end
