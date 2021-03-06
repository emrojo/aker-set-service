class CreateAkerMaterials < ActiveRecord::Migration[5.0]
  def change
    enable_extension 'uuid-ossp' unless extension_enabled?('uuid-ossp')

    create_table :aker_materials, id: :uuid, default: 'uuid_generate_v4()' do |t|
      t.timestamps
    end
  end
end
