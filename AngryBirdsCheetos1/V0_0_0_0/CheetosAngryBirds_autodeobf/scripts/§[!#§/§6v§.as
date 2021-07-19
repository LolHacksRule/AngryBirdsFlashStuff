package §[!#§
{
   import §@,§.§4h§;
   
   public class §6v§
   {
      
      private static var §+!J§:§]R§;
      
      private static var § =§:§5Y§;
      
      private static var §6!8§:Boolean = true;
      
      public static var §%0§:String = "";
      
      public static var §-!H§:XML;
      
      public static var §4G§:XML;
      
      public static const §>§:Boolean = true;
       
      
      public function §6v§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§-!H§ == null)
         {
            §4h§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §=S§(param1,§-!H§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §=S§(§-!H§.Default[0].toString(),§-!H§);
         }
         §4h§.log("Using connection profile:" + _loc2_.Id[0]);
         §4G§ = _loc2_;
         var _loc3_:Class = §<!I§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §#!M§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §%0§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §+!J§ = new _loc3_(_loc6_,_loc5_);
         § =§ = new _loc4_();
         §+!J§.§7^§(§ =§.§try §,§ =§.§#!S§);
      }
      
      public static function §=S§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §-!H§.Connection)
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
      
      public static function §&P§() : XML
      {
         if(§4G§ == null || !§4G§.Directories)
         {
            return null;
         }
         return §4G§.Directories[0];
      }
      
      public static function §9!D§(param1:String, param2:Function = null) : void
      {
         § =§.§9!D§(param1,param2);
      }
      
      public static function §@C§(param1:String, param2:Function) : void
      {
         § =§.§=y§(param1).addCallback(param2);
      }
      
      public static function §>!;§(param1:String, param2:Function) : void
      {
         § =§.§=y§(param1).§!9§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§-Z§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§6!8§)
         {
            if(§>§)
            {
               _loc4_ = "";
               §4h§.log("URL sending...");
               if(!§%0§ || §%0§ == "PHP")
               {
                  _loc4_ = §+!J§.§#F§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §4h§.log(_loc4_);
               }
               else if(§%0§ == "Google")
               {
                  _loc4_ = §+!J§.§#F§() + param1;
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
                  §4h§.log(_loc4_);
               }
            }
            _loc3_ = § =§.§=y§(param1);
            if(_loc3_.§@_§())
            {
               §+!J§.sendRequest(param1,param2);
            }
            else
            {
               §4h§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §4h§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §2A§() : void
      {
         §6!8§ = true;
         §+!J§.§<Q§();
      }
      
      public static function §;!I§() : void
      {
         §6!8§ = false;
         §+!J§.§=!U§();
      }
      
      public static function §?§() : Boolean
      {
         return §6!8§;
      }
      
      public static function §-!'§(param1:String) : void
      {
         § =§.§=y§(param1).§&s§(true);
      }
      
      public static function §-!F§(param1:String) : void
      {
         § =§.§=y§(param1).§&s§(false);
      }
      
      public static function §?!;§() : String
      {
         return §+!J§.§#F§();
      }
      
      public static function §]r§() : Boolean
      {
         return §-!H§ != null;
      }
   }
}
