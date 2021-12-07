# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.xxx/xxx/status_available.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.nic.xxx", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.nic.xxx/xxx/status_available.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.nic.xxx")
    Whois::Parser.parser_for(part)
  end

  it "matches status_available.expected" do
    expect(subject.disclaimer).to eq("The Service is provided so that you may look up certain information in relation to domain names that we store in our database. Use of the Service is subject to our policies, in particular you should familiarise yourself with our Acceptable Use Policy and our Privacy Policy. The information provided by this Service is 'as is' and we make no guarantee of it its accuracy. You agree that by your use of the Service you will not use the information provided by us in a way which is: * inconsistent with any applicable laws, * inconsistent with any policy issued by us, * to generate, distribute, or facilitate unsolicited mass email, promotions, advertisings or other solicitations, or * to enable high volume, automated, electronic processes that apply to the Service. You acknowledge that: * a response from the Service that a domain name is 'available', does not guarantee that is able to be registered, * we may restrict, suspend or terminate your access to the Service at any time, and * the copying, compilation, repackaging, dissemination or other use of the information provided by the Service is not permitted, without our express written consent. This information has been prepared and published in order to represent administrative and technical management of the TLD. We may discontinue or amend any part or the whole of these Terms of Service from time to time at our absolute discretion.")
    expect(subject.domain).to eq(nil)
    expect(subject.domain_id).to eq(nil)
    expect(subject.status).to eq(:available)
    expect(subject.available?).to eq(true)
    expect(subject.registered?).to eq(false)
    expect(subject.created_on).to eq(nil)
    expect(subject.updated_on).to eq(nil)
    expect(subject.expires_on).to eq(nil)
    expect(subject.registrar).to eq(nil)
    expect(subject.registrant_contacts).to be_a(Array)
    expect(subject.registrant_contacts).to eq([])
    expect(subject.admin_contacts).to be_a(Array)
    expect(subject.admin_contacts).to eq([])
    expect(subject.technical_contacts).to be_a(Array)
    expect(subject.technical_contacts).to eq([])
    expect(subject.nameservers).to be_a(Array)
    expect(subject.nameservers).to eq([])
    expect(subject.reserved?).to eq(false)
  end
end
