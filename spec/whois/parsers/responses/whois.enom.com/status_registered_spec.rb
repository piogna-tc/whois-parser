# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.enom.com/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.enom.com", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.enom.com/status_registered.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.enom.com")
    Whois::Parser.parser_for(part)
  end

  it "matches status_registered.expected" do
    expect(subject.domain).to eq("enom.com")
    expect(subject.domain_id).to eq(nil)
    expect(subject.status).to eq(:registered)
    expect(subject.available?).to eq(false)
    expect(subject.registered?).to eq(true)
    expect(subject.created_on).to be_a(Time)
    expect(subject.created_on).to eq(DateTime.parse("1997-10-24 00:00:00"))
    expect(subject.updated_on).to eq(nil)
    expect(subject.expires_on).to eq(nil)
    expect(subject.registrar).to be_a(Whois::Parser::Registrar)
    expect(subject.registrar.id).to eq(nil)
    expect(subject.registrar.name).to eq("eNom, Inc.")
    expect(subject.registrar.url).to eq(nil)
    expect(subject.registrant_contacts).to be_a(Array)
    expect(subject.registrant_contacts.size).to eq(1)
    expect(subject.registrant_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.registrant_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_REGISTRANT)
    expect(subject.registrant_contacts[0].id).to eq(nil)
    expect(subject.registrant_contacts[0].name).to eq("DNS MANAGER")
    expect(subject.registrant_contacts[0].organization).to eq("ENOM, INC.")
    expect(subject.registrant_contacts[0].address).to eq("P.O. BOX 7449, 5808 LAKE WASHINGTON BLVD. NE, SUITE 300")
    expect(subject.registrant_contacts[0].city).to eq("KIRKLAND")
    expect(subject.registrant_contacts[0].zip).to eq("98033")
    expect(subject.registrant_contacts[0].state).to eq("WA")
    expect(subject.registrant_contacts[0].country).to eq(nil)
    expect(subject.registrant_contacts[0].country_code).to eq("US")
    expect(subject.registrant_contacts[0].phone).to eq(nil)
    expect(subject.registrant_contacts[0].fax).to eq(nil)
    expect(subject.registrant_contacts[0].email).to eq(nil)
    expect(subject.registrant_contacts[0].created_on).to eq(nil)
    expect(subject.registrant_contacts[0].updated_on).to eq(nil)
    expect(subject.admin_contacts).to be_a(Array)
    expect(subject.admin_contacts.size).to eq(1)
    expect(subject.admin_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.admin_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_ADMINISTRATIVE)
    expect(subject.admin_contacts[0].id).to eq(nil)
    expect(subject.admin_contacts[0].name).to eq("DNS MANAGER")
    expect(subject.admin_contacts[0].organization).to eq("ENOM, INC.")
    expect(subject.admin_contacts[0].address).to eq("P.O. BOX 7449, 5808 LAKE WASHINGTON BLVD. NE, SUITE 300")
    expect(subject.admin_contacts[0].city).to eq("KIRKLAND")
    expect(subject.admin_contacts[0].zip).to eq("98033")
    expect(subject.admin_contacts[0].state).to eq("WA")
    expect(subject.admin_contacts[0].country).to eq(nil)
    expect(subject.admin_contacts[0].country_code).to eq("US")
    expect(subject.admin_contacts[0].phone).to eq("+1.4259744689")
    expect(subject.admin_contacts[0].fax).to eq("+1.4259744791")
    expect(subject.admin_contacts[0].email).to eq("DOMAINS@DEMANDMEDIA.COM")
    expect(subject.admin_contacts[0].created_on).to eq(nil)
    expect(subject.admin_contacts[0].updated_on).to eq(nil)
    expect(subject.technical_contacts).to be_a(Array)
    expect(subject.technical_contacts.size).to eq(1)
    expect(subject.technical_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.technical_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_TECHNICAL)
    expect(subject.technical_contacts[0].id).to eq(nil)
    expect(subject.technical_contacts[0].name).to eq("DNS MANAGER")
    expect(subject.technical_contacts[0].organization).to eq("ENOM, INC.")
    expect(subject.technical_contacts[0].address).to eq("P.O. BOX 7449, 5808 LAKE WASHINGTON BLVD. NE, SUITE 300")
    expect(subject.technical_contacts[0].city).to eq("KIRKLAND")
    expect(subject.technical_contacts[0].zip).to eq("98033")
    expect(subject.technical_contacts[0].state).to eq("WA")
    expect(subject.technical_contacts[0].country).to eq(nil)
    expect(subject.technical_contacts[0].country_code).to eq("US")
    expect(subject.technical_contacts[0].phone).to eq("+1.4259744689")
    expect(subject.technical_contacts[0].fax).to eq("+1.4259744791")
    expect(subject.technical_contacts[0].email).to eq("DOMAINS@DEMANDMEDIA.COM")
    expect(subject.technical_contacts[0].created_on).to eq(nil)
    expect(subject.technical_contacts[0].updated_on).to eq(nil)
    expect(subject.nameservers).to be_a(Array)
    expect(subject.nameservers.size).to eq(3)
    expect(subject.nameservers[0]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[0].name).to eq("dns11.enom.com")
    expect(subject.nameservers[0].ipv4).to eq(nil)
    expect(subject.nameservers[0].ipv6).to eq(nil)
    expect(subject.nameservers[1]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[1].name).to eq("dns12.enom.com")
    expect(subject.nameservers[1].ipv4).to eq(nil)
    expect(subject.nameservers[1].ipv6).to eq(nil)
    expect(subject.nameservers[2]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[2].name).to eq("dns13.enom.com")
    expect(subject.nameservers[2].ipv4).to eq(nil)
    expect(subject.nameservers[2].ipv6).to eq(nil)
  end
end
