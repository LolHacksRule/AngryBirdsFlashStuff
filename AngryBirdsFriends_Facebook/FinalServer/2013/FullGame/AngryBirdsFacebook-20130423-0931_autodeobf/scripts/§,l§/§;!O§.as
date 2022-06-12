package §,l§
{
   import § 7§.§ else§;
   import §&r§.§'"L§;
   import §0D§.§3!R§;
   import §2"4§.§&k§;
   import §2<§.§3d§;
   import §2<§.§9!7§;
   import §30§.§'"+§;
   import §9@§.§1!j§;
   import §<"F§.§["M§;
   import §=!>§.§2!Z§;
   import §@!%§.§#!$§;
   import §@"V§.§6!c§;
   import §["6§.§ var§;
   import §`T§.§9"'§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   
   public class §;!O§
   {
      
      private static var §2"A§:§3d§;
      
      private static var §?!&§:Object;
      
      private static var §`W§:String = "";
      
      private static var §5B§:int = 0;
      
      private static var §<"'§:String;
      
      private static var §1"I§:String;
       
      
      public function §;!O§()
      {
         super();
      }
      
      public static function load(param1:String, param2:String, param3:String) : void
      {
         §<"'§ = param1;
         §1"I§ = param2;
         §2"A§ = new §3d§();
         §2"A§.dataFormat = URLLoaderDataFormat.TEXT;
         §2"A§.addEventListener(Event.COMPLETE,§'"1§);
         §2"A§.addEventListener(IOErrorEvent.IO_ERROR,§5"T§);
         §2"A§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§5"T§);
         if(param1)
         {
            §2"A§.load(§9!7§.§,!l§(AngryBirdsFP11.§?8§ + "/init/" + param1 + "/" + param2 + "/" + param3 + "/" + (new Date().timezoneOffset / 60).toString()));
         }
         else
         {
            §2"A§ = null;
            §`W§ = "Did not receive a facebook user ID.";
            §5B§ = §1!j§.§+!e§;
         }
      }
      
      protected static function §5"T§(param1:Event) : void
      {
         §`W§ = "Can\'t contact server.\n" + param1.toString();
         §2"A§ = null;
      }
      
      private static function §'"1§(param1:Event) : void
      {
         var serverResponse:String = null;
         var bragObject:Object = null;
         var e:Event = param1;
         var threwError:Boolean = false;
         serverResponse = String(§2"A§.data);
         try
         {
            §?!&§ = JSON.parse(serverResponse);
            if(§?!&§.error)
            {
               §`W§ = "Server error of type \'" + §?!&§.type + "\':\n" + §?!&§.message;
               if(§?!&§.type == "OAuthException")
               {
                  §5B§ = §1!j§.§%!C§;
               }
               threwError = true;
            }
            if(§?!&§.user.userId != §<"'§)
            {
               §`W§ = "Flashvar:\'" + §<"'§ + "\', server:\'" + §?!&§.user.userId + "\', access:\'" + §1"I§ + "\'";
               §5B§ = §1!j§.§]",§;
               threwError = true;
            }
         }
         catch(e:Error)
         {
            §`W§ = "Invalid server response. Expected a json string but got this:\n" + serverResponse;
            §5B§ = §1!j§.§%e§;
            threwError = true;
         }
         if(!threwError)
         {
            §4"7§.§&"5§.§39§(§?!&§.deauthorizedUserIds);
            §?!&§.friends = §>k§(§?!&§.friends,"items");
            §&k§.injectData(§?!&§.friends);
            §?!&§.currency = {
               "user_currency":"USD",
               "currency_exchange":10,
               "currency_exchange_inverse":0.1,
               "currency_offset":100
            };
            §?!&§.vCurrency = {
               "user_currency":"ABFC",
               "currency_exchange":0.01,
               "currency_exchange_inverse":100,
               "currency_offset":1
            };
            §%"S§.§!C§.§9"%§.§@!K§ = new §]! §();
            §%"S§.§!C§.§9"%§.§,T§ = new §["K§(§?!&§.vCurrency);
            §2!Z§.injectData(§?!&§.shopcampaigns);
            §3!R§.§&"5§.injectData(§?!&§.tournament);
            (AngryBirdsFP11.sUserProgress as §#!$§).§"r§(§3!R§.§&"5§.levelScores);
            if(§?!&§.servertime.time)
            {
               §%"S§.§!C§.§9"%§.§ Y§ = new §9"'§(§?!&§.servertime.time);
            }
            (AngryBirdsFP11.sUserProgress as §#!$§).§?!m§(§?!&§.state as Array,§?!&§.user.name,§?!&§.user.avatar,§?!&§.user.userId,§?!&§.eggs,§?!&§.user.tutorials);
            §#!,§.§&"5§.§?v§(§?!&§.items);
            §'"L§.§'p§(§?!&§.dailyReward);
            § else§.injectData(§?!&§.requests);
            §6!c§.injectData(§?!&§.abtesting);
            if(§?!&§.drawconfig && §?!&§.drawconfig.draw == §["M§.§0<§)
            {
               §%"S§.§!C§.§9"%§.§7"T§ = new §["M§(§?!&§.drawconfig);
            }
            else
            {
               §%"S§.§!C§.§9"%§.§7"T§ = new §["M§({});
            }
            §4"7§.§&"5§.§5"8§(§?!&§.excludedUserIds);
            §4"7§.§&"5§.§]!%§(null);
            § var§.§`";§();
            if(§?!&§.user.name == null)
            {
               throw new Error("User name cannot be null");
            }
            if(§?!&§.user.ap == true)
            {
               §'"+§.§'!#§("doAdParlorConversion");
            }
            §%"S§.§2`§(§?!&§.friends);
            for each(bragObject in §?!&§.requests.brags)
            {
               §'"+§.§'!#§("flashDeleteRequest",bragObject.r);
            }
         }
         §2"A§ = null;
      }
      
      public static function §>k§(param1:Object, param2:String, param3:String = null) : Object
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
         if(!§4"7§.§&"5§.§1!N§())
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
               if(§4"7§.§&"5§.§4!h§()[_loc6_.u] == null)
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
               _loc8_ = (AngryBirdsFP11.sUserProgress as §#!$§).§5!0§;
               _loc9_ = 0;
               for each(_loc6_ in _loc4_[param2])
               {
                  if(_loc6_.u == _loc8_)
                  {
                     _loc9_ = _loc6_.r;
                     break;
                  }
               }
               (AngryBirdsFP11.sUserProgress as §#!$§).§'!y§(param3,_loc9_);
            }
            return _loc4_;
         }
         return param1;
      }
      
      public static function get §each §() : Boolean
      {
         return §2"A§ != null;
      }
      
      private static function get data() : Object
      {
         return §?!&§;
      }
      
      public static function §1"Z§() : String
      {
         return §`W§;
      }
      
      public static function §!!q§() : int
      {
         return §5B§;
      }
   }
}
