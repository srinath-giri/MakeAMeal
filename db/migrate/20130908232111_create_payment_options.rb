class CreatePaymentOptions < ActiveRecord::Migration
  def change
    create_table :payment_options do |t|
      t.belongs_to :customer
      t.string :type
      t.string :account_card_number
      t.string :routing_cvv_number

      t.timestamps
    end
  end
end
