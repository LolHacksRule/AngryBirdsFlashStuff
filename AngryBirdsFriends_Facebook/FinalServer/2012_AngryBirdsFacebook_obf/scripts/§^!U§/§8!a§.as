package §^!U§
{
   import §!!z§.§>U§;
   import §""L§.§'!X§;
   import §#!^§.§1!1§;
   import §%!'§.§8o§;
   import §2!6§.§`"J§;
   import §5!g§.§<"A§;
   import §<";§.§'y§;
   import §<9§.§ ">§;
   import §<<§.§=!L§;
   import §?"§.§'T§;
   import §[!-§.§9!S§;
   import §[!-§.§?x§;
   import §[">§.§4!j§;
   import §^!o§.§=1§;
   import §each §.§@x§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   
   public class §8!a§
   {
      
      private static var §?!-§:§9!S§;
      
      private static var §?!_§:Object;
      
      private static var §`"I§:String = "";
      
      private static var §0!N§:int = 0;
      
      private static var §^"!§:String;
      
      private static var §"!J§:String;
       
      
      public function §8!a§()
      {
         super();
      }
      
      public static function load(param1:String, param2:String, param3:String) : void
      {
         §^"!§ = param1;
         §"!J§ = param2;
         §?!-§ = new §9!S§();
         §?!-§.dataFormat = URLLoaderDataFormat.TEXT;
         §?!-§.addEventListener(Event.COMPLETE,§<!s§);
         §?!-§.addEventListener(IOErrorEvent.IO_ERROR,§]2§);
         §?!-§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§]2§);
         if(param1)
         {
            §?!-§.load(§?x§.§>t§(AngryBirdsFP11.§#"@§ + "/init/" + param1 + "/" + param2 + "/" + param3 + "/" + (new Date().timezoneOffset / 60).toString()));
         }
         else
         {
            §?!-§ = null;
            §`"I§ = "Did not receive a facebook user ID.";
            §0!N§ = §8o§.§="4§;
         }
      }
      
      protected static function §]2§(param1:Event) : void
      {
         §`"I§ = "Can\'t contact server.\n" + param1.toString();
         §?!-§ = null;
      }
      
      private static function §<!s§(param1:Event) : void
      {
         var serverResponse:String = null;
         var bragObject:Object = null;
         var e:Event = param1;
         var threwError:Boolean = false;
         serverResponse = String(§?!-§.data);
         try
         {
            §?!_§ = JSON.parse(serverResponse);
            if(§?!_§.error)
            {
               §`"I§ = "Server error of type \'" + §?!_§.type + "\':\n" + §?!_§.message;
               if(§?!_§.type == "OAuthException")
               {
                  §0!N§ = §8o§.§+q§;
               }
               threwError = true;
            }
            if(§?!_§.user.userId != §^"!§)
            {
               §`"I§ = "Flashvar:\'" + §^"!§ + "\', server:\'" + §?!_§.user.userId + "\', access:\'" + §"!J§ + "\'";
               §0!N§ = §8o§.§?"2§;
               threwError = true;
            }
         }
         catch(e:Error)
         {
            §`"I§ = "Invalid server response. Expected a json string but got this:\n" + serverResponse;
            §0!N§ = §8o§.§1!d§;
            threwError = true;
         }
         if(!threwError)
         {
            §7@§.§1[§.§9";§(§?!_§.deauthorizedUserIds);
            §?!_§.friends = §#!V§(§?!_§.friends,"items");
            §1!1§.injectData(§?!_§.friends);
            §?!_§.currency = {
               "user_currency":"USD",
               "currency_exchange":10,
               "currency_exchange_inverse":0.1,
               "currency_offset":100
            };
            § ">§.§"!]§ = new §-i§(§?!_§.currency);
            §=1§.§1[§.injectData(§?!_§.tournament);
            (AngryBirdsFP11.sUserProgress as §'y§).§7!s§(§=1§.§1[§.levelScores);
            if(§?!_§.time)
            {
               §,"I§.§&q§.§+g§.§?"&§ = new §>U§(§?!_§.time);
            }
            §@x§.injectData(§?!_§.shopcampaigns);
            (AngryBirdsFP11.sUserProgress as §'y§).§?e§(§?!_§.state as Array,§?!_§.user.name,§?!_§.user.avatar,§?!_§.user.userId,§?!_§.eggs,§?!_§.user.tutorials);
            §`"J§.§1[§.§]@§(§?!_§.items);
            §<"A§.§<!A§(§?!_§.dailyReward);
            §4!j§.injectData(§?!_§.requests);
            §'!X§.injectData(§?!_§.abtesting);
            §7@§.§1[§.§]" §(§?!_§.excludedUserIds);
            §7@§.§1[§.§<!§(null);
            §'T§.§;6§();
            if(§?!_§.user.name == null)
            {
               throw new Error("User name cannot be null");
            }
            if(§?!_§.user.ap == true)
            {
               §=!L§.§+">§("doAdParlorConversion");
            }
            §,"I§.§`"D§(§?!_§.friends);
            for each(bragObject in §?!_§.requests.brags)
            {
               §=!L§.§+">§("flashDeleteRequest",bragObject.r);
            }
         }
         §?!-§ = null;
      }
      
      public static function §#!V§(param1:Object, param2:String, param3:String = null) : Object
      {
         var _loc4_:Object = null;
         var _loc5_:* = null;
         var _loc6_:Object = null;
         var _loc7_:int = 0;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         if(param1 == null)
         {
            return null;
         }
         if(!§7@§.§1[§.§+T§())
         {
            _loc4_ = new Object();
            for(_loc5_ in param1)
            {
               if(_loc5_ != param2)
               {
                  _loc4_[_loc5_] = param1[_loc5_];
               }
            }
            _loc4_[param2] = new Array();
            for each(_loc6_ in param1[param2])
            {
               if(§7@§.§1[§.§9O§()[_loc6_.u] == null)
               {
                  _loc4_[param2].push(_loc6_);
               }
            }
            for each(_loc6_ in _loc4_[param2])
            {
               if(_loc6_.r == 0)
               {
                  _loc6_.r = int.MAX_VALUE;
               }
            }
            _loc4_[param2].sortOn("r",Array.NUMERIC);
            for each(_loc6_ in _loc4_[param2])
            {
               if(_loc6_.r == int.MAX_VALUE)
               {
                  _loc6_.r = 0;
               }
            }
            _loc7_ = 1;
            for each(_loc6_ in _loc4_[param2])
            {
               if(_loc6_.r != 0)
               {
                  if(_loc6_.r != _loc7_)
                  {
                     _loc6_.r = _loc7_;
                  }
                  _loc7_++;
               }
            }
            if(param3)
            {
               _loc8_ = (AngryBirdsFP11.sUserProgress as §'y§).§;#§;
               _loc9_ = 0;
               for each(_loc6_ in _loc4_[param2])
               {
                  if(_loc6_.u == _loc8_)
                  {
                     _loc9_ = _loc6_.r;
                     break;
                  }
               }
               (AngryBirdsFP11.sUserProgress as §'y§).§ set§(param3,_loc9_);
            }
            return _loc4_;
         }
         return param1;
      }
      
      public static function get §@!o§() : Boolean
      {
         return §?!-§ != null;
      }
      
      private static function get data() : Object
      {
         return §?!_§;
      }
      
      public static function §;!V§() : String
      {
         return §`"I§;
      }
      
      public static function §%!o§() : int
      {
         return §0!N§;
      }
   }
}
