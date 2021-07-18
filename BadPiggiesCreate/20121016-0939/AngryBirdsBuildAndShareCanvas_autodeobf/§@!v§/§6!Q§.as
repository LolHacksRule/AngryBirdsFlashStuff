package §@!v§
{
   import §=!M§.§9!P§;
   
   public class §6!Q§
   {
      
      private static var §>"$§:§`y§;
      
      private static var §5>§:§9!2§;
      
      private static var §,! §:Boolean = true;
      
      public static var §7G§:String = "";
      
      public static var §6"-§:XML;
      
      public static var §"!e§:XML;
      
      public static const §[!J§:Boolean = true;
       
      
      public function §6!Q§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§6"-§ == null)
         {
            §9!P§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = § n§(param1,§6"-§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = § n§(§6"-§.Default[0].toString(),§6"-§);
         }
         §9!P§.log("Using connection profile:" + _loc2_.Id[0]);
         §"!e§ = _loc2_;
         var _loc3_:Class = §;^§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §const§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §7G§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §>"$§ = new _loc3_(_loc6_,_loc5_);
         §5>§ = new _loc4_();
         §>"$§.§8!s§(§5>§.§"p§,§5>§.§0d§);
      }
      
      public static function § n§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §6"-§.Connection)
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
      
      public static function §]!q§() : XML
      {
         if(§"!e§ == null || !§"!e§.Directories)
         {
            return null;
         }
         return §"!e§.Directories[0];
      }
      
      public static function §>c§(param1:String, param2:Function = null) : void
      {
         §5>§.§>c§(param1,param2);
      }
      
      public static function §<R§(param1:String, param2:Function) : void
      {
         §5>§.§&m§(param1).addCallback(param2);
      }
      
      public static function §2U§(param1:String, param2:Function) : void
      {
         §5>§.§&m§(param1).§^D§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§3y§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§,! §)
         {
            if(§[!J§)
            {
               _loc4_ = "";
               §9!P§.log("URL sending...");
               if(!§7G§ || §7G§ == "PHP")
               {
                  _loc4_ = §>"$§.§-"8§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §9!P§.log(_loc4_);
               }
               else if(§7G§ == "Google")
               {
                  _loc4_ = §>"$§.§-"8§() + param1;
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
                  §9!P§.log(_loc4_);
               }
            }
            _loc3_ = §5>§.§&m§(param1);
            if(_loc3_.§%!0§())
            {
               §>"$§.sendRequest(param1,param2);
            }
            else
            {
               §9!P§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §9!P§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §1!g§() : void
      {
         §,! § = true;
         §>"$§.§3$§();
      }
      
      public static function §3!Y§() : void
      {
         §,! § = false;
         §>"$§.§0!P§();
      }
      
      public static function §&!h§() : Boolean
      {
         return §,! §;
      }
      
      public static function §4!f§(param1:String) : void
      {
         §5>§.§&m§(param1).§1N§(true);
      }
      
      public static function §3P§(param1:String) : void
      {
         §5>§.§&m§(param1).§1N§(false);
      }
      
      public static function §`!2§() : String
      {
         return §>"$§.§-"8§();
      }
      
      public static function §1h§() : Boolean
      {
         return §6"-§ != null;
      }
   }
}
