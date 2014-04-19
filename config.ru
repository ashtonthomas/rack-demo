require './lower_middle_thing'
require './middle_middle_thing'
require './some_high_level_app'

use Rack::Static,
  :urls => ["/images", "/js", "/css"],
  :root => "public"

use LowerMiddleThing
use MiddleMiddleThing
run SomeHighLevelApp


