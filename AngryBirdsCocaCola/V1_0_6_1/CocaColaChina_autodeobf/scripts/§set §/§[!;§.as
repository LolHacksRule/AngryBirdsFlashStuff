package §set §
{
   import §<!!§.§-"§;
   
   public class §[!;§
   {
      
      private static var §3!&§:§6+§;
      
      private static var §-r§:§#l§;
      
      private static var §case §:Boolean = true;
      
      public static var §8;§:String = "";
      
      public static var §4%§:XML;
      
      public static var §-!7§:XML;
      
      public static const §1!W§:Boolean = true;
       
      
      public function §[!;§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§4%§ == null)
         {
            §-"§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §`C§(param1,§4%§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §`C§(§4%§.Default[0].toString(),§4%§);
         }
         §-"§.log("Using connection profile:" + _loc2_.Id[0]);
         §-!7§ = _loc2_;
         var _loc3_:Class = §?7§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §21§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §8;§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §3!&§ = new _loc3_(_loc6_,_loc5_);
         §-r§ = new _loc4_();
         §3!&§.§[W§(§-r§.§4!-§,§-r§.§0T§);
      }
      
      public static function §`C§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §4%§.Connection)
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
      
      public static function §#!O§() : XML
      {
         if(§-!7§ == null || !§-!7§.Directories)
         {
            return null;
         }
         return §-!7§.Directories[0];
      }
      
      public static function §&&§(param1:String, param2:Function = null) : void
      {
         §-r§.§&&§(param1,param2);
      }
      
      public static function §,!R§(param1:String, param2:Function) : void
      {
         §-r§.§<X§(param1).addCallback(param2);
      }
      
      public static function §]!c§(param1:String, param2:Function) : void
      {
         §-r§.§<X§(param1).§8![§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§@!>§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§case §)
         {
            if(§1!W§)
            {
               _loc4_ = "";
               §-"§.log("URL sending...");
               if(!§8;§ || §8;§ == "PHP")
               {
                  _loc4_ = §3!&§.§`0§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §-"§.log(_loc4_);
               }
               else if(§8;§ == "Google")
               {
                  _loc4_ = §3!&§.§`0§() + param1;
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
                  §-"§.log(_loc4_);
               }
            }
            _loc3_ = §-r§.§<X§(param1);
            if(_loc3_.§+q§())
            {
               §3!&§.sendRequest(param1,param2);
            }
            else
            {
               §-"§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §-"§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §&!Y§() : void
      {
         §case § = true;
         §3!&§.§&d§();
      }
      
      public static function §2U§() : void
      {
         §case § = false;
         §3!&§.§3=§();
      }
      
      public static function §]Q§() : Boolean
      {
         return §case §;
      }
      
      public static function §%j§(param1:String) : void
      {
         §-r§.§<X§(param1).§47§(true);
      }
      
      public static function §#!U§(param1:String) : void
      {
         §-r§.§<X§(param1).§47§(false);
      }
      
      public static function §0!J§() : String
      {
         return §3!&§.§`0§();
      }
      
      public static function §6!9§() : Boolean
      {
         return §4%§ != null;
      }
   }
}
