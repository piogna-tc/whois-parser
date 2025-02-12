# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.afilias.net/pro/status_reserved.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.afilias.net", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.afilias.net/pro/status_reserved.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.afilias.net")
    Whois::Parser.parser_for(part)
  end

  it "matches status_reserved.expected" do
    expect(subject.status).to eq(:reserved)
    expect(subject.reserved?).to eq(true)
  end
end
