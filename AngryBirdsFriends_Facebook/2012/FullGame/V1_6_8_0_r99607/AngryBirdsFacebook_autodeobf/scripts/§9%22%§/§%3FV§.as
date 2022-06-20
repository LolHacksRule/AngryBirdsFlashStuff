package §9"%§
{
   import §0!?§.§'!$§;
   
   public class §?V§
   {
      
      private static var §6"<§:§!p§;
      
      private static var §>!§:§]">§;
      
      private static var §;!<§:Boolean = true;
      
      public static var §=w§:String = "";
      
      public static var §@"+§:XML;
      
      public static var §1C§:XML;
      
      public static const §+!w§:Boolean = true;
       
      
      public function §?V§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§@"+§ == null)
         {
            §'!$§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §6!]§(param1,§@"+§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §6!]§(§@"+§.Default[0].toString(),§@"+§);
         }
         §'!$§.log("Using connection profile:" + _loc2_.Id[0]);
         §1C§ = _loc2_;
         var _loc3_:Class = §]"2§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §3!p§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §=w§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §6"<§ = new _loc3_(_loc6_,_loc5_);
         §>!§ = new _loc4_();
         §6"<§.§ !x§(§>!§.§8!T§,§>!§.§^p§);
      }
      
      public static function §6!]§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §@"+§.Connection)
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
      
      public static function §9§() : XML
      {
         if(§1C§ == null || !§1C§.Directories)
         {
            return null;
         }
         return §1C§.Directories[0];
      }
      
      public static function §@!c§(param1:String, param2:Function = null) : void
      {
         §>!§.§@!c§(param1,param2);
      }
      
      public static function §""5§(param1:String, param2:Function) : void
      {
         §>!§.§0R§(param1).addCallback(param2);
      }
      
      public static function §+@§(param1:String, param2:Function) : void
      {
         §>!§.§0R§(param1).§-!N§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§8R§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§;!<§)
         {
            if(§+!w§)
            {
               _loc4_ = "";
               §'!$§.log("URL sending...");
               if(!§=w§ || §=w§ == "PHP")
               {
                  _loc4_ = §6"<§.§9!I§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §'!$§.log(_loc4_);
               }
               else if(§=w§ == "Google")
               {
                  _loc4_ = §6"<§.§9!I§() + param1;
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
                  §'!$§.log(_loc4_);
               }
            }
            _loc3_ = §>!§.§0R§(param1);
            if(_loc3_.§3!`§())
            {
               §6"<§.sendRequest(param1,param2);
            }
            else
            {
               §'!$§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §'!$§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §@x§() : void
      {
         §;!<§ = true;
         §6"<§.§?G§();
      }
      
      public static function §8">§() : void
      {
         §;!<§ = false;
         §6"<§.§4X§();
      }
      
      public static function §3!1§() : Boolean
      {
         return §;!<§;
      }
      
      public static function §^$§(param1:String) : void
      {
         §>!§.§0R§(param1).§>#§(true);
      }
      
      public static function §9"B§(param1:String) : void
      {
         §>!§.§0R§(param1).§>#§(false);
      }
      
      public static function §0!$§() : String
      {
         return §6"<§.§9!I§();
      }
      
      public static function §7z§() : Boolean
      {
         return §@"+§ != null;
      }
   }
}
