package §;!5§
{
   import §^_§.§!>§;
   
   public class §5>§
   {
      
      private static var §@k§:§9!H§;
      
      private static var §=!P§:§!+§;
      
      private static var §&V§:Boolean = true;
      
      public static var §^!L§:String = "";
      
      public static var §-!b§:XML;
      
      public static var §[?§:XML;
      
      public static const §=!r§:Boolean = true;
       
      
      public function §5>§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§-!b§ == null)
         {
            §!>§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §8!m§(param1,§-!b§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §8!m§(§-!b§.Default[0].toString(),§-!b§);
         }
         §!>§.log("Using connection profile:" + _loc2_.Id[0]);
         §[?§ = _loc2_;
         var _loc3_:Class = §6t§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §4U§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §^!L§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §@k§ = new _loc3_(_loc6_,_loc5_);
         §=!P§ = new _loc4_();
         §@k§.§@;§(§=!P§.§2>§,§=!P§.§3'§);
      }
      
      public static function §8!m§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §-!b§.Connection)
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
      
      public static function §?T§() : XML
      {
         if(§[?§ == null || !§[?§.Directories)
         {
            return null;
         }
         return §[?§.Directories[0];
      }
      
      public static function §7Y§(param1:String, param2:Function = null) : void
      {
         §=!P§.§7Y§(param1,param2);
      }
      
      public static function §8'§(param1:String, param2:Function) : void
      {
         §=!P§.§6!0§(param1).addCallback(param2);
      }
      
      public static function §<L§(param1:String, param2:Function) : void
      {
         §=!P§.§6!0§(param1).§<a§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§,e§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§&V§)
         {
            if(§=!r§)
            {
               _loc4_ = "";
               §!>§.log("URL sending...");
               if(!§^!L§ || §^!L§ == "PHP")
               {
                  _loc4_ = §@k§.§#!;§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §!>§.log(_loc4_);
               }
               else if(§^!L§ == "Google")
               {
                  _loc4_ = §@k§.§#!;§() + param1;
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
                  §!>§.log(_loc4_);
               }
            }
            _loc3_ = §=!P§.§6!0§(param1);
            if(_loc3_.§#@§())
            {
               §@k§.sendRequest(param1,param2);
            }
            else
            {
               §!>§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §!>§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §#!<§() : void
      {
         §&V§ = true;
         §@k§.§!!C§();
      }
      
      public static function §!!s§() : void
      {
         §&V§ = false;
         §@k§.§97§();
      }
      
      public static function §3<§() : Boolean
      {
         return §&V§;
      }
      
      public static function §<l§(param1:String) : void
      {
         §=!P§.§6!0§(param1).§ var§(true);
      }
      
      public static function §+I§(param1:String) : void
      {
         §=!P§.§6!0§(param1).§ var§(false);
      }
      
      public static function §@!D§() : String
      {
         return §@k§.§#!;§();
      }
      
      public static function §"1§() : Boolean
      {
         return §-!b§ != null;
      }
   }
}
