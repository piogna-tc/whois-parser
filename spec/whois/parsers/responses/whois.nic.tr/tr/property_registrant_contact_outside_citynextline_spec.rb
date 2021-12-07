# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.tr/tr/property_registrant_contact_outside_citynextline.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.nic.tr", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.nic.tr/tr/property_registrant_contact_outside_citynextline.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.nic.tr")
    Whois::Parser.parser_for(part)
  end

  it "matches property_registrant_contact_outside_citynextline.expected" do
    expect(subject.registrant_contacts).to be_a(Array)
    expect(subject.registrant_contacts.size).to eq(1)
    expect(subject.registrant_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.registrant_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_REGISTRANT)
    expect(subject.registrant_contacts[0].id).to eq(nil)
    expect(subject.registrant_contacts[0].name).to eq("Google Inc.")
    expect(subject.registrant_contacts[0].organization).to eq(nil)
    expect(subject.registrant_contacts[0].address).to eq("1600 Amphitheatre Parkway\nMountain View CA")
    expect(subject.registrant_contacts[0].city).to eq(nil)
    expect(subject.registrant_contacts[0].zip).to eq(nil)
    expect(subject.registrant_contacts[0].state).to eq(nil)
    expect(subject.registrant_contacts[0].country).to eq("United States of America")
    expect(subject.registrant_contacts[0].country_code).to eq(nil)
    expect(subject.registrant_contacts[0].phone).to eq("+ 1-650-2530000-")
    expect(subject.registrant_contacts[0].fax).to eq("+ 1-650-2530001-")
    expect(subject.registrant_contacts[0].email).to eq("dns-admin@google.com")
  end
end
