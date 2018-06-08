class AddRefundPolicyAndPrivacyPolicyToShop < ActiveRecord::Migration[5.1]
  def change
    add_column :shops, :refund_policy, :text
    add_column :shops, :privacy_policy, :text
  end
end
