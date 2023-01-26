class Score < ApplicationRecord
  enum kind: { lyric: 0, chord: 1 }
end
