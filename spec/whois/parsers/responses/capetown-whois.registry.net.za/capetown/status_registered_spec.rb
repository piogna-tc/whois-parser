# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/capetown-whois.registry.net.za/capetown/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/parsers/capetown-whois.registry.net.za.rb'

describe Whois::Parsers::CapetownWhoisRegistryNetZa, "status_registered.expected" do

  subject do
    file = fixture("responses", "capetown-whois.registry.net.za/capetown/status_registered.txt")
    part = Whois::Record::Part.new(body: File.read(file))
    described_class.new(part)
  end

  describe "#domain" do
    it do
      expect(subject.domain).to eq("registry.capetown")
    end
  end
  describe "#domain_id" do
    it do
      expect(subject.domain_id).to eq("dom_3K3-9999")
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
      expect(subject.created_on).to eq(DateTime.parse("2015-04-01 07:41:59 UTC"))
    end
  end
  describe "#updated_on" do
    it do
      expect(subject.updated_on).to be_a(Time)
      expect(subject.updated_on).to eq(DateTime.parse("2015-05-30 09:21:00 UTC"))
    end
  end
  describe "#expires_on" do
    it do
      expect(subject.expires_on).to be_a(Time)
      expect(subject.expires_on).to eq(DateTime.parse("2016-04-01 07:41:59 UTC"))
    end
  end
  describe "#registrar" do
    it do
      expect(subject.registrar).to be_a(Whois::Parser::Registrar)
      expect(subject.registrar.id).to eq("1466")
      expect(subject.registrar.name).to eq("Lexsynergy")
      expect(subject.registrar.url).to eq(nil)
    end
  end
  describe "#registrant_contacts" do
    it do
      expect(subject.registrant_contacts).to be_a(Array)
      expect(subject.registrant_contacts.size).to eq(1)
      expect(subject.registrant_contacts[0]).to be_a(Whois::Parser::Contact)
      expect(subject.registrant_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_REGISTRANT)
      expect(subject.registrant_contacts[0].id).to eq("LEX-7IC-235J")
      expect(subject.registrant_contacts[0].name).to eq("Lucky Mokgabudi Masilela")
      expect(subject.registrant_contacts[0].organization).to eq("ZA Central Registry")
      expect(subject.registrant_contacts[0].address).to eq("COZA House, Gazelle Close Corporate Park South")
      expect(subject.registrant_contacts[0].city).to eq("Midrand")
      expect(subject.registrant_contacts[0].zip).to eq("1685")
      expect(subject.registrant_contacts[0].country).to eq(nil)
      expect(subject.registrant_contacts[0].country_code).to eq("ZA")
      expect(subject.registrant_contacts[0].phone).to eq("+27.113140077")
      expect(subject.registrant_contacts[0].fax).to eq("+27.113140088")
      expect(subject.registrant_contacts[0].email).to eq("legal@co.za")
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
      expect(subject.admin_contacts[0].id).to eq("LEX-7IC-235J")
      expect(subject.admin_contacts[0].name).to eq("Lucky Mokgabudi Masilela")
      expect(subject.admin_contacts[0].organization).to eq("ZA Central Registry")
      expect(subject.admin_contacts[0].address).to eq("COZA House, Gazelle Close Corporate Park South")
      expect(subject.admin_contacts[0].city).to eq("Midrand")
      expect(subject.admin_contacts[0].zip).to eq("1685")
      expect(subject.admin_contacts[0].country).to eq(nil)
      expect(subject.admin_contacts[0].country_code).to eq("ZA")
      expect(subject.admin_contacts[0].phone).to eq("+27.113140077")
      expect(subject.admin_contacts[0].fax).to eq("+27.113140088")
      expect(subject.admin_contacts[0].email).to eq("legal@co.za")
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
      expect(subject.technical_contacts[0].id).to eq("LEX-7IC-235J")
      expect(subject.technical_contacts[0].name).to eq("Lucky Mokgabudi Masilela")
      expect(subject.technical_contacts[0].organization).to eq("ZA Central Registry")
      expect(subject.technical_contacts[0].address).to eq("COZA House, Gazelle Close Corporate Park South")
      expect(subject.technical_contacts[0].city).to eq("Midrand")
      expect(subject.technical_contacts[0].zip).to eq("1685")
      expect(subject.technical_contacts[0].country).to eq(nil)
      expect(subject.technical_contacts[0].country_code).to eq("ZA")
      expect(subject.technical_contacts[0].phone).to eq("+27.113140077")
      expect(subject.technical_contacts[0].fax).to eq("+27.113140088")
      expect(subject.technical_contacts[0].email).to eq("legal@co.za")
      expect(subject.technical_contacts[0].created_on).to eq(nil)
      expect(subject.technical_contacts[0].updated_on).to eq(nil)
    end
  end
  describe "#nameservers" do
    it do
      expect(subject.nameservers).to be_a(Array)
      expect(subject.nameservers.size).to eq(2)
      expect(subject.nameservers[0]).to be_a(Whois::Parser::Nameserver)
      expect(subject.nameservers[0].name).to eq("ns1.nic.capetown")
      expect(subject.nameservers[0].ipv4).to eq(nil)
      expect(subject.nameservers[0].ipv6).to eq(nil)
      expect(subject.nameservers[1]).to be_a(Whois::Parser::Nameserver)
      expect(subject.nameservers[1].name).to eq("ns1.dnservices.co.za")
      expect(subject.nameservers[1].ipv4).to eq(nil)
      expect(subject.nameservers[1].ipv6).to eq(nil)
    end
  end
end
