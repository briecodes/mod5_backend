users_list = [
    {name: 'THE Shun', username: 'theshun', password: 'pass'},
    {name: 'NOT Shun', username: 'notshun', password: 'pass'},
    {name: '2Shun! 2Quit!!', username: '2shun2quit', password: 'pass'},
    {name: 'Bad Pun', username: 'rashunalize', password: 'pass'},
    {name: 'Real Shun', username: 'realshun', password: 'pass'}
]

events_list = [
    {user_id: 1, title: 'Truffle Butter', location: 'Flatiron School: Kay', description: 'Down & Dirty open-mic throwdown.', key_code: 'learnlovecode', active: true},
    {user_id: 2, title: 'Mod5 Party', location: 'Flatiron School: Turing', description: 'Party with the most obnoxious cohort in Flatirons history', key_code: 'learnlovecode', active: true},
    {user_id: 3, title: 'Letters from the Wasteland', location: 'Fifth Avenue', description: 'A Wallflowers Karaoke Extravaganza', key_code: 'jakob', active: true},
    {user_id: 3, title: 'OMG The 80s', location: 'Pier 8', description: 'Only songs from the 80s!', key_code: 'ilovethe80s', active: true}
]

user_events_list = [
    {user_id: 1, event_id: 1},
    {user_id: 2, event_id: 1},
    {user_id: 3, event_id: 1},
    {user_id: 4, event_id: 1},

    {user_id: 3, event_id: 2},
    {user_id: 4, event_id: 2},

    {user_id: 1, event_id: 3},
    {user_id: 2, event_id: 3},
    {user_id: 3, event_id: 3},
    {user_id: 4, event_id: 3},

    {user_id: 3, event_id: 4},
    {user_id: 4, event_id: 4}
]

song_entry_list = [
    {user_id: 1, event_id: 1, song_title: 'Only', song_artist: 'Nicki Minaj', video_url: 'https://www.youtube.com/watch?v=BU769XX_dIQ', video_id: 'BU769XX_dIQ', order_number: 1, played: false, passed: false},
    {user_id: 2, event_id: 1, song_title: 'Chun-Li', song_artist: 'Nicki Minaj', video_url: 'https://www.youtube.com/watch?v=Wpm07-BGJnE', video_id: 'BGJnE', order_number: 2, played: false, passed: false},
    {user_id: 3, event_id: 1, song_title: 'Only', song_artist: 'Nicki Minaj', video_url: 'https://www.youtube.com/watch?v=BU769XX_dIQ', video_id: 'BU769XX_dIQ', order_number: 1, played: false, passed: false},
    {user_id: 4, event_id: 1, song_title: 'Chun-Li', song_artist: 'Nicki Minaj', video_url: 'https://www.youtube.com/watch?v=Wpm07-BGJnE', video_id: 'BGJnE', order_number: 2, played: false, passed: false},
    
    {user_id: 3, event_id: 2, song_title: 'Turn Down for What', song_artist: 'Lil Jon', video_url: 'https://www.youtube.com/watch?v=HMUDVMiITOU', video_id: 'HMUDVMiITOU', order_number: 1, played: false, passed: false},
    {user_id: 4, event_id: 2, song_title: 'Apeshit', song_artist: 'The Carters', video_url: 'https://www.youtube.com/watch?v=kbMqWXnpXcA', video_id: 'kbMqWXnpXcA', order_number: 2, played: false, passed: false},
    {user_id: 3, event_id: 2, song_title: 'Turn Down for What', song_artist: 'Lil Jon', video_url: 'https://www.youtube.com/watch?v=HMUDVMiITOU', video_id: 'HMUDVMiITOU', order_number: 1, played: false, passed: false},
    
    {user_id: 1, event_id: 3, song_title: 'Sleepwalker', song_artist: 'Wallflowers', video_url: 'https://www.youtube.com/watch?v=Qvwu4e664Jo', video_id: 'Qvwu4e664Jo', order_number: 1, played: false, passed: false},
    {user_id: 2, event_id: 3, song_title: 'Hand Me Down', song_artist: 'Wallflowers', video_url: 'https://www.youtube.com/watch?v=eohz4ZuyDgU', video_id: 'eohz4ZuyDgU', order_number: 2, played: false, passed: false},
    {user_id: 3, event_id: 3, song_title: 'Sleepwalker', song_artist: 'Wallflowers', video_url: 'https://www.youtube.com/watch?v=Qvwu4e664Jo', video_id: 'Qvwu4e664Jo', order_number: 1, played: false, passed: false},
    {user_id: 4, event_id: 3, song_title: 'Hand Me Down', song_artist: 'Wallflowers', video_url: 'https://www.youtube.com/watch?v=eohz4ZuyDgU', video_id: 'eohz4ZuyDgU', order_number: 2, played: false, passed: false},
    
    {user_id: 3, event_id: 4, song_title: 'Sin in my Heart', song_artist: 'Siouxsie and the Banshees', video_url: 'https://www.youtube.com/watch?v=9hpEEKqdCDU', video_id: '9hpEEKqdCDU', order_number: 1, played: false, passed: false},
    {user_id: 4, event_id: 4, song_title: 'The Cure', song_artist: 'Pictures of You', video_url: 'https://www.youtube.com/watch?v=-56h8d3gLgk', video_id: '56h8d3gLgk', order_number: 2, played: false, passed: false}
]
  
users_list.each do |hash|
    User.create(hash)
end

events_list.each do |hash|
    Event.create(hash)
end

user_events_list.each do |hash|
    UserEvent.create(hash)
end

song_entry_list.each do |hash|
    SongEntry.create(hash)
end