package §`y§
{
   import §!4§.§=!Z§;
   
   public class §4!T§
   {
      
      private static var §%2§:§>!T§;
      
      private static var §@Q§:§66§;
      
      private static var §^I§:Boolean = true;
      
      public static var §&>§:String = "";
      
      public static var §+!^§:XML;
      
      public static var §'_§:XML;
      
      public static const § k§:Boolean = true;
       
      
      public function §4!T§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§+!^§ == null)
         {
            §=!Z§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = § S§(param1,§+!^§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = § S§(§+!^§.Default[0].toString(),§+!^§);
         }
         §=!Z§.log("Using connection profile:" + _loc2_.Id[0]);
         §'_§ = _loc2_;
         var _loc3_:Class = §=i§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §6!8§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §&>§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §%2§ = new _loc3_(_loc6_,_loc5_);
         §@Q§ = new _loc4_();
         §%2§.§5]§(§@Q§.§";§,§@Q§.§8!C§);
      }
      
      public static function § S§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §+!^§.Connection)
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
      
      public static function §5!!§() : XML
      {
         if(§'_§ == null || !§'_§.Directories)
         {
            return null;
         }
         return §'_§.Directories[0];
      }
      
      public static function §3!B§(param1:String, param2:Function = null) : void
      {
         §@Q§.§3!B§(param1,param2);
      }
      
      public static function §]!F§(param1:String, param2:Function) : void
      {
         §@Q§.§ #§(param1).addCallback(param2);
      }
      
      public static function §[!"§(param1:String, param2:Function) : void
      {
         §@Q§.§ #§(param1).§true§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§7P§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§^I§)
         {
            if(§ k§)
            {
               _loc4_ = "";
               §=!Z§.log("URL sending...");
               if(!§&>§ || §&>§ == "PHP")
               {
                  _loc4_ = §%2§.§-a§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §=!Z§.log(_loc4_);
               }
               else if(§&>§ == "Google")
               {
                  _loc4_ = §%2§.§-a§() + param1;
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
                  §=!Z§.log(_loc4_);
               }
            }
            _loc3_ = §@Q§.§ #§(param1);
            if(_loc3_.§"B§())
            {
               §%2§.sendRequest(param1,param2);
            }
            else
            {
               §=!Z§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §=!Z§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §&O§() : void
      {
         §^I§ = true;
         §%2§.§,N§();
      }
      
      public static function §%e§() : void
      {
         §^I§ = false;
         §%2§.§%<§();
      }
      
      public static function §51§() : Boolean
      {
         return §^I§;
      }
      
      public static function §1@§(param1:String) : void
      {
         §@Q§.§ #§(param1).§@&§(true);
      }
      
      public static function §@;§(param1:String) : void
      {
         §@Q§.§ #§(param1).§@&§(false);
      }
      
      public static function §8<§() : String
      {
         return §%2§.§-a§();
      }
      
      public static function §`N§() : Boolean
      {
         return §+!^§ != null;
      }
   }
}
