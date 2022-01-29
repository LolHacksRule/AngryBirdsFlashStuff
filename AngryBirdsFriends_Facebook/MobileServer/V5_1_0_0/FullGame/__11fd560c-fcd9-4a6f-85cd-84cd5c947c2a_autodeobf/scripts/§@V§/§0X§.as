package §@V§
{
   import §]!6§.§6Y§;
   
   public class §0X§
   {
      
      private static var §@#s§:§%#M§;
      
      private static var §?#B§:§0!d§;
      
      private static var §=!u§:Boolean = true;
      
      public static var §,!,§:String = "";
      
      public static var §7!^§:XML;
      
      public static var §7`§:XML;
      
      public static const §`2§:Boolean = true;
       
      
      public function §0X§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§7!^§ == null)
         {
            §6Y§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = § I§(param1,§7!^§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = § I§(§7!^§.Default[0].toString(),§7!^§);
         }
         §6Y§.log("Using connection profile:" + _loc2_.Id[0]);
         §7`§ = _loc2_;
         var _loc3_:Class = §6G§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §2M§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §,!,§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §@#s§ = new _loc3_(_loc6_,_loc5_);
         §?#B§ = new _loc4_();
         §@#s§.§4!>§(§?#B§.§,"m§,§?#B§.§3#W§);
      }
      
      public static function § I§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §7!^§.Connection)
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
      
      public static function §+!D§() : XML
      {
         if(§7`§ == null || !§7`§.Directories)
         {
            return null;
         }
         return §7`§.Directories[0];
      }
      
      public static function §[#m§(param1:String, param2:Function = null) : void
      {
         §?#B§.§[#m§(param1,param2);
      }
      
      public static function §>"^§(param1:String, param2:Function) : void
      {
         §?#B§.§3#3§(param1).addCallback(param2);
      }
      
      public static function §4X§(param1:String, param2:Function) : void
      {
         §?#B§.§3#3§(param1).§,"i§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§`#q§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§=!u§)
         {
            if(§`2§)
            {
               _loc4_ = "";
               §6Y§.log("URL sending...");
               if(!§,!,§ || §,!,§ == "PHP")
               {
                  _loc4_ = §@#s§.§9@§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §6Y§.log(_loc4_);
               }
               else if(§,!,§ == "Google")
               {
                  _loc4_ = §@#s§.§9@§() + param1;
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
                  §6Y§.log(_loc4_);
               }
            }
            _loc3_ = §?#B§.§3#3§(param1);
            if(_loc3_.§,d§())
            {
               §@#s§.sendRequest(param1,param2);
            }
            else
            {
               §6Y§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §6Y§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function enable() : void
      {
         §=!u§ = true;
         §@#s§.§'L§();
      }
      
      public static function disable() : void
      {
         §=!u§ = false;
         §@#s§.§"$6§();
      }
      
      public static function §`#§() : Boolean
      {
         return §=!u§;
      }
      
      public static function §6!V§(param1:String) : void
      {
         §?#B§.§3#3§(param1).§]$<§(true);
      }
      
      public static function §8!W§(param1:String) : void
      {
         §?#B§.§3#3§(param1).§]$<§(false);
      }
      
      public static function §'_§() : String
      {
         return §@#s§.§9@§();
      }
      
      public static function § "y§() : Boolean
      {
         return §7!^§ != null;
      }
   }
}
