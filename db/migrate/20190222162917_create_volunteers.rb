class CreateVolunteers < ActiveRecord::Migration[5.0]
  def change
    create_table :volunteers do |t|
      t.string :name
      t.string :email
      t.string :twitter
      t.string :linkedin
      t.text :What_programming_language_are_you_able_to_teach?
      t.text :What_duration_of_weeks_or_months_do_you_intend_to_volunteer?
      t.text :How_many_hours_a_week_do_you_have_available_to_volunteer?
      t.text :How_did_you_hear_about_us?
      t.text :comments
      t.timestamps
    end
  end
end
