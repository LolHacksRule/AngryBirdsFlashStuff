package §7X§
{
   import §"x§.§-8§;
   
   public class §^"§
   {
      
      private static var §=!1§:§!!%§;
      
      private static var §%4§:§-!w§;
      
      private static var §`!§:Boolean = true;
      
      public static var §+^§:String = "";
      
      public static var §3`§:XML;
      
      public static var §&N§:XML;
      
      public static const §=!j§:Boolean = true;
       
      
      public function §^"§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§3`§ == null)
         {
            §-8§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §#!A§(param1,§3`§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §#!A§(§3`§.Default[0].toString(),§3`§);
         }
         §-8§.log("Using connection profile:" + _loc2_.Id[0]);
         §&N§ = _loc2_;
         var _loc3_:Class = §69§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §"!5§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §+^§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §=!1§ = new _loc3_(_loc6_,_loc5_);
         §%4§ = new _loc4_();
         §=!1§.§%!@§(§%4§.§%z§,§%4§.§&!§);
      }
      
      public static function §#!A§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §3`§.Connection)
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
      
      public static function §07§() : XML
      {
         if(§&N§ == null || !§&N§.Directories)
         {
            return null;
         }
         return §&N§.Directories[0];
      }
      
      public static function §^!J§(param1:String, param2:Function = null) : void
      {
         §%4§.§^!J§(param1,param2);
      }
      
      public static function §>!W§(param1:String, param2:Function) : void
      {
         §%4§.§9w§(param1).addCallback(param2);
      }
      
      public static function §5!z§(param1:String, param2:Function) : void
      {
         §%4§.§9w§(param1).§&!0§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§1!u§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§`!§)
         {
            if(§=!j§)
            {
               _loc4_ = "";
               §-8§.log("URL sending...");
               if(!§+^§ || §+^§ == "PHP")
               {
                  _loc4_ = §=!1§.§&!j§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §-8§.log(_loc4_);
               }
               else if(§+^§ == "Google")
               {
                  _loc4_ = §=!1§.§&!j§() + param1;
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
                  §-8§.log(_loc4_);
               }
            }
            _loc3_ = §%4§.§9w§(param1);
            if(_loc3_.§ g§())
            {
               §=!1§.sendRequest(param1,param2);
            }
            else
            {
               §-8§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §-8§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §8C§() : void
      {
         §`!§ = true;
         §=!1§.§,!G§();
      }
      
      public static function §^!+§() : void
      {
         §`!§ = false;
         §=!1§.§;l§();
      }
      
      public static function §5h§() : Boolean
      {
         return §`!§;
      }
      
      public static function §']§(param1:String) : void
      {
         §%4§.§9w§(param1).§=!3§(true);
      }
      
      public static function §5!2§(param1:String) : void
      {
         §%4§.§9w§(param1).§=!3§(false);
      }
      
      public static function §<!W§() : String
      {
         return §=!1§.§&!j§();
      }
      
      public static function §]!x§() : Boolean
      {
         return §3`§ != null;
      }
   }
}
