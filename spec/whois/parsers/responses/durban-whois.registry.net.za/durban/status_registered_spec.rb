# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/durban-whois.registry.net.za/durban/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/parsers/durban-whois.registry.net.za.rb'

describe Whois::Parsers::DurbanWhoisRegistryNetZa, "status_registered.expected" do

  subject do
    file = fixture("responses", "durban-whois.registry.net.za/durban/status_registered.txt")
    part = Whois::Record::Part.new(body: File.read(file))
    described_class.new(part)
  end

  describe "#domain" do
    it do
      expect(subject.domain).to eq("wordpress.durban")
    end
  end
  describe "#domain_id" do
    it do
      expect(subject.domain_id).to eq("dom_7G-9999")
    end
  end
  describe "#status" do
    it do
      expect(subject.status).to eq(:registered)
    end
  end
  describe "#available?" do
    it do
      expect(subject.available?).to eq(false)
    end
  end
  describe "#registered?" do
    it do
      expect(subject.registered?).to eq(true)
    end
  end
  describe "#created_on" do
    it do
      expect(subject.created_on).to be_a(Time)
      expect(subject.created_on).to eq(DateTime.parse("2014-11-04T06:00:01Z"))
    end
  end
  describe "#updated_on" do
    it do
      expect(subject.updated_on).to be_a(Time)
      expect(subject.updated_on).to eq(DateTime.parse("2014-11-11T06:00:03Z"))
    end
  end
  describe "#expires_on" do
    it do
      expect(subject.expires_on).to be_a(Time)
      expect(subject.expires_on).to eq(DateTime.parse("2016-11-04T06:00:01Z"))
    end
  end
  describe "#registrar" do
    it do
      expect(subject.registrar).to be_a(Whois::Parser::Registrar)
      expect(subject.registrar.id).to eq("292")
      expect(subject.registrar.name).to eq("MarkMonitor")
      expect(subject.registrar.url).to eq(nil)
    end
  end
  describe "#registrant_contacts" do
    it do
      expect(subject.registrant_contacts).to be_a(Array)
      expect(subject.registrant_contacts.size).to eq(1)
      expect(subject.registrant_contacts[0]).to be_a(Whois::Parser::Contact)
      expect(subject.registrant_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_REGISTRANT)
      expect(subject.registrant_contacts[0].id).to eq("mmr-132163")
      expect(subject.registrant_contacts[0].name).to eq("DNStination Inc.")
      expect(subject.registrant_contacts[0].organization).to eq("")
      expect(subject.registrant_contacts[0].address).to eq("425 Market St 5th Floor")
      expect(subject.registrant_contacts[0].city).to eq("San Francisco")
      expect(subject.registrant_contacts[0].state).to eq("CA")
      expect(subject.registrant_contacts[0].zip).to eq("94105")
      expect(subject.registrant_contacts[0].country).to eq(nil)
      expect(subject.registrant_contacts[0].country_code).to eq("US")
      expect(subject.registrant_contacts[0].phone).to eq("+1.4155319335")
      expect(subject.registrant_contacts[0].fax).to eq("+1.4155319336")
      expect(subject.registrant_contacts[0].email).to eq("admin@dnstinations.com")
      expect(subject.registrant_contacts[0].created_on).to eq(nil)
      expect(subject.registrant_contacts[0].updated_on).to eq(nil)
    end
  end
  describe "#admin_contacts" do
    it do
      expect(subject.admin_contacts).to be_a(Array)
      expect(subject.admin_contacts.size).to eq(1)
      expect(subject.admin_contacts[0]).to be_a(Whois::Parser::Contact)
      expect(subject.admin_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_ADMINISTRATIVE)
      expect(subject.admin_contacts[0].id).to eq("mmr-132163")
      expect(subject.admin_contacts[0].name).to eq("DNStination Inc.")
      expect(subject.admin_contacts[0].organization).to eq("")
      expect(subject.admin_contacts[0].address).to eq("425 Market St 5th Floor")
      expect(subject.admin_contacts[0].city).to eq("San Francisco")
      expect(subject.admin_contacts[0].state).to eq("CA")
      expect(subject.admin_contacts[0].zip).to eq("94105")
      expect(subject.admin_contacts[0].country).to eq(nil)
      expect(subject.admin_contacts[0].country_code).to eq("US")
      expect(subject.admin_contacts[0].phone).to eq("+1.4155319335")
      expect(subject.admin_contacts[0].fax).to eq("+1.4155319336")
      expect(subject.admin_contacts[0].email).to eq("admin@dnstinations.com")
      expect(subject.admin_contacts[0].created_on).to eq(nil)
      expect(subject.admin_contacts[0].updated_on).to eq(nil)
    end
  end
  describe "#technical_contacts" do
    it do
      expect(subject.technical_contacts).to be_a(Array)
      expect(subject.technical_contacts.size).to eq(1)
      expect(subject.technical_contacts[0]).to be_a(Whois::Parser::Contact)
      expect(subject.technical_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_TECHNICAL)
      expect(subject.technical_contacts[0].id).to eq("mmr-132163")
      expect(subject.technical_contacts[0].name).to eq("DNStination Inc.")
      expect(subject.technical_contacts[0].organization).to eq("")
      expect(subject.technical_contacts[0].address).to eq("425 Market St 5th Floor")
      expect(subject.technical_contacts[0].city).to eq("San Francisco")
      expect(subject.technical_contacts[0].state).to eq("CA")
      expect(subject.technical_contacts[0].zip).to eq("94105")
      expect(subject.technical_contacts[0].country).to eq(nil)
      expect(subject.technical_contacts[0].country_code).to eq("US")
      expect(subject.technical_contacts[0].phone).to eq("+1.4155319335")
      expect(subject.technical_contacts[0].fax).to eq("+1.4155319336")
      expect(subject.technical_contacts[0].email).to eq("admin@dnstinations.com")
      expect(subject.technical_contacts[0].created_on).to eq(nil)
      expect(subject.technical_contacts[0].updated_on).to eq(nil)
    end
  end
  describe "#nameservers" do
    it do
      expect(subject.nameservers).to be_a(Array)
      expect(subject.nameservers.size).to eq(2)
      expect(subject.nameservers[0]).to be_a(Whois::Parser::Nameserver)
      expect(subject.nameservers[0].name).to eq("ns3.markmonitor.com")
      expect(subject.nameservers[0].ipv4).to eq(nil)
      expect(subject.nameservers[0].ipv6).to eq(nil)
      expect(subject.nameservers[1]).to be_a(Whois::Parser::Nameserver)
      expect(subject.nameservers[1].name).to eq("ns1.markmonitor.com")
      expect(subject.nameservers[1].ipv4).to eq(nil)
      expect(subject.nameservers[1].ipv6).to eq(nil)
    end
  end
end
