import spotipy
from spotipy.oauth2 import SpotifyOAuth

sp = spotipy.Spotify(auth_manager=SpotifyOAuth(client_id="df781909ec6c4ea0b8cf6de1dba52f1f",
                                             client_secret="46275b04bb674ccb80ddd82523f0b8fa",
                                               redirect_uri="http://localhost:40459",
                                              scope="user-library-read"))
with open('music.sql', 'a') as f:
        
    results = sp.current_user_saved_tracks(limit=50)
    total = results['total']
    print(results['total'])
    for i in range(0, total, 50):
        results = sp.current_user_saved_tracks(limit=50, offset=i)
        
        for idx, item in enumerate(results['items']):
            
            track = item['track']
            
            album_name = track['album']['name'].replace('\'', '\'\'')
            album_type = track['album']['album_type'].replace('\'', '\'\'')
            date_release = track['album']['release_date']
            href = track['album']['href']
            autors = ", ".join([el['name'].replace('\'', '\'\'') for el in track['artists']])
            duration = track['duration_ms']
            name = track['name'].replace('\'', '\'\'')
            print("('{}', '{}', '{}', '{}', '{}', {}, '{}')".format(album_name, 
                                                                  album_type, 
                                                                  date_release, 
                                                                  href, autors, 
                                                                  duration, 
                                                                  name), 
                                                            end=',\n', file=f)
            
