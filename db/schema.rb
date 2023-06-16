ActiveRecord::Schema[7.0].define(version: 20_230_616_063_200) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'catagories', force: :cascade do |t|
    t.string 'name'
    t.string 'string'
    t.string 'icon'
    t.string 'text'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'catagory_expenses', force: :cascade do |t|
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'expenses', force: :cascade do |t|
    t.string 'name'
    t.string 'string'
    t.string 'amount'
    t.string 'integer'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'users', force: :cascade do |t|
    t.string 'name'
    t.string 'string'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.index ['email'], name: 'index_users_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true
  end
end
