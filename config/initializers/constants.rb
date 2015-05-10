# allow updates via HTTP GET by setting this to true;
# set to false to only allow updates via HTTP POST
GET_SUPPORT = true

# rate limit channel updates
RATE_LIMIT = false

# number of seconds to wait before a channel can be updated again
RATE_LIMIT_FREQUENCY = '15'

# main production server to handle all requests (can be a proxy)
APPLICATION_IP_ADDRESS = 'nostradomus.cloudapp.net'

# domain for the API
API_DOMAIN = 'http://nostradomus.cloudapp.net/'

# get api key from HTTP headers if this value is present
HTTP_HEADER_API_KEY_NAME = 'THINGSPEAKAPIKEY'

# whether to use Redis or not
REDIS_ENABLED = false

# Twitter api credentials
CONSUMER_KEY = ''
CONSUMER_SECRET = ''

# reset password base url
RESET_PASSWORD_URL = 'http://nostradomus.cloudapp.net//users/reset_password/'

# allow only these additional locales (use downcase, easier to parse)
ALLOWED_LOCALES = ['pt-br','it']

