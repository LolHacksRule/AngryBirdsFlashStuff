package §@k§
{
   import §%t§.§@!%§;
   
   public class §5!D§
   {
      
      private static var §7!V§:§`>§;
      
      private static var §8V§:§6!G§;
      
      private static var §-!W§:Boolean = true;
      
      public static var §=!M§:String = "";
      
      public static var §&5§:XML;
      
      public static var §-L§:XML;
      
      public static const §1!`§:Boolean = true;
       
      
      public function §5!D§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§&5§ == null)
         {
            §@!%§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §<%§(param1,§&5§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §<%§(§&5§.Default[0].toString(),§&5§);
         }
         §@!%§.log("Using connection profile:" + _loc2_.Id[0]);
         §-L§ = _loc2_;
         var _loc3_:Class = §9+§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §<N§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §=!M§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §7!V§ = new _loc3_(_loc6_,_loc5_);
         §8V§ = new _loc4_();
         §7!V§.§2_§(§8V§.§+8§,§8V§.§%H§);
      }
      
      public static function §<%§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §&5§.Connection)
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
      
      public static function §9'§() : XML
      {
         if(§-L§ == null || !§-L§.Directories)
         {
            return null;
         }
         return §-L§.Directories[0];
      }
      
      public static function §3!;§(param1:String, param2:Function = null) : void
      {
         §8V§.§3!;§(param1,param2);
      }
      
      public static function §3i§(param1:String, param2:Function) : void
      {
         §8V§.§]D§(param1).addCallback(param2);
      }
      
      public static function §`A§(param1:String, param2:Function) : void
      {
         §8V§.§]D§(param1).§&&§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§4p§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§-!W§)
         {
            if(§1!`§)
            {
               _loc4_ = "";
               §@!%§.log("URL sending...");
               if(!§=!M§ || §=!M§ == "PHP")
               {
                  _loc4_ = §7!V§.§4T§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §@!%§.log(_loc4_);
               }
               else if(§=!M§ == "Google")
               {
                  _loc4_ = §7!V§.§4T§() + param1;
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
                  §@!%§.log(_loc4_);
               }
            }
            _loc3_ = §8V§.§]D§(param1);
            if(_loc3_.§3!R§())
            {
               §7!V§.sendRequest(param1,param2);
            }
            else
            {
               §@!%§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §@!%§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §1$§() : void
      {
         §-!W§ = true;
         §7!V§.§ F§();
      }
      
      public static function §`!$§() : void
      {
         §-!W§ = false;
         §7!V§.§"!'§();
      }
      
      public static function §=D§() : Boolean
      {
         return §-!W§;
      }
      
      public static function §>F§(param1:String) : void
      {
         §8V§.§]D§(param1).§!L§(true);
      }
      
      public static function §7>§(param1:String) : void
      {
         §8V§.§]D§(param1).§!L§(false);
      }
      
      public static function §0q§() : String
      {
         return §7!V§.§4T§();
      }
      
      public static function §2n§() : Boolean
      {
         return §&5§ != null;
      }
   }
}
