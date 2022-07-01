package §45§
{
   import §;X§.§ do§;
   
   public class §@"'§
   {
      
      private static var §6!F§:§6!^§;
      
      private static var §3#§:§4p§;
      
      private static var §`!_§:Boolean = true;
      
      public static var §'!j§:String = "";
      
      public static var §=j§:XML;
      
      public static var § !O§:XML;
      
      public static const §;!?§:Boolean = true;
       
      
      public function §@"'§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§=j§ == null)
         {
            § do§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §]"1§(param1,§=j§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §]"1§(§=j§.Default[0].toString(),§=j§);
         }
         § do§.log("Using connection profile:" + _loc2_.Id[0]);
         § !O§ = _loc2_;
         var _loc3_:Class = §[D§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §^K§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §'!j§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §6!F§ = new _loc3_(_loc6_,_loc5_);
         §3#§ = new _loc4_();
         §6!F§.§>s§(§3#§.§0n§,§3#§.§+!0§);
      }
      
      public static function §]"1§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §=j§.Connection)
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
      
      public static function §%!I§() : XML
      {
         if(§ !O§ == null || !§ !O§.Directories)
         {
            return null;
         }
         return § !O§.Directories[0];
      }
      
      public static function §1!N§(param1:String, param2:Function = null) : void
      {
         §3#§.§1!N§(param1,param2);
      }
      
      public static function §-7§(param1:String, param2:Function) : void
      {
         §3#§.§0!-§(param1).addCallback(param2);
      }
      
      public static function §1!0§(param1:String, param2:Function) : void
      {
         §3#§.§0!-§(param1).§1!X§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§[!'§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§`!_§)
         {
            if(§;!?§)
            {
               _loc4_ = "";
               § do§.log("URL sending...");
               if(!§'!j§ || §'!j§ == "PHP")
               {
                  _loc4_ = §6!F§.§`!k§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  § do§.log(_loc4_);
               }
               else if(§'!j§ == "Google")
               {
                  _loc4_ = §6!F§.§`!k§() + param1;
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
                  § do§.log(_loc4_);
               }
            }
            _loc3_ = §3#§.§0!-§(param1);
            if(_loc3_.§2!t§())
            {
               §6!F§.sendRequest(param1,param2);
            }
            else
            {
               § do§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            § do§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §@Y§() : void
      {
         §`!_§ = true;
         §6!F§.§=h§();
      }
      
      public static function §0-§() : void
      {
         §`!_§ = false;
         §6!F§.§4!§();
      }
      
      public static function § "1§() : Boolean
      {
         return §`!_§;
      }
      
      public static function §9!6§(param1:String) : void
      {
         §3#§.§0!-§(param1).§7!"§(true);
      }
      
      public static function §"B§(param1:String) : void
      {
         §3#§.§0!-§(param1).§7!"§(false);
      }
      
      public static function §`s§() : String
      {
         return §6!F§.§`!k§();
      }
      
      public static function §,d§() : Boolean
      {
         return §=j§ != null;
      }
   }
}
