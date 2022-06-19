package §<[§
{
   import §&N§.§@,§;
   
   public class §[!#§
   {
      
      private static var §6v§:§=!@§;
      
      private static var §+!J§:§<!1§;
      
      private static var § =§:Boolean = true;
      
      public static var §6!8§:String = "";
      
      public static var §%0§:XML;
      
      public static var §-!H§:XML;
      
      public static const §4G§:Boolean = true;
       
      
      public function §[!#§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§%0§ == null)
         {
            §@,§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §>§(param1,§%0§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §>§(§%0§.Default[0].toString(),§%0§);
         }
         §@,§.log("Using connection profile:" + _loc2_.Id[0]);
         §-!H§ = _loc2_;
         var _loc3_:Class = §]r§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §=y§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §6!8§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §6v§ = new _loc3_(_loc6_,_loc5_);
         §+!J§ = new _loc4_();
         §6v§.§+2§(§+!J§.§<P§,§+!J§.§try §);
      }
      
      public static function §>§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §%0§.Connection)
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
      
      public static function §=S§() : XML
      {
         if(§-!H§ == null || !§-!H§.Directories)
         {
            return null;
         }
         return §-!H§.Directories[0];
      }
      
      public static function §&P§(param1:String, param2:Function = null) : void
      {
         §+!J§.§&P§(param1,param2);
      }
      
      public static function §9!D§(param1:String, param2:Function) : void
      {
         §+!J§.§"!Y§(param1).addCallback(param2);
      }
      
      public static function §@C§(param1:String, param2:Function) : void
      {
         §+!J§.§"!Y§(param1).§@_§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§0_§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§ =§)
         {
            if(§4G§)
            {
               _loc4_ = "";
               §@,§.log("URL sending...");
               if(!§6!8§ || §6!8§ == "PHP")
               {
                  _loc4_ = §6v§.§%h§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §@,§.log(_loc4_);
               }
               else if(§6!8§ == "Google")
               {
                  _loc4_ = §6v§.§%h§() + param1;
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
                  §@,§.log(_loc4_);
               }
            }
            _loc3_ = §+!J§.§"!Y§(param1);
            if(_loc3_.§&s§())
            {
               §6v§.sendRequest(param1,param2);
            }
            else
            {
               §@,§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §@,§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §>!;§() : void
      {
         § =§ = true;
         §6v§.§=!U§();
      }
      
      public static function §2A§() : void
      {
         § =§ = false;
         §6v§.§7^§();
      }
      
      public static function §;!I§() : Boolean
      {
         return § =§;
      }
      
      public static function §?§(param1:String) : void
      {
         §+!J§.§"!Y§(param1).§5!$§(true);
      }
      
      public static function §-!'§(param1:String) : void
      {
         §+!J§.§"!Y§(param1).§5!$§(false);
      }
      
      public static function §-!F§() : String
      {
         return §6v§.§%h§();
      }
      
      public static function §?!;§() : Boolean
      {
         return §%0§ != null;
      }
   }
}
