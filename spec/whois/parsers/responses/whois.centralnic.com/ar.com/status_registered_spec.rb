# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.centralnic.com/ar.com/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.centralnic.com", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.centralnic.com/ar.com/status_registered.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.centralnic.com")
    Whois::Parser.parser_for(part)
  end

  it "matches status_registered.expected" do
    expect(subject.disclaimer).to eq("This whois service is provided by CentralNic Ltd and only contains information pertaining to Internet domain names we have registered for our customers. By using this service you are agreeing (1) not to use any information presented here for any purpose other than determining ownership of domain names, (2) not to store or reproduce this data in any way, (3) not to use any high-volume, automated, electronic processes to obtain data from this service. Abuse of this service is monitored and actions in contravention of these terms will result in being permanently blacklisted. All data is (c) CentralNic Ltd https://www.centralnic.com/")
    expect(subject.domain).to eq("hotel.ar.com")
    expect(subject.domain_id).to eq("CNIC-DO557730")
    expect(subject.status).to eq(["ok"])
    expect(subject.available?).to eq(false)
    expect(subject.registered?).to eq(true)
    expect(subject.created_on).to be_a(Time)
    expect(subject.created_on).to eq(DateTime.parse("2008-04-25 16:22:13 UTC"))
    expect(subject.updated_on).to be_a(Time)
    expect(subject.updated_on).to eq(DateTime.parse("2013-04-26 00:15:40 UTC"))
    expect(subject.expires_on).to be_a(Time)
    expect(subject.expires_on).to eq(DateTime.parse("2014-04-25 23:59:59 UTC"))
    expect(subject.registrar).to be_a(Whois::Parser::Registrar)
    expect(subject.registrar.id).to eq("H1323241")
    expect(subject.registrar.name).to eq("CentralNic Ltd")
    expect(subject.registrar.url).to eq(nil)
    expect(subject.registrant_contacts).to be_a(Array)
    expect(subject.registrant_contacts.size).to eq(1)
    expect(subject.registrant_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.registrant_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_REGISTRANT)
    expect(subject.registrant_contacts[0].id).to eq("H1323241")
    expect(subject.registrant_contacts[0].name).to eq("Reserved Domains")
    expect(subject.registrant_contacts[0].organization).to eq("CentralNic Ltd")
    expect(subject.registrant_contacts[0].address).to eq("35-39 Moorgate")
    expect(subject.registrant_contacts[0].city).to eq("London")
    expect(subject.registrant_contacts[0].zip).to eq("EC2R 6AR")
    expect(subject.registrant_contacts[0].state).to eq(nil)
    expect(subject.registrant_contacts[0].country).to eq(nil)
    expect(subject.registrant_contacts[0].country_code).to eq("GB")
    expect(subject.registrant_contacts[0].phone).to eq("+44.8700170900")
    expect(subject.registrant_contacts[0].fax).to eq("+44.8700170901")
    expect(subject.registrant_contacts[0].email).to eq("domains@centralnic.com")
    expect(subject.admin_contacts).to be_a(Array)
    expect(subject.admin_contacts.size).to eq(1)
    expect(subject.admin_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.admin_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_ADMINISTRATIVE)
    expect(subject.admin_contacts[0].id).to eq("H1323241")
    expect(subject.admin_contacts[0].name).to eq("Reserved Domains")
    expect(subject.admin_contacts[0].organization).to eq("CentralNic Ltd")
    expect(subject.admin_contacts[0].address).to eq("35-39 Moorgate")
    expect(subject.admin_contacts[0].city).to eq("London")
    expect(subject.admin_contacts[0].zip).to eq("EC2R 6AR")
    expect(subject.admin_contacts[0].state).to eq(nil)
    expect(subject.admin_contacts[0].country).to eq(nil)
    expect(subject.admin_contacts[0].country_code).to eq("GB")
    expect(subject.admin_contacts[0].phone).to eq("+44.8700170900")
    expect(subject.admin_contacts[0].fax).to eq("+44.8700170901")
    expect(subject.admin_contacts[0].email).to eq("domains@centralnic.com")
    expect(subject.technical_contacts).to be_a(Array)
    expect(subject.technical_contacts.size).to eq(1)
    expect(subject.technical_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.technical_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_TECHNICAL)
    expect(subject.technical_contacts[0].id).to eq("H1323241")
    expect(subject.technical_contacts[0].name).to eq("Reserved Domains")
    expect(subject.technical_contacts[0].organization).to eq("CentralNic Ltd")
    expect(subject.technical_contacts[0].address).to eq("35-39 Moorgate")
    expect(subject.technical_contacts[0].city).to eq("London")
    expect(subject.technical_contacts[0].zip).to eq("EC2R 6AR")
    expect(subject.technical_contacts[0].state).to eq(nil)
    expect(subject.technical_contacts[0].country).to eq(nil)
    expect(subject.technical_contacts[0].country_code).to eq("GB")
    expect(subject.technical_contacts[0].phone).to eq("+44.8700170900")
    expect(subject.technical_contacts[0].fax).to eq("+44.8700170901")
    expect(subject.technical_contacts[0].email).to eq("domains@centralnic.com")
    expect(subject.nameservers).to be_a(Array)
    expect(subject.nameservers.size).to eq(6)
    expect(subject.nameservers[0]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[0].name).to eq("ns0.centralnic-dns.com")
    expect(subject.nameservers[1]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[1].name).to eq("ns1.centralnic-dns.com")
    expect(subject.nameservers[2]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[2].name).to eq("ns2.centralnic-dns.com")
    expect(subject.nameservers[3]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[3].name).to eq("ns3.centralnic-dns.com")
    expect(subject.nameservers[4]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[4].name).to eq("ns4.centralnic-dns.com")
    expect(subject.nameservers[5]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[5].name).to eq("ns5.centralnic-dns.com")
  end
end
