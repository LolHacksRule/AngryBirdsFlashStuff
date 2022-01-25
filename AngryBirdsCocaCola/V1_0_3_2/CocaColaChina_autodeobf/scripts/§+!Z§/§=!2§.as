package §+!Z§
{
   import §6!Q§.§7!7§;
   
   public class §=!2§
   {
      
      private static var § ]§:§-W§;
      
      private static var §`-§:§8!C§;
      
      private static var §6I§:Boolean = true;
      
      public static var §>@§:String = "";
      
      public static var §?a§:XML;
      
      public static var §,!L§:XML;
      
      public static const §"!@§:Boolean = true;
       
      
      public function §=!2§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§?a§ == null)
         {
            §7!7§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §4!Y§(param1,§?a§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §4!Y§(§?a§.Default[0].toString(),§?a§);
         }
         §7!7§.log("Using connection profile:" + _loc2_.Id[0]);
         §,!L§ = _loc2_;
         var _loc3_:Class = §`j§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = § !b§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §>@§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         § ]§ = new _loc3_(_loc6_,_loc5_);
         §`-§ = new _loc4_();
         § ]§.§'!R§(§`-§.§<I§,§`-§.§4+§);
      }
      
      public static function §4!Y§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §?a§.Connection)
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
      
      public static function §2i§() : XML
      {
         if(§,!L§ == null || !§,!L§.Directories)
         {
            return null;
         }
         return §,!L§.Directories[0];
      }
      
      public static function §@f§(param1:String, param2:Function = null) : void
      {
         §`-§.§@f§(param1,param2);
      }
      
      public static function §;1§(param1:String, param2:Function) : void
      {
         §`-§.§>u§(param1).addCallback(param2);
      }
      
      public static function §7J§(param1:String, param2:Function) : void
      {
         §`-§.§>u§(param1).§0C§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§?!^§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§6I§)
         {
            if(§"!@§)
            {
               _loc4_ = "";
               §7!7§.log("URL sending...");
               if(!§>@§ || §>@§ == "PHP")
               {
                  _loc4_ = § ]§.§`K§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §7!7§.log(_loc4_);
               }
               else if(§>@§ == "Google")
               {
                  _loc4_ = § ]§.§`K§() + param1;
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
                  §7!7§.log(_loc4_);
               }
            }
            _loc3_ = §`-§.§>u§(param1);
            if(_loc3_.§70§())
            {
               § ]§.sendRequest(param1,param2);
            }
            else
            {
               §7!7§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §7!7§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §1![§() : void
      {
         §6I§ = true;
         § ]§.§8!O§();
      }
      
      public static function § null§() : void
      {
         §6I§ = false;
         § ]§.§<=§();
      }
      
      public static function §99§() : Boolean
      {
         return §6I§;
      }
      
      public static function § !V§(param1:String) : void
      {
         §`-§.§>u§(param1).§^!]§(true);
      }
      
      public static function §&8§(param1:String) : void
      {
         §`-§.§>u§(param1).§^!]§(false);
      }
      
      public static function §,!F§() : String
      {
         return § ]§.§`K§();
      }
      
      public static function §`!§() : Boolean
      {
         return §?a§ != null;
      }
   }
}
