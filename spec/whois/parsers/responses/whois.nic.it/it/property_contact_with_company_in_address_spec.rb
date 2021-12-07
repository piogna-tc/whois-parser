# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.it/it/property_contact_with_company_in_address.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.nic.it", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.nic.it/it/property_contact_with_company_in_address.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.nic.it")
    Whois::Parser.parser_for(part)
  end

  it "matches property_contact_with_company_in_address.expected" do
    expect(subject.technical_contacts).to be_a(Array)
    expect(subject.technical_contacts.size).to eq(1)
    expect(subject.technical_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.technical_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_TECHNICAL)
    expect(subject.technical_contacts[0].id).to eq("AARS1-ITNIC")
    expect(subject.technical_contacts[0].name).to eq("Andrea Antonio Renato Stratta")
    expect(subject.technical_contacts[0].organization).to eq("UCI Italia Srl")
    expect(subject.technical_contacts[0].address).to eq("Via E. Fermi, 161")
    expect(subject.technical_contacts[0].city).to eq("Roma")
    expect(subject.technical_contacts[0].zip).to eq("00146")
    expect(subject.technical_contacts[0].state).to eq("RM")
    expect(subject.technical_contacts[0].country_code).to eq("IT")
    expect(subject.technical_contacts[0].created_on).to eq(DateTime.parse("2006-08-16 00:00:00"))
    expect(subject.technical_contacts[0].updated_on).to eq(DateTime.parse("2007-03-01 07:48:42"))
  end
end
