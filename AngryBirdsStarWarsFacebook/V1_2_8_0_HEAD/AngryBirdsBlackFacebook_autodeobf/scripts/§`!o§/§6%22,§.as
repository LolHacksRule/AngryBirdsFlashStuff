package §`!o§
{
   import §5t§.Log;
   
   public class §6",§
   {
      
      private static var §=&§:§^!f§;
      
      private static var §"!P§:§4"0§;
      
      private static var §'!a§:Boolean = true;
      
      public static var §#"7§:String = "";
      
      public static var §7"'§:XML;
      
      public static var §1#A§:XML;
      
      public static const §6!N§:Boolean = true;
       
      
      public function §6",§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§7"'§ == null)
         {
            Log.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §#!-§(param1,§7"'§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §#!-§(§7"'§.Default[0].toString(),§7"'§);
         }
         Log.log("Using connection profile:" + _loc2_.Id[0]);
         §1#A§ = _loc2_;
         var _loc3_:Class = §4p§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §?"8§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §#"7§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §=&§ = new _loc3_(_loc6_,_loc5_);
         §"!P§ = new _loc4_();
         §=&§.§9R§(§"!P§.§,!-§,§"!P§.§^""§);
      }
      
      public static function §#!-§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §7"'§.Connection)
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
      
      public static function §<[§() : XML
      {
         if(§1#A§ == null || !§1#A§.Directories)
         {
            return null;
         }
         return §1#A§.Directories[0];
      }
      
      public static function §%C§(param1:String, param2:Function = null) : void
      {
         §"!P§.§%C§(param1,param2);
      }
      
      public static function §>V§(param1:String, param2:Function) : void
      {
         §"!P§.§0"2§(param1).addCallback(param2);
      }
      
      public static function §,w§(param1:String, param2:Function) : void
      {
         §"!P§.§0"2§(param1).§&z§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§return§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§'!a§)
         {
            if(§6!N§)
            {
               _loc4_ = "";
               Log.log("URL sending...");
               if(!§#"7§ || §#"7§ == "PHP")
               {
                  _loc4_ = §=&§.§@"X§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  Log.log(_loc4_);
               }
               else if(§#"7§ == "Google")
               {
                  _loc4_ = §=&§.§@"X§() + param1;
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
                  Log.log(_loc4_);
               }
            }
            _loc3_ = §"!P§.§0"2§(param1);
            if(_loc3_.§6!h§())
            {
               §=&§.sendRequest(param1,param2);
            }
            else
            {
               Log.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            Log.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function enable() : void
      {
         §'!a§ = true;
         §=&§.§&#>§();
      }
      
      public static function disable() : void
      {
         §'!a§ = false;
         §=&§.§,#U§();
      }
      
      public static function isEnabled() : Boolean
      {
         return §'!a§;
      }
      
      public static function §9!j§(param1:String) : void
      {
         §"!P§.§0"2§(param1).§1#V§(true);
      }
      
      public static function §=#G§(param1:String) : void
      {
         §"!P§.§0"2§(param1).§1#V§(false);
      }
      
      public static function §?"c§() : String
      {
         return §=&§.§@"X§();
      }
      
      public static function §;!=§() : Boolean
      {
         return §7"'§ != null;
      }
   }
}
