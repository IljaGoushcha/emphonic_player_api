class PlaylistFolder < ActiveRecord::Base
  belongs_to :playlist

  def self.order_folders
    ordered_folders = PlaylistFolder.all.order(folder_number: :asc)
    last_folder_number = ordered_folders.last.folder_number
    max_number_folders = (1+last_folder_number/30)*30
    filled_folder_array = []

    i = 1
    while i < max_number_folders+1  do
      filled_folder_array.push({
        folder_number: i,
        playlist_id: nil,
        page_number: 1+((i-1)/30),
        playlist: {
          name: nil,
          songs: []
        }
      })
      i +=1
    end

    i = 0
    while i < ordered_folders.length do
      filled_folder_array[ordered_folders[i].folder_number-1] = ordered_folders[i]
      i +=1
    end

    return filled_folder_array
  end

end
