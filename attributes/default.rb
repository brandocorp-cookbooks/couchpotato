default['couchpotato']['data'] = '/var/opt/couchpotato'
default['couchpotato']['home'] = '/opt/couchpotato'
default['couchpotato']['options'] = nil
default['couchpotato']['pidfile'] = '/var/run/couchpotato/couchpotato.pid'
default['couchpotato']['python_bin'] = '/usr/bin/python'
default['couchpotato']['repository'] = 'https://github.com/RuudBurger/CouchPotatoServer'
default['couchpotato']['ssd_opts'] = nil
default['couchpotato']['user'] = 'couchpotato'
default['couchpotato']['version'] = '3.0.1'

#######################################
# Settings
#######################################

#
# Settings > General
#

# Settings > General > Basic
default['couchpotato']['config']['core'].tap do |config|
  config['username'] = "couchpotato"
  config['password'] = "couchpotato"
  config['port'] = "5050"
  config['ipv6'] = "0"
  config['ssl_cert'] = ""
  config['ssl_key'] = ""
  config['launch_browser'] = "True"
  config['dark_theme'] = "1"
  config['debug'] = "0"
  config['api_key'] = "3e205490514645f681b53c7cceaa8faf"
  config['use_proxy'] = "0"
  config['proxy_server'] = ""
  config['proxy_username'] = ""
  config['proxy_password'] = ""
  config['dereferer'] = "http://www.dereferer.org/?"
  config['development'] = "0"
  config['data_dir'] = ""
  config['url_base'] = ""
  config['permission_folder'] = "0755"
  config['permission_file'] = "0644"
  config['show_wizard'] = "0"
end

# Settings > General > Updater
default['couchpotato']['config']['updater'].tap do |config|
  config['enabled'] = "True"
  config['notification'] = "True"
  config['automatic'] = "True"
  config['git_command'] = "git"
end

#
# Settings > Searcher
#

# Settings > Searcher > Movie Search
default['couchpotato']['config']['moviesearcher'].tap do |config|
  config['always_search'] = "False"
  config['run_on_launch'] = "0"
  config['search_on_add'] = "1"
  config['cron_day'] = "*"
  config['cron_hour'] = "16"
  config['cron_minute'] = "45"
end

# Settings > Searcher > Basics
default['couchpotato']['config']['searcher'].tap do |config|
  config['preferred_method'] = "both"
end

default['couchpotato']['config']['nzb'].tap do |config|
  config['retention'] = "1500"
end

default['couchpotato']['config']['torrent'].tap do |config|
  config['minimum_seeders'] = "1"
end

# Settings > Searcher > Torrent Providers
default['couchpotato']['config']['torrent_providers'] = {}

default['couchpotato']['config']['alpharatio'].tap do |config|
  config['username'] = ""
  config['seed_time'] = "40"
  config['extra_score'] = "0"
  config['enabled'] = "False"
  config['scene_only'] = "False"
  config['password'] = ""
  config['seed_ratio'] = "1"
end

default['couchpotato']['config']['awesomehd'].tap do |config|
  config['seed_time'] = "40"
  config['extra_score'] = "20"
  config['only_internal'] = "1"
  config['passkey'] = ""
  config['enabled'] = "False"
  config['favor'] = "both"
  config['prefer_internal'] = "1"
  config['seed_ratio'] = "1"
end

default['couchpotato']['config']['bithdtv'].tap do |config|
  config['username'] = ""
  config['seed_time'] = "40"
  config['extra_score'] = "20"
  config['enabled'] = "False"
  config['password'] = ""
  config['seed_ratio'] = "1"
end

default['couchpotato']['config']['bitsoup'].tap do |config|
  config['username'] = ""
  config['seed_time'] = "40"
  config['extra_score'] = "20"
  config['enabled'] = "False"
  config['password'] = ""
  config['seed_ratio'] = "1"
end

