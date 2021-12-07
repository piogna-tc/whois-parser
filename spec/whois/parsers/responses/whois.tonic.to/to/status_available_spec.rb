# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.tonic.to/to/status_available.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.tonic.to", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.tonic.to/to/status_available.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.tonic.to")
    Whois::Parser.parser_for(part)
  end

  it "matches status_available.expected" do
    expect { subject.disclaimer }.to raise_error(Whois::AttributeNotSupported)
    expect { subject.domain }.to raise_error(Whois::AttributeNotSupported)
    expect { subject.domain_id }.to raise_error(Whois::AttributeNotSupported)
    expect(subject.status).to eq(:available)
    expect(subject.available?).to eq(true)
    expect(subject.registered?).to eq(false)
    expect { subject.created_on }.to raise_error(Whois::AttributeNotSupported)
    expect { subject.updated_on }.to raise_error(Whois::AttributeNotSupported)
    expect { subject.expires_on }.to raise_error(Whois::AttributeNotSupported)
    expect { subject.registrar }.to raise_error(Whois::AttributeNotSupported)
    expect { subject.registrant_contacts }.to raise_error(Whois::AttributeNotSupported)
    expect { subject.admin_contacts }.to raise_error(Whois::AttributeNotSupported)
    expect { subject.technical_contacts }.to raise_error(Whois::AttributeNotSupported)
    expect { subject.nameservers }.to raise_error(Whois::AttributeNotSupported)
    expect(subject.response_incomplete?).to eq(false)
  end
end
