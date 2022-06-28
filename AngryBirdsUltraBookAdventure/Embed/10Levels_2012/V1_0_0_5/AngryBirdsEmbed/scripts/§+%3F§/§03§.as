package §+?§
{
   import §+!"§.§5!<§;
   
   public class §03§
   {
      
      private static var §%z§:§2V§;
      
      private static var § y§:§#!?§;
      
      private static var §>k§:Boolean = true;
      
      public static var §]7§:String = "";
      
      public static var §&Z§:XML;
      
      public static var §>1§:XML;
      
      public static const §[U§:Boolean = true;
       
      
      public function §03§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§&Z§ == null)
         {
            §5!<§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §4P§(param1,§&Z§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §4P§(§&Z§.Default[0].toString(),§&Z§);
         }
         §5!<§.log("Using connection profile:" + _loc2_.Id[0]);
         §>1§ = _loc2_;
         var _loc3_:Class = §+X§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §+c§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §]7§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §%z§ = new _loc3_(_loc6_,_loc5_);
         § y§ = new _loc4_();
         §%z§.§[!0§(§ y§.§'C§,§ y§.§@!3§);
      }
      
      public static function §4P§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §&Z§.Connection)
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
      
      public static function §3!-§() : XML
      {
         if(§>1§ == null || !§>1§.Directories)
         {
            return null;
         }
         return §>1§.Directories[0];
      }
      
      public static function §7j§(param1:String, param2:Function = null) : void
      {
         § y§.§7j§(param1,param2);
      }
      
      public static function §6L§(param1:String, param2:Function) : void
      {
         § y§.§9n§(param1).addCallback(param2);
      }
      
      public static function §65§(param1:String, param2:Function) : void
      {
         § y§.§9n§(param1).§?`§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§8T§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§>k§)
         {
            if(§[U§)
            {
               _loc4_ = "";
               §5!<§.log("URL sending...");
               if(!§]7§ || §]7§ == "PHP")
               {
                  _loc4_ = §%z§.§'y§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §5!<§.log(_loc4_);
               }
               else if(§]7§ == "Google")
               {
                  _loc4_ = §%z§.§'y§() + param1;
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
                  §5!<§.log(_loc4_);
               }
            }
            _loc3_ = § y§.§9n§(param1);
            if(_loc3_.§]v§())
            {
               §%z§.sendRequest(param1,param2);
            }
            else
            {
               §5!<§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §5!<§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §;Z§() : void
      {
         §>k§ = true;
         §%z§.§6!H§();
      }
      
      public static function §7?§() : void
      {
         §>k§ = false;
         §%z§.§,M§();
      }
      
      public static function §`9§() : Boolean
      {
         return §>k§;
      }
      
      public static function §>!B§(param1:String) : void
      {
         § y§.§9n§(param1).§0[§(true);
      }
      
      public static function §-X§(param1:String) : void
      {
         § y§.§9n§(param1).§0[§(false);
      }
      
      public static function §3!;§() : String
      {
         return §%z§.§'y§();
      }
      
      public static function §&;§() : Boolean
      {
         return §&Z§ != null;
      }
   }
}