default['couchpotato']['config']['hd4free'].tap do |config|
  config['username'] = ""
  config['apikey'] = ""
  config['seed_time'] = "0"
  config['extra_score'] = "0"
  config['enabled'] = "False"
  config['internal_only'] = "False"
  config['prefer_internal'] = "1"
  config['seed_ratio'] = "0"
end

default['couchpotato']['config']['hdaccess'].tap do |config|
  config['username'] = ""
  config['apikey'] = ""
  config['seed_time'] = "0"
  config['extra_score'] = "0"
  config['enabled'] = "False"
  config['internal_only'] = "False"
  config['prefer_internal'] = "1"
  config['seed_ratio'] = "0"
end

default['couchpotato']['config']['hdbits'].tap do |config|
  config['username'] = ""
  config['seed_time'] = "40"
  config['extra_score'] = "0"
  config['passkey'] = ""
  config['enabled'] = "False"
  config['internal_only'] = "False"
  config['seed_ratio'] = "1"
end

default['couchpotato']['config']['ilovetorrents'].tap do |config|
  config['username'] = ""
  config['seed_time'] = "40"
  config['extra_score'] = "0"
  config['enabled'] = "False"
  config['password'] = ""
  config['seed_ratio'] = "1"
end

default['couchpotato']['config']['iptorrents'].tap do |config|
  config['username'] = ""
  config['freeleech'] = "0"
  config['extra_score'] = "0"
  config['enabled'] = "False"
  config['seed_time'] = "40"
  config['password'] = ""
  config['seed_ratio'] = "1"
end

default['couchpotato']['config']['kickasstorrents'].tap do |config|
  config['domain'] = ""
  config['seed_time'] = "40"
  config['extra_score'] = "0"
  config['enabled'] = "True"
  config['only_verified'] = "False"
  config['seed_ratio'] = "1"
end

default['couchpotato']['config']['passthepopcorn'].tap do |config|
  config['username'] = ""
  config['domain'] = ""
  config['seed_time'] = "40"
  config['extra_score'] = "20"
  config['passkey'] = ""
  config['prefer_scene'] = "0"
  config['enabled'] = "False"
  config['prefer_golden'] = "1"
  config['require_approval'] = "0"
  config['password'] = ""
  config['seed_ratio'] = "1"
  config['prefer_freeleech'] = "1"
end

default['couchpotato']['config']['rarbg'].tap do |config|
  config['min_leechers'] = "0"
  config['enabled'] = "False"
  config['ranked_only'] = "1"
  config['extra_score'] = "0"
  config['min_seeders'] = "10"
end

default['couchpotato']['config']['sceneaccess'].tap do |config|
  config['username'] = ""
  config['seed_time'] = "40"
  config['extra_score'] = "20"
  config['enabled'] = "False"
  config['password'] = ""
  config['seed_ratio'] = "1"
end

default['couchpotato']['config']['scenetime'].tap do |config|
  config['username'] = ""
  config['seed_time'] = "40"
  config['extra_score'] = "20"
  config['enabled'] = "False"
  config['password'] = ""
  config['seed_ratio'] = "1"
end

default['couchpotato']['config']['thepiratebay'].tap do |config|
  config['seed_time'] = "40"
  config['domain'] = ""
  config['enabled'] = "False"
  config['seed_ratio'] = "1"
  config['extra_score'] = "0"
end

default['couchpotato']['config']['torrentbytes'].tap do |config|
  config['username'] = ""
  config['seed_time'] = "40"
  config['extra_score'] = "20"
  config['enabled'] = "False"
  config['password'] = ""
  config['seed_ratio'] = "1"
end

default['couchpotato']['config']['torrentday'].tap do |config|
  config['username'] = ""
  config['seed_time'] = "40"
  config['extra_score'] = "0"
  config['enabled'] = "False"
  config['password'] = ""
  config['seed_ratio'] = "1"
end

default['couchpotato']['config']['torrentleech'].tap do |config|
  config['username'] = ""
  config['seed_time'] = "40"
  config['extra_score'] = "20"
  config['enabled'] = "False"
  config['password'] = ""
  config['seed_ratio'] = "1"
