package §9!D§
{
   import §0i§.§]_§;
   
   public class §&!d§
   {
      
      private static var §#c§:§9H§;
      
      private static var §1!L§:§2!P§;
      
      private static var §8R§:Boolean = true;
      
      public static var §`;§:String = "";
      
      public static var §3b§:XML;
      
      public static var §>4§:XML;
      
      public static const §3-§:Boolean = true;
       
      
      public function §&!d§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§3b§ == null)
         {
            §]_§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §=!W§(param1,§3b§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §=!W§(§3b§.Default[0].toString(),§3b§);
         }
         §]_§.log("Using connection profile:" + _loc2_.Id[0]);
         §>4§ = _loc2_;
         var _loc3_:Class = §7J§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §`<§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §`;§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §#c§ = new _loc3_(_loc6_,_loc5_);
         §1!L§ = new _loc4_();
         §#c§.§0!+§(§1!L§.§0!>§,§1!L§.§=§);
      }
      
      public static function §=!W§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §3b§.Connection)
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
      
      public static function §3!8§() : XML
      {
         if(§>4§ == null || !§>4§.Directories)
         {
            return null;
         }
         return §>4§.Directories[0];
      }
      
      public static function §get §(param1:String, param2:Function = null) : void
      {
         §1!L§.§get §(param1,param2);
      }
      
      public static function §,P§(param1:String, param2:Function) : void
      {
         §1!L§.§]!0§(param1).addCallback(param2);
      }
      
      public static function § !-§(param1:String, param2:Function) : void
      {
         §1!L§.§]!0§(param1).§0!e§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§2>§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§8R§)
         {
            if(§3-§)
            {
               _loc4_ = "";
               §]_§.log("URL sending...");
               if(!§`;§ || §`;§ == "PHP")
               {
                  _loc4_ = §#c§.§7T§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §]_§.log(_loc4_);
               }
               else if(§`;§ == "Google")
               {
                  _loc4_ = §#c§.§7T§() + param1;
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
                  §]_§.log(_loc4_);
               }
            }
            _loc3_ = §1!L§.§]!0§(param1);
            if(_loc3_.§!!`§())
            {
               §#c§.sendRequest(param1,param2);
            }
            else
            {
               §]_§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §]_§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §2#§() : void
      {
         §8R§ = true;
         §#c§.§'!4§();
      }
      
      public static function §7<§() : void
      {
         §8R§ = false;
         §#c§.§[e§();
      }
      
      public static function §0s§() : Boolean
      {
         return §8R§;
      }
      
      public static function §@!f§(param1:String) : void
      {
         §1!L§.§]!0§(param1).§41§(true);
      }
      
      public static function §8;§(param1:String) : void
      {
         §1!L§.§]!0§(param1).§41§(false);
      }
      
      public static function §0!-§() : String
      {
         return §#c§.§7T§();
      }
      
      public static function §@!N§() : Boolean
      {
         return §3b§ != null;
      }
   }
}
