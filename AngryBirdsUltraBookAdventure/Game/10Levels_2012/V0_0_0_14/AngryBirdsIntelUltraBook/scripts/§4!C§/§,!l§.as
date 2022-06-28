package §4!C§
{
   import §6z§.§[g§;
   
   public class §,!l§
   {
      
      private static var §30§:§-!i§;
      
      private static var §5o§:§7b§;
      
      private static var §3i§:Boolean = true;
      
      public static var §%T§:String = "";
      
      public static var §'N§:XML;
      
      public static var §8!q§:XML;
      
      public static const §'![§:Boolean = true;
       
      
      public function §,!l§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§'N§ == null)
         {
            §[g§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §5y§(param1,§'N§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §5y§(§'N§.Default[0].toString(),§'N§);
         }
         §[g§.log("Using connection profile:" + _loc2_.Id[0]);
         §8!q§ = _loc2_;
         var _loc3_:Class = §-§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §%!@§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §%T§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §30§ = new _loc3_(_loc6_,_loc5_);
         §5o§ = new _loc4_();
         §30§.§^9§(§5o§.§8Z§,§5o§.§5!<§);
      }
      
      public static function §5y§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §'N§.Connection)
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
      
      public static function §"!D§() : XML
      {
         if(§8!q§ == null || !§8!q§.Directories)
         {
            return null;
         }
         return §8!q§.Directories[0];
      }
      
      public static function §1!,§(param1:String, param2:Function = null) : void
      {
         §5o§.§1!,§(param1,param2);
      }
      
      public static function §!J§(param1:String, param2:Function) : void
      {
         §5o§.§;!A§(param1).addCallback(param2);
      }
      
      public static function §`z§(param1:String, param2:Function) : void
      {
         §5o§.§;!A§(param1).§^!D§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§!!^§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§3i§)
         {
            if(§'![§)
            {
               _loc4_ = "";
               §[g§.log("URL sending...");
               if(!§%T§ || §%T§ == "PHP")
               {
                  _loc4_ = §30§.§8! §() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §[g§.log(_loc4_);
               }
               else if(§%T§ == "Google")
               {
                  _loc4_ = §30§.§8! §() + param1;
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
                  §[g§.log(_loc4_);
               }
            }
            _loc3_ = §5o§.§;!A§(param1);
            if(_loc3_.§>%§())
            {
               §30§.sendRequest(param1,param2);
            }
            else
            {
               §[g§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §[g§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §+;§() : void
      {
         §3i§ = true;
         §30§.§>T§();
      }
      
      public static function §-!y§() : void
      {
         §3i§ = false;
         §30§.§0s§();
      }
      
      public static function §?!'§() : Boolean
      {
         return §3i§;
      }
      
      public static function §4!+§(param1:String) : void
      {
         §5o§.§;!A§(param1).§]Q§(true);
      }
      
      public static function §"!$§(param1:String) : void
      {
         §5o§.§;!A§(param1).§]Q§(false);
      }
      
      public static function §<!V§() : String
      {
         return §30§.§8! §();
      }
      
      public static function §9e§() : Boolean
      {
         return §'N§ != null;
      }
   }
}