end

default['couchpotato']['config']['torrentpotato'].tap do |config|
  config['use'] = ""
  config['seed_time'] = "40"
  config['name'] = ""
  config['extra_score'] = "0"
  config['enabled'] = "False"
  config['host'] = ""
  config['pass_key'] = ","
  config['seed_ratio'] = "1"
end

default['couchpotato']['config']['torrentshack'].tap do |config|
  config['username'] = ""
  config['seed_time'] = "40"
  config['extra_score'] = "0"
  config['enabled'] = "False"
  config['scene_only'] = "False"
  config['password'] = ""
  config['seed_ratio'] = "1"
end

default['couchpotato']['config']['torrentz'].tap do |config|
  config['verified_only'] = "True"
  config['extra_score'] = "0"
  config['minimal_seeds'] = "1"
  config['enabled'] = "True"
  config['seed_time'] = "40"
  config['seed_ratio'] = "1"
end

default['couchpotato']['config']['yify'].tap do |config|
  config['seed_time'] = "40"
  config['domain'] = ""
  config['enabled'] = "False"
  config['seed_ratio'] = "1"
  config['extra_score'] = "0"
end

# Settings > Searcher > Usenet Providers
default['couchpotato']['config']['nzb_providers'] = {}

default['couchpotato']['config']['binsearch'].tap do |config|
  config['enabled'] = ""
  config['extra_score'] = "0"
end

default['couchpotato']['config']['newznab'].tap do |config|
  config['use'] = "0,0,0,0,0"
  config['extra_score'] = "0,0,0,0,0"
  config['enabled'] = "True"
  config['host'] = "api.nzb.su,api.dognzb.cr,nzbs.org,https://api.nzbgeek.info,https://www.nzbfinder.ws"
  config['custom_tag'] = ",,,,"
  config['api_key'] = ",,,,"
end

default['couchpotato']['config']['nzbclub'].tap do |config|
  config['enabled'] = ""
  config['extra_score'] = "0"
end

default['couchpotato']['config']['omgwtfnzbs'].tap do |config|
  config['username'] = ""
  config['api_key'] = ""
  config['enabled'] = ""
  config['extra_score'] = "20"
end

#
# Settings > Searcher > Categories
#

# Settings > Searcher > Categories > Global Filters
default['couchpotato']['config']['searcher'].tap do |config|
  config['preferred_words'] = ""
  config['required_words'] = ""
  config['ignored_words'] = "german, dutch, french, truefrench, danish, swedish, spanish, italian, korean, dubbed, swesub, korsub, dksubs, vain, HC"
end

# Settings > Searcher > Categories > Categories
# Settings > Searcher > Categories > Category ordering

#
# Settings > Searcher > Qualities
#

# Settings > Searcher > Qualities > Quality Profiles
# Settings > Searcher > Qualities > Profile Defaults
# Settings > Searcher > Qualities > Quality Profiles
# Settings > Searcher > Qualities > Sizes


#
# Settings > Downloaders
#

# Settings > Downloaders > Downloaders
default['couchpotato']['config']['download_providers'] = {}

default['couchpotato']['config']['pneumatic'].tap do |config|
  config['directory'] = ""
  config['manual'] = "0"
  config['enabled'] = "0"
end

default['couchpotato']['config']['blackhole'].tap do |config|
  config['directory'] = "/opt/couchpotato"
  config['manual'] = "0"
  config['enabled'] = "True"
  config['create_subdir'] = "0"
  config['use_for'] = "both"
end

default['couchpotato']['config']['synology'].tap do |config|
  config['username'] = ""
  config['manual'] = "0"
  config['destination'] = ""
  config['enabled'] = "0"
  config['host'] = "localhost:5000"
  config['password'] = ""
  config['use_for'] = "both"
end

