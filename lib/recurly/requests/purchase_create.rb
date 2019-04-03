# This file is automatically created by Recurly's OpenAPI generation process
# and thus any edits you make by hand will be lost. If you wish to make a
# change to this file, please create a Github issue explaining the changes you
# need and we will usher them to the appropriate places.
module Recurly
  module Requests
    class PurchaseCreate < Request

      # @!attribute account
      #   @return [AccountCreate]
      define_attribute :account, :AccountCreate

      # @!attribute collection_method
      #   @return [String] Collection method
      define_attribute :collection_method, String, {:enum => ["automatic", "manual"]}

      # @!attribute coupon_codes
      #   @return [Array[String]] A list of coupon_codes to be redeemed on the subscription or account during the purchase.
      define_attribute :coupon_codes, Array, {:item_type => String}

      # @!attribute credit_customer_notes
      #   @return [String] Notes to be put on the credit invoice resulting from credits in the purchase, if any.
      define_attribute :credit_customer_notes, String

      # @!attribute currency
      #   @return [String] 3-letter ISO 4217 currency code.
      define_attribute :currency, String

      # @!attribute customer_notes
      #   @return [String] Customer notes
      define_attribute :customer_notes, String

      # @!attribute gateway_code
      #   @return [String] The default payment gateway identifier to be used for the purchase transaction.  This will also be applied as the default for any subscriptions included in the purchase request.
      define_attribute :gateway_code, String

      # @!attribute gift_card_redemption_code
      #   @return [String] A gift card redemption code to be redeemed on the purchase invoice.
      define_attribute :gift_card_redemption_code, String

      # @!attribute line_items
      #   @return [Array[PurchaseLineItemCreate]] A list of one time charges or credits to be created with the purchase.
      define_attribute :line_items, Array, {:item_type => :PurchaseLineItemCreate}

      # @!attribute net_terms
      #   @return [Integer] Integer representing the number of days after an invoice's creation that the invoice will become past due. If an invoice's net terms are set to '0', it is due 'On Receipt' and will become past due 24 hours after it’s created. If an invoice is due net 30, it will become past due at 31 days exactly.
      define_attribute :net_terms, Integer

      # @!attribute po_number
      #   @return [String] For manual invoicing, this identifies the PO number associated with the subscription.
      define_attribute :po_number, String

      # @!attribute shipping_address_id
      #   @return [String] Assign a shipping address from the account's existing shipping addresses. If this and `shipping_address` are both present, `shipping_address` will take precedence.
      define_attribute :shipping_address_id, String

      # @!attribute subscriptions
      #   @return [Array[PurchaseSubscriptionCreate]] A list of subscriptions to be created with the purchase.
      define_attribute :subscriptions, Array, {:item_type => :PurchaseSubscriptionCreate}

      # @!attribute terms_and_conditions
      #   @return [String] Terms and conditions to be put on the purchase invoice.
      define_attribute :terms_and_conditions, String

      # @!attribute vat_reverse_charge_notes
      #   @return [String] VAT reverse charge notes for cross border European tax settlement.
      define_attribute :vat_reverse_charge_notes, String
    end
  end
end
