package §1L§
{
   import §1#v§.§;!Y§;
   
   public class §;u§
   {
      
      private static var §!#'§:§!#I§;
      
      private static var §2"U§:§9#T§;
      
      private static var §6$>§:Boolean = true;
      
      public static var §^"=§:String = "";
      
      public static var §7!$§:XML;
      
      public static var §&#V§:XML;
      
      public static const §;!<§:Boolean = true;
       
      
      public function §;u§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§7!$§ == null)
         {
            §;!Y§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §`k§(param1,§7!$§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §`k§(§7!$§.Default[0].toString(),§7!$§);
         }
         §;!Y§.log("Using connection profile:" + _loc2_.Id[0]);
         §&#V§ = _loc2_;
         var _loc3_:Class = §'#4§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §%G§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §^"=§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §!#'§ = new _loc3_(_loc6_,_loc5_);
         §2"U§ = new _loc4_();
         §!#'§.§9f§(§2"U§.§""j§,§2"U§.§2"R§);
      }
      
      public static function §`k§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §7!$§.Connection)
            {
               if(_loc3_.Id[0])
               {
                  if(_loc3_.Id[0].toString().indexOf(param1) == 0)
                  {
                     return _loc3_;
                  }
               }
            }
         }
         return null;
      }
      
      public static function §2!,§() : XML
      {
         if(§&#V§ == null || !§&#V§.Directories)
         {
            return null;
         }
         return §&#V§.Directories[0];
      }
      
      public static function §2!k§(param1:String, param2:Function = null) : void
      {
         §2"U§.§2!k§(param1,param2);
      }
      
      public static function §#!`§(param1:String, param2:Function) : void
      {
         §2"U§.§'2§(param1).addCallback(param2);
      }
      
      public static function §'l§(param1:String, param2:Function) : void
      {
         §2"U§.§'2§(param1).§?!§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§1#,§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§6$>§)
         {
            if(§;!<§)
            {
               _loc4_ = "";
               §;!Y§.log("URL sending...");
               if(!§^"=§ || §^"=§ == "PHP")
               {
                  _loc4_ = §!#'§.§-"k§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §;!Y§.log(_loc4_);
               }
               else if(§^"=§ == "Google")
               {
                  _loc4_ = §!#'§.§-"k§() + param1;
                  _loc6_ = 0;
                  for(_loc7_ in param2)
                  {
                     if(_loc6_ == 0)
                     {
                        _loc4_ += "?";
                     }
                     else
                     {
                        _loc4_ += "&";
                     }
                     _loc4_ += _loc7_ + "=" + param2[_loc7_];
                     _loc6_++;
                  }
                  §;!Y§.log(_loc4_);
               }
            }
            _loc3_ = §2"U§.§'2§(param1);
            if(_loc3_.§?$D§())
            {
               §!#'§.sendRequest(param1,param2);
            }
            else
            {
               §;!Y§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §;!Y§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function enable() : void
      {
         §6$>§ = true;
         §!#'§.§4-§();
      }
      
      public static function disable() : void
      {
         §6$>§ = false;
         §!#'§.§?#F§();
      }
      
      public static function §'#r§() : Boolean
      {
         return §6$>§;
      }
      
      public static function §9"M§(param1:String) : void
      {
         §2"U§.§'2§(param1).§2#d§(true);
      }
      
      public static function §'!I§(param1:String) : void
      {
         §2"U§.§'2§(param1).§2#d§(false);
      }
      
      public static function §8"s§() : String
      {
         return §!#'§.§-"k§();
      }
      
      public static function §0#y§() : Boolean
      {
         return §7!$§ != null;
      }
   }
}