default['couchpotato']['config']['nzbget'].tap do |config|
  config['username'] = "nzbget"
  config['category'] = "Movies"
  config['delete_failed'] = "True"
  config['manual'] = "0"
  config['enabled'] = "0"
  config['priority'] = "0"
  config['ssl'] = "0"
  config['host'] = "localhost:6789"
  config['password'] = ""
end

default['couchpotato']['config']['transmission'].tap do |config|
  config['username'] = ""
  config['stalled_as_failed'] = "True"
  config['delete_failed'] = "True"
  config['rpc_url'] = "transmission"
  config['manual'] = "0"
  config['enabled'] = "0"
  config['paused'] = "False"
  config['host'] = "http://localhost:9091"
  config['delete_files'] = "True"
  config['directory'] = ""
  config['remove_complete'] = "True"
  config['password'] = ""
end

default['couchpotato']['config']['qbittorrent'].tap do |config|
  config['username'] = ""
  config['manual'] = "0"
  config['enabled'] = "0"
  config['paused'] = "False"
  config['host'] = "http://localhost:8080/"
  config['delete_files'] = "True"
  config['remove_complete'] = "False"
  config['password'] = ""
end

default['couchpotato']['config']['nzbvortex'].tap do |config|
  config['group'] = ""
  config['delete_failed'] = "True"
  config['manual'] = "False"
  config['enabled'] = "0"
  config['host'] = "https://localhost:4321"
  config['api_key'] = ""
end

default['couchpotato']['config']['sabnzbd'].tap do |config|
  config['category'] = ""
  config['delete_failed'] = "True"
  config['manual'] = "False"
  config['enabled'] = "0"
  config['priority'] = "0"
  config['ssl'] = "0"
  config['host'] = "localhost:8080"
  config['remove_complete'] = "False"
  config['api_key'] = ""
end

default['couchpotato']['config']['utorrent'].tap do |config|
  config['username'] = ""
  config['delete_failed'] = "True"
  config['manual'] = "0"
  config['enabled'] = "0"
  config['label'] = ""
  config['paused'] = "False"
  config['host'] = "localhost:8000"
  config['delete_files'] = "True"
  config['remove_complete'] = "True"
  config['password'] = ""
end

default['couchpotato']['config']['rtorrent'].tap do |config|
  config['username'] = ""
  config['rpc_url'] = "RPC2"
  config['manual'] = "0"
  config['enabled'] = "0"
  config['label'] = ""
  config['paused'] = "False"
  config['ssl'] = "0"
  config['host'] = "localhost:80"
  config['delete_files'] = "True"
  config['directory'] = ""
  config['remove_complete'] = "False"
  config['password'] = ""
end

default['couchpotato']['config']['hadouken'].tap do |config|
  config['auth_type'] = "api_key"
  config['auth_pass'] = ""
  config['enabled'] = "0"
  config['label'] = ""
  config['host'] = "localhost:7890"
  config['version'] = "v4"
  config['auth_user'] = ""
  config['api_key'] = ""
end

default['couchpotato']['config']['putio'].tap do |config|
  config['delete_file'] = "0"
  config['callback_host'] = ""
  config['download_dir'] = ""
  config['manual'] = "0"
  config['enabled'] = "0"
  config['oauth_token'] = ""
  config['download'] = "0"
  config['folder'] = "0"
end

default['couchpotato']['config']['deluge'].tap do |config|
  config['username'] = ""
  config['delete_failed'] = "True"
  config['completed_directory'] = ""
  config['manual'] = "0"
  config['enabled'] = "0"
  config['label'] = ""
  config['paused'] = "False"
  config['host'] = "localhost:58846"
  config['delete_files'] = "True"
  config['directory'] = ""
  config['remove_complete'] = "True"
  config['password'] = ""
end

#
# Settings > Renamer
#

