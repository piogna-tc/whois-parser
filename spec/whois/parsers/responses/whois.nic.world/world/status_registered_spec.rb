# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.world/world/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.nic.world", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.nic.world/world/status_registered.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.nic.world")
    Whois::Parser.parser_for(part)
  end

  it "matches status_registered.expected" do
    expect(subject.domain).to eq("solex.world")
    expect(subject.domain_id).to eq("0bd73f47b47f436cac3ee5b20df18ef5-DONUTS")
    expect(subject.status).to eq(:registered)
    expect(subject.available?).to eq(false)
    expect(subject.registered?).to eq(true)
    expect(subject.created_on).to be_a(Time)
    expect(subject.created_on).to eq(DateTime.parse("2017-10-03 11:12:14 GMT"))
    expect(subject.updated_on).to be_a(Time)
    expect(subject.updated_on).to eq(DateTime.parse("2021-10-06 14:58:38 GMT"))
    expect(subject.expires_on).to be_a(Time)
    expect(subject.expires_on).to eq(DateTime.parse("2022-10-03 11:12:14 GMT"))
    expect(subject.registrar).to be_a(Whois::Parser::Registrar)
    expect(subject.registrar.id).to eq("433")
    expect(subject.registrar.name).to eq("OVH SAS")
    expect(subject.registrar.url).to eq("http://www.ovh.com")
    expect(subject.registrant_contacts).to be_a(Array)
    expect(subject.registrant_contacts.size).to eq(1)
    expect(subject.registrant_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.registrant_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_REGISTRANT)
    expect(subject.registrant_contacts[0].id).to eq("REDACTED FOR PRIVACY")
    expect(subject.registrant_contacts[0].name).to eq("REDACTED FOR PRIVACY")
    expect(subject.registrant_contacts[0].organization).to eq("")
    expect(subject.registrant_contacts[0].address).to eq("REDACTED FOR PRIVACY")
    expect(subject.registrant_contacts[0].city).to eq("REDACTED FOR PRIVACY")
    expect(subject.registrant_contacts[0].zip).to eq("REDACTED FOR PRIVACY")
    expect(subject.registrant_contacts[0].state).to eq("")
    expect(subject.registrant_contacts[0].country_code).to eq("FR")
    expect(subject.registrant_contacts[0].phone).to eq("REDACTED FOR PRIVACY ext: REDACTED FOR PRIVACY")
    expect(subject.registrant_contacts[0].fax).to eq("REDACTED FOR PRIVACY ext: REDACTED FOR PRIVACY")
    expect(subject.registrant_contacts[0].email).to eq("Please query the RDDS service of the Registrar of Record identified in this output for information on how to contact the Registrant, Admin, or Tech contact of the queried domain name.")
    expect(subject.admin_contacts).to be_a(Array)
    expect(subject.admin_contacts.size).to eq(1)
    expect(subject.admin_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.admin_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_ADMINISTRATIVE)
    expect(subject.admin_contacts[0].id).to eq("REDACTED FOR PRIVACY")
    expect(subject.admin_contacts[0].name).to eq("REDACTED FOR PRIVACY")
    expect(subject.admin_contacts[0].organization).to eq("REDACTED FOR PRIVACY")
    expect(subject.admin_contacts[0].address).to eq("REDACTED FOR PRIVACY")
    expect(subject.admin_contacts[0].city).to eq("REDACTED FOR PRIVACY")
    expect(subject.admin_contacts[0].zip).to eq("REDACTED FOR PRIVACY")
    expect(subject.admin_contacts[0].state).to eq("REDACTED FOR PRIVACY")
    expect(subject.admin_contacts[0].country_code).to eq("REDACTED FOR PRIVACY")
    expect(subject.admin_contacts[0].phone).to eq("REDACTED FOR PRIVACY ext: REDACTED FOR PRIVACY")
    expect(subject.admin_contacts[0].fax).to eq("REDACTED FOR PRIVACY ext: REDACTED FOR PRIVACY")
    expect(subject.admin_contacts[0].email).to eq("Please query the RDDS service of the Registrar of Record identified in this output for information on how to contact the Registrant, Admin, or Tech contact of the queried domain name.")
    expect(subject.technical_contacts).to be_a(Array)
    expect(subject.technical_contacts.size).to eq(1)
    expect(subject.technical_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.technical_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_TECHNICAL)
    expect(subject.technical_contacts[0].id).to eq("REDACTED FOR PRIVACY")
    expect(subject.technical_contacts[0].name).to eq("REDACTED FOR PRIVACY")
    expect(subject.technical_contacts[0].organization).to eq("REDACTED FOR PRIVACY")
    expect(subject.technical_contacts[0].address).to eq("REDACTED FOR PRIVACY")
    expect(subject.technical_contacts[0].city).to eq("REDACTED FOR PRIVACY")
    expect(subject.technical_contacts[0].zip).to eq("REDACTED FOR PRIVACY")
    expect(subject.technical_contacts[0].state).to eq("REDACTED FOR PRIVACY")
    expect(subject.technical_contacts[0].country_code).to eq("REDACTED FOR PRIVACY")
    expect(subject.technical_contacts[0].phone).to eq("REDACTED FOR PRIVACY ext: REDACTED FOR PRIVACY")
    expect(subject.technical_contacts[0].fax).to eq("REDACTED FOR PRIVACY ext: REDACTED FOR PRIVACY")
    expect(subject.technical_contacts[0].email).to eq("Please query the RDDS service of the Registrar of Record identified in this output for information on how to contact the Registrant, Admin, or Tech contact of the queried domain name.")
    expect(subject.nameservers).to be_a(Array)
    expect(subject.nameservers.size).to eq(2)
    expect(subject.nameservers[0]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[0].name).to eq("dns104.ovh.net")
    expect(subject.nameservers[1]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[1].name).to eq("ns104.ovh.net")
  end
end
