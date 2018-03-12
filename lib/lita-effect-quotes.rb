require 'lita'

# rubocop:disable Metrics/LineLength
Lita.load_locales(Dir[File.expand_path(File.join('..', '..', 'locales', '*.yml'), __FILE__)])

require 'lita/handlers/effect_quotes'

Lita::Handlers::RandomEffects.template_root(File.expand_path(File.join('..', '..', 'templates'), __FILE__))