# Settings > Renamer > Rename downloaded movies
default['couchpotato']['config']['renamer'].tap do |config|
  config['file_name'] = "<thename><cd>.<ext>"
  config['next_on_failed'] = "True"
  config['default_file_action'] = "move"
  config['ntfs_permission'] = "False"
  config['check_space'] = "True"
  config['nfo_name'] = "<filename>.orig.<ext>"
  config['from'] = ""
  config['foldersep'] = ""
  config['to'] = ""
  config['cleanup'] = "False"
  config['unrar_modify_date'] = "False"
  config['move_leftover'] = "False"
  config['rename_nfo'] = "True"
  config['folder_name'] = "<namethe> (<year>)"
  config['run_every'] = "1"
  config['file_action'] = "link"
  config['replace_doubles'] = "True"
  config['unrar_path'] = ""
  config['enabled'] = "False"
  config['unrar'] = "False"
  config['separator'] = ""
  config['force_every'] = "2"
end

# Settings > Renamer > Download trailer
default['couchpotato']['config']['trailer'].tap do |config|
  config['quality'] = "720p"
  config['enabled'] = "False"
  config['name'] = "<filename>-trailer"
end

# Settings > Renamer > Download subtitles
default['couchpotato']['config']['subtitle'].tap do |config|
  config['languages'] = ""
  config['force'] = "False"
  config['enabled'] = "False"
end

# Settings > Renamer > Metadata
default['couchpotato']['config']['sonyps3'].tap do |config|
  config['meta_enabled'] = "False"
end

default['couchpotato']['config']['mediabrowser'].tap do |config|
  config['meta_enabled'] = "False"
end

default['couchpotato']['config']['wdtvlive'].tap do |config|
  config['meta_thumbnail'] = "True"
  config['meta_enabled'] = "False"
  config['meta_nfo'] = "True"
end

default['couchpotato']['config']['windowsmediacenter'].tap do |config|
  config['meta_enabled'] = "False"
end

#
# Settings > Notifications
#

# Settings > Notifications > Notifications
default['couchpotato']['config']['notification_providers'] = {}

default['couchpotato']['config']['boxcar2'].tap do |config|
  config['token'] = ""
  config['enabled'] = "0"
  config['on_snatch'] = "0"
end

default['couchpotato']['config']['email'].tap do |config|
  config['starttls'] = "0"
  config['smtp_pass'] = ""
  config['on_snatch'] = "0"
  config['from'] = ""
  config['to'] = ""
  config['smtp_port'] = "25"
  config['enabled'] = "0"
  config['smtp_server'] = ""
  config['smtp_user'] = ""
  config['ssl'] = "0"
end

default['couchpotato']['config']['emby'].tap do |config|
  config['host'] = "localhost:8096"
  config['apikey'] = ""
  config['enabled'] = "0"
end

default['couchpotato']['config']['growl'].tap do |config|
  config['password'] = ""
  config['on_snatch'] = "False"
  config['hostname'] = ""
  config['enabled'] = "0"
  config['port'] = ""
end

default['couchpotato']['config']['nmj'].tap do |config|
  config['host'] = "localhost"
  config['enabled'] = "0"
  config['mount'] = ""
  config['database'] = ""
end

default['couchpotato']['config']['notifymyandroid'].tap do |config|
  config['priority'] = "0"
  config['dev_key'] = ""
  config['api_key'] = ""
  config['enabled'] = "0"
  config['on_snatch'] = "0"
end

default['couchpotato']['config']['plex'].tap do |config|
  config['username'] = ""
  config['on_snatch'] = "0"
  config['auth_token'] = ""
  config['clients'] = ""
  config['enabled'] = "0"
  config['media_server'] = "localhost"
  config['password'] = ""
end

default['couchpotato']['config']['prowl'].tap do |config|
  config['priority'] = "0"
  config['on_snatch'] = "0"
  config['api_key'] = ""
  config['enabled'] = "0"
end

default['couchpotato']['config']['pushalot'].tap do |config|
  config['auth_token'] = ""
  config['important'] = "0"
  config['enabled'] = "0"
  config['silent'] = "0"
  config['on_snatch'] = "0"
end

