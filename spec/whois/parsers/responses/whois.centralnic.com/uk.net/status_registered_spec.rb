# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.centralnic.com/uk.net/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/parsers/whois.centralnic.com.rb'

describe Whois::Parsers::WhoisCentralnicCom, "status_registered.expected" do

  subject do
    file = fixture("responses", "whois.centralnic.com/uk.net/status_registered.txt")
    part = Whois::Record::Part.new(body: File.read(file))
    described_class.new(part)
  end

  describe "#disclaimer" do
    it do
      expect(subject.disclaimer).to eq("This whois service is provided by CentralNic Ltd and only contains information pertaining to Internet domain names we have registered for our customers. By using this service you are agreeing (1) not to use any information presented here for any purpose other than determining ownership of domain names, (2) not to store or reproduce this data in any way, (3) not to use any high-volume, automated, electronic processes to obtain data from this service. Abuse of this service is monitored and actions in contravention of these terms will result in being permanently blacklisted. All data is (c) CentralNic Ltd https://www.centralnic.com/")
    end
  end
  describe "#domain" do
    it do
      expect(subject.domain).to eq("paramount.uk.net")
    end
  end
  describe "#domain_id" do
    it do
      expect(subject.domain_id).to eq("CNIC-DO393884")
    end
  end
  describe "#status" do
    it do
      expect(subject.status).to eq(["ok"])
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
      expect(subject.created_on).to eq(Time.parse("2006-02-28 12:17:01 UTC"))
    end
  end
  describe "#updated_on" do
    it do
      expect(subject.updated_on).to be_a(Time)
      expect(subject.updated_on).to eq(Time.parse("2013-04-03 12:59:45 UTC"))
    end
  end
  describe "#expires_on" do
    it do
      expect(subject.expires_on).to be_a(Time)
      expect(subject.expires_on).to eq(Time.parse("2014-02-28 23:59:59 UTC"))
    end
  end
  describe "#registrar" do
    it do
      expect(subject.registrar).to be_a(Whois::Parser::Registrar)
      expect(subject.registrar.id).to eq("I6467")
      expect(subject.registrar.name).to eq("Webfusion")
      expect(subject.registrar.url).to eq("http://www.123-reg.co.uk/domain-names/")
    end
  end
  describe "#registrant_contacts" do
    it do
      expect(subject.registrant_contacts).to be_a(Array)
      expect(subject.registrant_contacts.size).to eq(1)
      expect(subject.registrant_contacts[0]).to be_a(Whois::Parser::Contact)
      expect(subject.registrant_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_REGISTRANT)
      expect(subject.registrant_contacts[0].id).to eq("MNT60424953041")
      expect(subject.registrant_contacts[0].name).to eq("Identity Protection Service")
      expect(subject.registrant_contacts[0].organization).to eq("Identity Protect Limited")
      expect(subject.registrant_contacts[0].address).to eq("PO Box 795")
      expect(subject.registrant_contacts[0].city).to eq("Godalming")
      expect(subject.registrant_contacts[0].zip).to eq("GU7 9GA")
      expect(subject.registrant_contacts[0].state).to eq("Surrey")
      expect(subject.registrant_contacts[0].country).to eq(nil)
      expect(subject.registrant_contacts[0].country_code).to eq("GB")
      expect(subject.registrant_contacts[0].phone).to eq("+44.1483307527")
      expect(subject.registrant_contacts[0].fax).to eq("+44.1483304031")
      expect(subject.registrant_contacts[0].email).to eq("paramount.uk.net@identity-protect.org")
    end
  end
  describe "#admin_contacts" do
    it do
      expect(subject.admin_contacts).to be_a(Array)
      expect(subject.admin_contacts.size).to eq(1)
      expect(subject.admin_contacts[0]).to be_a(Whois::Parser::Contact)
      expect(subject.admin_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_ADMINISTRATIVE)
      expect(subject.admin_contacts[0].id).to eq("MNT60424953041")
      expect(subject.admin_contacts[0].name).to eq("Identity Protection Service")
      expect(subject.admin_contacts[0].organization).to eq("Identity Protect Limited")
      expect(subject.admin_contacts[0].address).to eq("PO Box 795")
      expect(subject.admin_contacts[0].city).to eq("Godalming")
      expect(subject.admin_contacts[0].zip).to eq("GU7 9GA")
      expect(subject.admin_contacts[0].state).to eq("Surrey")
      expect(subject.admin_contacts[0].country).to eq(nil)
      expect(subject.admin_contacts[0].country_code).to eq("GB")
      expect(subject.admin_contacts[0].phone).to eq("+44.1483307527")
      expect(subject.admin_contacts[0].fax).to eq("+44.1483304031")
      expect(subject.admin_contacts[0].email).to eq("paramount.uk.net@identity-protect.org")
    end
  end
  describe "#technical_contacts" do
    it do
      expect(subject.technical_contacts).to be_a(Array)
      expect(subject.technical_contacts.size).to eq(1)
      expect(subject.technical_contacts[0]).to be_a(Whois::Parser::Contact)
      expect(subject.technical_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_TECHNICAL)
      expect(subject.technical_contacts[0].id).to eq("MNT60424953041")
      expect(subject.technical_contacts[0].name).to eq("Identity Protection Service")
      expect(subject.technical_contacts[0].organization).to eq("Identity Protect Limited")
      expect(subject.technical_contacts[0].address).to eq("PO Box 795")
      expect(subject.technical_contacts[0].city).to eq("Godalming")
      expect(subject.technical_contacts[0].zip).to eq("GU7 9GA")
      expect(subject.technical_contacts[0].state).to eq("Surrey")
      expect(subject.technical_contacts[0].country).to eq(nil)
      expect(subject.technical_contacts[0].country_code).to eq("GB")
      expect(subject.technical_contacts[0].phone).to eq("+44.1483307527")
      expect(subject.technical_contacts[0].fax).to eq("+44.1483304031")
      expect(subject.technical_contacts[0].email).to eq("paramount.uk.net@identity-protect.org")
    end
  end
  describe "#nameservers" do
    it do
      expect(subject.nameservers).to be_a(Array)
      expect(subject.nameservers.size).to eq(2)
      expect(subject.nameservers[0]).to be_a(Whois::Parser::Nameserver)
      expect(subject.nameservers[0].name).to eq("ns1.myhostcp.com")
      expect(subject.nameservers[0].ipv4).to eq(nil)
      expect(subject.nameservers[0].ipv6).to eq(nil)
      expect(subject.nameservers[1]).to be_a(Whois::Parser::Nameserver)
      expect(subject.nameservers[1].name).to eq("ns2.myhostcp.com")
      expect(subject.nameservers[1].ipv4).to eq(nil)
      expect(subject.nameservers[1].ipv6).to eq(nil)
    end
  end
end
