# -*- coding: utf-8 -*-
# rubocop:disable Metrics/LineLength
module Lita
  module Handlers
    class RandomEffects < Handler
      route(/^!daily effect$/i, :quote, command: false, help: {
              'Daily Effect' => 'Random effect from list of 1000 random magic effects'
            })


      def quote(request)
        quotes = File.readlines("./random-effects.numbered.txt")
        request.reply(quotes.sample)
      end
    end

    Lita.register_handler(RandomEffects)
  end
end
