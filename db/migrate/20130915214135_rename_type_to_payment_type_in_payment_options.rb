class RenameTypeToPaymentTypeInPaymentOptions < ActiveRecord::Migration
  def change
    rename_column :payment_options, :type, :payment_type
  end
end
