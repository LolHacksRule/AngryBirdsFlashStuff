package §,!_§
{
   import §0"I§.§5!s§;
   
   public class §2"V§
   {
      
      private static var §!"9§:§%"l§;
      
      private static var §5#1§:§#"z§;
      
      private static var §9"R§:Boolean = true;
      
      public static var §=!A§:String = "";
      
      public static var §>2§:XML;
      
      public static var §9!T§:XML;
      
      public static const §`"^§:Boolean = true;
       
      
      public function §2"V§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§>2§ == null)
         {
            §5!s§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §!"]§(param1,§>2§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §!"]§(§>2§.Default[0].toString(),§>2§);
         }
         §5!s§.log("Using connection profile:" + _loc2_.Id[0]);
         §9!T§ = _loc2_;
         var _loc3_:Class = §!#'§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §<!J§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §=!A§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §!"9§ = new _loc3_(_loc6_,_loc5_);
         §5#1§ = new _loc4_();
         §!"9§.§1y§(§5#1§.§88§,§5#1§.§7"V§);
      }
      
      public static function §!"]§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §>2§.Connection)
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
      
      public static function §=!U§() : XML
      {
         if(§9!T§ == null || !§9!T§.Directories)
         {
            return null;
         }
         return §9!T§.Directories[0];
      }
      
      public static function §30§(param1:String, param2:Function = null) : void
      {
         §5#1§.§30§(param1,param2);
      }
      
      public static function §]!s§(param1:String, param2:Function) : void
      {
         §5#1§.§]![§(param1).addCallback(param2);
      }
      
      public static function §6h§(param1:String, param2:Function) : void
      {
         §5#1§.§]![§(param1).§0"<§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§0#!§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§9"R§)
         {
            if(§`"^§)
            {
               _loc4_ = "";
               §5!s§.log("URL sending...");
               if(!§=!A§ || §=!A§ == "PHP")
               {
                  _loc4_ = §!"9§.§3#0§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §5!s§.log(_loc4_);
               }
               else if(§=!A§ == "Google")
               {
                  _loc4_ = §!"9§.§3#0§() + param1;
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
                  §5!s§.log(_loc4_);
               }
            }
            _loc3_ = §5#1§.§]![§(param1);
            if(_loc3_.§;!C§())
            {
               §!"9§.sendRequest(param1,param2);
            }
            else
            {
               §5!s§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §5!s§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function enable() : void
      {
         §9"R§ = true;
         §!"9§.§],§();
      }
      
      public static function disable() : void
      {
         §9"R§ = false;
         §!"9§.§2"M§();
      }
      
      public static function isEnabled() : Boolean
      {
         return §9"R§;
      }
      
      public static function §]"g§(param1:String) : void
      {
         §5#1§.§]![§(param1).§<"Z§(true);
      }
      
      public static function §<#2§(param1:String) : void
      {
         §5#1§.§]![§(param1).§<"Z§(false);
      }
      
      public static function §`! §() : String
      {
         return §!"9§.§3#0§();
      }
      
      public static function §0!u§() : Boolean
      {
         return §>2§ != null;
      }
   }
}
