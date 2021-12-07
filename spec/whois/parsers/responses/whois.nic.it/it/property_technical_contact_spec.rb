# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.it/it/property_technical_contact.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.nic.it", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.nic.it/it/property_technical_contact.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.nic.it")
    Whois::Parser.parser_for(part)
  end

  it "matches property_technical_contact.expected" do
    expect(subject.technical_contacts).to be_a(Array)
    expect(subject.technical_contacts.size).to eq(1)
    expect(subject.technical_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.technical_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_TECHNICAL)
    expect(subject.technical_contacts[0].id).to eq("TS7016-ITNIC")
    expect(subject.technical_contacts[0].name).to eq("Technical Services")
  end
end
