# Be sure to restart your server when you modify this file.
#
# This file contains migration options to ease your Rails 5.0 upgrade.
#
# Read the Rails 5.0 release notes for more info on each option.

# Enable per-form CSRF tokens. Prevconversationss versions had false.
Rails.application.config.action_controller.per_form_csrf_tokens = true

# Enable origin-checking CSRF mitigation. Prevconversationss versions had false.
Rails.application.config.action_controller.forgery_protection_origin_check = true

# Make Ruby 2.4 preserve the timezone of the receiver when calling `to_time`.
# Prevconversationss versions had false.
ActiveSupport.to_time_preserves_timezone = true

# Require `belongs_to` associations by default. Prevconversationss versions had false.
Rails.application.config.active_record.belongs_to_required_by_default = true

# Do not halt callback chains when a callback returns false. Prevconversationss versions had true.
ActiveSupport.halt_callback_chains_on_return_false = false

# Configure SSL options to enable HSTS with subdomains. Prevconversationss versions had false.
Rails.application.config.ssl_options = { hsts: { subdomains: true } }
