#--
# Ruby Whois
#
# An intelligent pure Ruby WHOIS client and parser.
#
# Copyright (c) 2009-2018 Simone Carletti <weppos@weppos.net>
#++


require_relative 'base_afilias'


module Whois
  class Parsers

    # Parser for the whois.nic.me server.
    class WhoisNicMe < BaseAfilias
    end

  end
end