default['couchpotato']['config']['pushbullet'].tap do |config|
  config['channels'] = ""
  config['on_snatch'] = "0"
  config['api_key'] = ""
  config['enabled'] = "0"
  config['devices'] = ""
end

default['couchpotato']['config']['pushover'].tap do |config|
  config['sound'] = ""
  config['on_snatch'] = "0"
  config['user_key'] = ""
  config['enabled'] = "0"
  config['priority'] = "0"
  config['api_token'] = "YkxHMYDZp285L265L3IwH3LmzkTaCy"
end

default['couchpotato']['config']['slack'].tap do |config|
  config['on_snatch'] = "0"
  config['as_user'] = "False"
  config['enabled'] = "0"
  config['bot_name'] = "CouchPotato"
  config['channels'] = ""
  config['token'] = ""
  config['icon_emoji'] = ""
  config['icon_url'] = ""
  config['include_imdb'] = "True"
end

default['couchpotato']['config']['synoindex'].tap do |config|
  config['enabled'] = "0"
end

default['couchpotato']['config']['toasty'].tap do |config|
  config['on_snatch'] = "0"
  config['api_key'] = ""
  config['enabled'] = "0"
end

default['couchpotato']['config']['trakt'].tap do |config|
  config['remove_watchlist_enabled'] = "False"
  config['notification_enabled'] = "False"
  config['automation_enabled'] = "False"
  config['automation_oauth_refresh'] = ""
  config['automation_oauth_token'] = ""
end

default['couchpotato']['config']['twitter'].tap do |config|
  config['on_snatch'] = "0"
  config['screen_name'] = ""
  config['enabled'] = "0"
  config['access_token_key'] = ""
  config['mention'] = ""
  config['access_token_secret'] = ""
  config['direct_message'] = "0"
end

default['couchpotato']['config']['webhook'].tap do |config|
  config['url'] = ""
  config['on_snatch'] = "0"
  config['enabled'] = "0"
end

default['couchpotato']['config']['xbmc'].tap do |config|
  config['username'] = "xbmc"
  config['on_snatch'] = "False"
  config['force_full_scan'] = "0"
  config['only_first'] = "0"
  config['enabled'] = "0"
  config['remote_dir_scan'] = "0"
  config['host'] = "localhost:8080"
  config['password'] = ""
  config['meta_disc_art_name'] = "disc.png"
  config['meta_extra_thumbs_name'] = "extrathumbs/thumb<i>.jpg"
  config['meta_thumbnail'] = "True"
  config['meta_extra_fanart'] = "False"
  config['meta_logo'] = "False"
  config['meta_enabled'] = "False"
  config['meta_landscape_name'] = "landscape.jpg"
  config['meta_nfo_name'] = "%s.nfo"
  config['meta_banner_name'] = "banner.jpg"
  config['meta_landscape'] = "False"
  config['meta_extra_fanart_name'] = "extrafanart/extrafanart<i>.jpg"
  config['meta_nfo'] = "True"
  config['meta_fanart'] = "True"
  config['meta_thumbnail_name'] = "%s.tbn"
  config['meta_url_only'] = "False"
  config['meta_fanart_name'] = "%s-fanart.jpg"
  config['meta_logo_name'] = "logo.png"
  config['meta_banner'] = "False"
  config['meta_clear_art'] = "False"
  config['meta_clear_art_name'] = "clearart.png"
  config['meta_extra_thumbs'] = "False"
  config['meta_disc_art'] = "False"
end

default['couchpotato']['config']['xmpp'].tap do |config|
  config['username'] = ""
  config['on_snatch'] = "0"
  config['hostname'] = "talk.google.com"
  config['enabled'] = "0"
  config['to'] = ""
  config['password'] = ""
  config['port'] = "5222"
end

#
# Settings > Automation
#

# Settings > Automation > Watchlists
default['couchpotato']['config']['flixster'].tap do |config|
  config['automation_ids_use'] = ""
  config['automation_enabled'] = "False"
  config['automation_ids'] = ""
end

