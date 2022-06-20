package §]!>§
{
   import § "C§.§-!l§;
   import § "C§.§0]§;
   import §%!v§.§[<§;
   import §&G§.§1z§;
   import §'K§.§"!=§;
   import §+N§.§@!]§;
   import §1p§.§,O§;
   import §3!7§.§?!F§;
   import §6c§.§use§;
   import §7-§.§,!C§;
   import §8w§.§ !-§;
   import §<a§.§!!m§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   
   public class §"!w§
   {
      
      private static var §=F§:§0]§;
      
      private static var §"y§:Object;
      
      private static var §try§:String = "";
      
      private static var §=W§:int = 0;
       
      
      public function §"!w§()
      {
         super();
      }
      
      public static function load(param1:String, param2:String, param3:String) : void
      {
         §=F§ = new §0]§();
         §=F§.dataFormat = URLLoaderDataFormat.TEXT;
         §=F§.addEventListener(Event.COMPLETE,§5!^§);
         §=F§.addEventListener(IOErrorEvent.IO_ERROR,§0"1§);
         §=F§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§0"1§);
         if(param1)
         {
            §=F§.load(§-!l§.§%""§(AngryBirdsFP11.§76§ + "/init/" + param1 + "/" + param2 + "/" + param3 + "/" + (new Date().timezoneOffset / 60).toString()));
         }
         else
         {
            §=F§.load(§-!l§.§%""§(AngryBirdsFP11.§76§ + "/init"));
         }
      }
      
      protected static function §0"1§(param1:Event) : void
      {
         §try§ = "Can\'t contact server.\n" + param1.toString();
         §=F§ = null;
      }
      
      private static function §5!^§(param1:Event) : void
      {
         var serverResponse:String = null;
         var bragObject:Object = null;
         var e:Event = param1;
         var threwError:Boolean = false;
         serverResponse = String(§=F§.data);
         try
         {
            §"y§ = JSON.parse(serverResponse);
            if(§"y§.error)
            {
               §try§ = "Server error of type \'" + §"y§.type + "\':\n" + §"y§.message;
               if(§"y§.type == "OAuthException")
               {
                  §=W§ = §!!m§.§?#§;
               }
               threwError = true;
            }
         }
         catch(e:Error)
         {
            §try§ = "Invalid server response. Expected a json string but got this:\n" + serverResponse;
            §=W§ = §!!m§.§4H§;
            threwError = true;
         }
         if(!threwError)
         {
            §0!!§.§;"§.§]L§(§"y§.deauthorizedUserIds);
            §"y§.friends = §1!C§(§"y§.friends,"items");
            §1z§.injectData(§"y§.friends);
            § !-§.injectData(§"y§.shopcampaigns);
            §,!C§.§;"§.injectData(§"y§.tournament);
            (AngryBirdsFP11.sUserProgress as §[<§).§;!i§(§,!C§.§;"§.levelScores);
            (AngryBirdsFP11.sUserProgress as §[<§).§?"D§(§"y§.state as Array,§"y§.user.name,§"y§.user.avatar,§"y§.user.userId,§"y§.eggs,§"y§.user.tutorials);
            §?!F§.§;"§.§>G§(§"y§.items);
            §use§.§-l§(§"y§.dailyReward);
            §,O§.injectData(§"y§.requests);
            §0!!§.§;"§.§;!2§(§"y§.excludedUserIds);
            §0!!§.§;"§.§6!O§(null);
            §"!=§.§super§();
            if(§"y§.user.name == null)
            {
               throw new Error("User name cannot be null");
            }
            if(§"y§.user.ap == true)
            {
               §@!]§.§9"'§("doAdParlorConversion");
            }
            §3T§.§3!-§(§"y§.friends);
            for each(bragObject in §"y§.requests.brags)
            {
               §@!]§.§9"'§("flashDeleteRequest",bragObject.r);
            }
         }
         §=F§ = null;
      }
      
      public static function §1!C§(param1:Object, param2:String, param3:String = null) : Object
      {
         var _loc4_:Object = null;
         var _loc5_:* = null;
         var _loc6_:Object = null;
         var _loc7_:int = 0;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         if(!§0!!§.§;"§.§2I§())
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
               if(§0!!§.§;"§.§4!Z§()[_loc6_.u] == null)
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
               _loc8_ = (AngryBirdsFP11.sUserProgress as §[<§).§4v§;
               _loc9_ = 0;
               for each(_loc6_ in _loc4_[param2])
               {
                  if(_loc6_.u == _loc8_)
                  {
                     _loc9_ = _loc6_.r;
                     break;
                  }
               }
               (AngryBirdsFP11.sUserProgress as §[<§).§%"2§(param3,_loc9_);
            }
            return _loc4_;
         }
         return param1;
      }
      
      public static function get §6I§() : Boolean
      {
         return §=F§ != null;
      }
      
      private static function get data() : Object
      {
         return §"y§;
      }
      
      public static function §8"3§() : String
      {
         return §try§;
      }
      
      public static function §6E§() : int
      {
         return §=W§;
      }
   }
}
