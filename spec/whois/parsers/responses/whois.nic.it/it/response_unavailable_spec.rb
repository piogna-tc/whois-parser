# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.it/it/response_unavailable.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.nic.it", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.nic.it/it/response_unavailable.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.nic.it")
    Whois::Parser.parser_for(part)
  end

  it "matches response_unavailable.expected" do
    expect(subject.response_unavailable?).to eq(true)
  end
end
