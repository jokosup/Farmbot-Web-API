module Plants
  class Create < Mutations::Command
    required do
      model :device, class: Device
      float :x
      float :y
    end

    optional do
      string :name, default: "Unknown Plant"
      string :img_url, default: "http://placehold.it/200x150"
      string :icon_url, default: "/icons/Natural Food-96.png"
      string :openfarm_slug, default: "not-set"
      integer :planted_at, default: ->{ Time.now.utc }
    end

    def execute
      Plant.create!(inputs)
    end
  end
end
