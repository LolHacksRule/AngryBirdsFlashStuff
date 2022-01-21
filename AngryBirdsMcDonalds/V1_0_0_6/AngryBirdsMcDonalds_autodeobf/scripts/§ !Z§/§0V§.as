package § !Z§
{
   import §8<§.§<!7§;
   
   public class §0V§
   {
      
      private static var §[?§:§0q§;
      
      private static var §^]§:§>]§;
      
      private static var §0§:Boolean = true;
      
      public static var §^!>§:String = "";
      
      public static var §3p§:XML;
      
      public static var §0"§:XML;
      
      public static const §?!k§:Boolean = true;
       
      
      public function §0V§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§3p§ == null)
         {
            §<!7§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §]!2§(param1,§3p§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §]!2§(§3p§.Default[0].toString(),§3p§);
         }
         §<!7§.log("Using connection profile:" + _loc2_.Id[0]);
         §0"§ = _loc2_;
         var _loc3_:Class = §<7§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §'b§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §^!>§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §[?§ = new _loc3_(_loc6_,_loc5_);
         §^]§ = new _loc4_();
         §[?§.§>&§(§^]§.§%U§,§^]§.§9]§);
      }
      
      public static function §]!2§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §3p§.Connection)
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
      
      public static function §7h§() : XML
      {
         if(§0"§ == null || !§0"§.Directories)
         {
            return null;
         }
         return §0"§.Directories[0];
      }
      
      public static function §71§(param1:String, param2:Function = null) : void
      {
         §^]§.§71§(param1,param2);
      }
      
      public static function §#b§(param1:String, param2:Function) : void
      {
         §^]§.§8T§(param1).addCallback(param2);
      }
      
      public static function §,!P§(param1:String, param2:Function) : void
      {
         §^]§.§8T§(param1).§;!m§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§`r§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§0§)
         {
            if(§?!k§)
            {
               _loc4_ = "";
               §<!7§.log("URL sending...");
               if(!§^!>§ || §^!>§ == "PHP")
               {
                  _loc4_ = §[?§.§^H§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §<!7§.log(_loc4_);
               }
               else if(§^!>§ == "Google")
               {
                  _loc4_ = §[?§.§^H§() + param1;
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
                  §<!7§.log(_loc4_);
               }
            }
            _loc3_ = §^]§.§8T§(param1);
            if(_loc3_.§1!^§())
            {
               §[?§.sendRequest(param1,param2);
            }
            else
            {
               §<!7§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §<!7§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §%!6§() : void
      {
         §0§ = true;
         §[?§.§4w§();
      }
      
      public static function §6!U§() : void
      {
         §0§ = false;
         §[?§.§-]§();
      }
      
      public static function §6i§() : Boolean
      {
         return §0§;
      }
      
      public static function §#!7§(param1:String) : void
      {
         §^]§.§8T§(param1).§;x§(true);
      }
      
      public static function §0&§(param1:String) : void
      {
         §^]§.§8T§(param1).§;x§(false);
      }
      
      public static function §7B§() : String
      {
         return §[?§.§^H§();
      }
      
      public static function §+!H§() : Boolean
      {
         return §3p§ != null;
      }
   }
}
