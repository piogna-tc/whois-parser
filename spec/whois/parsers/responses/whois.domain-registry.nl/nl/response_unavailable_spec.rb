# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.domain-registry.nl/nl/response_unavailable.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.domain-registry.nl", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.domain-registry.nl/nl/response_unavailable.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.domain-registry.nl")
    Whois::Parser.parser_for(part)
  end

  it "matches response_unavailable.expected" do
    expect(subject.response_unavailable?).to eq(true)
  end
end
