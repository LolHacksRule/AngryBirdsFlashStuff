package §3"%§
{
   import §"I§.§=!U§;
   
   public class §>K§
   {
      
      private static var §-!d§:§7!=§;
      
      private static var §0m§:§&1§;
      
      private static var §6q§:Boolean = true;
      
      public static var §@9§:String = "";
      
      public static var §=-§:XML;
      
      public static var §5!1§:XML;
      
      public static const §>A§:Boolean = true;
       
      
      public function §>K§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§=-§ == null)
         {
            §=!U§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §=f§(param1,§=-§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §=f§(§=-§.Default[0].toString(),§=-§);
         }
         §=!U§.log("Using connection profile:" + _loc2_.Id[0]);
         §5!1§ = _loc2_;
         var _loc3_:Class = §[R§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §?t§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §@9§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §-!d§ = new _loc3_(_loc6_,_loc5_);
         §0m§ = new _loc4_();
         §-!d§.§-2§(§0m§.§7!J§,§0m§.§<!s§);
      }
      
      public static function §=f§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §=-§.Connection)
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
      
      public static function §-b§() : XML
      {
         if(§5!1§ == null || !§5!1§.Directories)
         {
            return null;
         }
         return §5!1§.Directories[0];
      }
      
      public static function §%!V§(param1:String, param2:Function = null) : void
      {
         §0m§.§%!V§(param1,param2);
      }
      
      public static function §9T§(param1:String, param2:Function) : void
      {
         §0m§.§!R§(param1).addCallback(param2);
      }
      
      public static function §#"1§(param1:String, param2:Function) : void
      {
         §0m§.§!R§(param1).§5J§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§["§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§6q§)
         {
            if(§>A§)
            {
               _loc4_ = "";
               §=!U§.log("URL sending...");
               if(!§@9§ || §@9§ == "PHP")
               {
                  _loc4_ = §-!d§.§?!;§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §=!U§.log(_loc4_);
               }
               else if(§@9§ == "Google")
               {
                  _loc4_ = §-!d§.§?!;§() + param1;
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
                  §=!U§.log(_loc4_);
               }
            }
            _loc3_ = §0m§.§!R§(param1);
            if(_loc3_.§;!B§())
            {
               §-!d§.sendRequest(param1,param2);
            }
            else
            {
               §=!U§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §=!U§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function enable() : void
      {
         §6q§ = true;
         §-!d§.§[!s§();
      }
      
      public static function disable() : void
      {
         §6q§ = false;
         §-!d§.§,U§();
      }
      
      public static function §&x§() : Boolean
      {
         return §6q§;
      }
      
      public static function §^!K§(param1:String) : void
      {
         §0m§.§!R§(param1).§default§(true);
      }
      
      public static function §#!t§(param1:String) : void
      {
         §0m§.§!R§(param1).§default§(false);
      }
      
      public static function §"!5§() : String
      {
         return §-!d§.§?!;§();
      }
      
      public static function §6!+§() : Boolean
      {
         return §=-§ != null;
      }
   }
}