default['couchpotato']['config']['goodfilms'].tap do |config|
  config['automation_enabled'] = "False"
  config['automation_username'] = ""
end

default['couchpotato']['config']['hummingbird'].tap do |config|
  config['automation_list_dropped'] = "False"
  config['automation_enabled'] = "False"
  config['automation_username'] = ""
  config['automation_list_hold'] = "False"
  config['automation_list_completed'] = "False"
  config['automation_list_plan'] = "True"
  config['automation_list_current'] = "False"
end

default['couchpotato']['config']['imdb'].tap do |config|
  config['automation_enabled'] = "False"
  config['automation_urls_use'] = ""
  config['automation_urls'] = ""
end

default['couchpotato']['config']['letterboxd'].tap do |config|
  config['automation_enabled'] = "False"
  config['automation_urls_use'] = ""
  config['automation_urls'] = ""
end

default['couchpotato']['config']['moviesio'].tap do |config|
  config['automation_enabled'] = "False"
  config['automation_urls_use'] = ""
  config['automation_urls'] = ""
end

# Settings > Automation > Automated
default['couchpotato']['config']['automation_providers'] = {}

default['couchpotato']['config']['bluray'].tap do |config|
  config['automation_enabled'] = "False"
  config['chart_display_enabled'] = "True"
  config['backlog'] = "False"
end

default['couchpotato']['config']['popularmovies'].tap do |config|
  config['automation_enabled'] = "False"
end

default['couchpotato']['config']['itunes'].tap do |config|
  config['automation_enabled'] = "False"
  config['automation_urls_use'] = ","
  config['automation_urls'] = "https://itunes.apple.com/rss/topmovies/limit=25/xml,"
end

default['couchpotato']['config']['moviemeter'].tap do |config|
  config['automation_enabled'] = "False"
end

default['couchpotato']['config']['crowdai'].tap do |config|
  config['automation_enabled'] = "False"
  config['number_grabs'] = "500"
  config['automation_urls_use'] = "1"
  config['automation_urls'] = "http://YOUR_PROVIDER/rss?t=THE_MOVIE_CATEGORY&i=YOUR_USER_ID&r=YOUR_API_KEY&res=2&rls=2&num=100"
end

default['couchpotato']['config']['imdb'].tap do |config|
  config['automation_providers_enabled'] = "False"
  config['automation_charts_theater'] = "True"
  config['automation_charts_rentals'] = "True"
  config['automation_charts_top250'] = "False"
  config['automation_charts_boxoffice'] = "True"
end

default['couchpotato']['config']['kinepolis'].tap do |config|
  config['automation_enabled'] = "False"
end


# Settings > Automation > Minimal Movie Requirements
default['couchpotato']['config']['automation'].tap do |config|
  config['rating'] = "7.0"
  config['votes'] = "1000"
  config['hour'] = "12"
  config['required_genres'] = ""
  config['year'] = "2011"
  config['ignored_genres'] = ""
end

#
# Settings > Display
#
default['couchpotato']['config']['suggestion'].tap do |config|
  config['enabled'] = "True"
end

# Settings > Display > Charts
default['couchpotato']['config']['charts'] = {}

default['couchpotato']['config']['bluray'].tap do |config|
  config['chart_display_enabled'] = "True"
end

default['couchpotato']['config']['imdb'].tap do |config|
  config['chart_display_enabled'] = "True"
  config['chart_display_theater'] = "False"
  config['chart_display_top250'] = "False"
  config['chart_display_rentals'] = "True"
  config['chart_display_boxoffice'] = "True"
end


#
# Settings > Manage
#

# Settings > Manage > Movie Library Manager
default['couchpotato']['config']['manage'].tap do |config|
  config['enabled'] = "False"
  config['library'] = ""
  config['cleanup'] = "True"
  config['startup_scan'] = "True"
  config['library_refresh_interval'] = "0"
end






















default['couchpotato']['config']['themoviedb'].tap do |config|
  config['api_key'] = "9b939aee0aaafc12a65bf448e4af9543"
end
