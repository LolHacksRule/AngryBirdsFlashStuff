package §%!G§
{
   import §9"`§.§-"H§;
   
   public class §8##§
   {
      
      private static var §9!Z§:§2"Z§;
      
      private static var §0!H§:§^"b§;
      
      private static var §+#,§:Boolean = true;
      
      public static var § h§:String = "";
      
      public static var §`"B§:XML;
      
      public static var §;#7§:XML;
      
      public static const §3"'§:Boolean = true;
       
      
      public function §8##§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§`"B§ == null)
         {
            §-"H§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §<"&§(param1,§`"B§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §<"&§(§`"B§.Default[0].toString(),§`"B§);
         }
         §-"H§.log("Using connection profile:" + _loc2_.Id[0]);
         §;#7§ = _loc2_;
         var _loc3_:Class = §3h§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §7!o§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            § h§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §9!Z§ = new _loc3_(_loc6_,_loc5_);
         §0!H§ = new _loc4_();
         §9!Z§.§2"0§(§0!H§.§`!S§,§0!H§.§>e§);
      }
      
      public static function §<"&§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §`"B§.Connection)
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
      
      public static function §7m§() : XML
      {
         if(§;#7§ == null || !§;#7§.Directories)
         {
            return null;
         }
         return §;#7§.Directories[0];
      }
      
      public static function §#d§(param1:String, param2:Function = null) : void
      {
         §0!H§.§#d§(param1,param2);
      }
      
      public static function §`!t§(param1:String, param2:Function) : void
      {
         §0!H§.§ "m§(param1).addCallback(param2);
      }
      
      public static function §!-§(param1:String, param2:Function) : void
      {
         §0!H§.§ "m§(param1).§@"-§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§4!!§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§+#,§)
         {
            if(§3"'§)
            {
               _loc4_ = "";
               §-"H§.log("URL sending...");
               if(!§ h§ || § h§ == "PHP")
               {
                  _loc4_ = §9!Z§.§8"F§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §-"H§.log(_loc4_);
               }
               else if(§ h§ == "Google")
               {
                  _loc4_ = §9!Z§.§8"F§() + param1;
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
                  §-"H§.log(_loc4_);
               }
            }
            _loc3_ = §0!H§.§ "m§(param1);
            if(_loc3_.§'#&§())
            {
               §9!Z§.sendRequest(param1,param2);
            }
            else
            {
               §-"H§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §-"H§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function enable() : void
      {
         §+#,§ = true;
         §9!Z§.§1e§();
      }
      
      public static function disable() : void
      {
         §+#,§ = false;
         §9!Z§.§,!K§();
      }
      
      public static function isEnabled() : Boolean
      {
         return §+#,§;
      }
      
      public static function §?-§(param1:String) : void
      {
         §0!H§.§ "m§(param1).§3]§(true);
      }
      
      public static function §4"'§(param1:String) : void
      {
         §0!H§.§ "m§(param1).§3]§(false);
      }
      
      public static function §1"b§() : String
      {
         return §9!Z§.§8"F§();
      }
      
      public static function §14§() : Boolean
      {
         return §`"B§ != null;
      }
   }
}
