package §5!8§
{
   import §&W§.§7L§;
   
   public class §1u§
   {
      
      private static var §?7§:§7a§;
      
      private static var §63§:§?"4§;
      
      private static var §5m§:Boolean = true;
      
      public static var §%!U§:String = "";
      
      public static var §?w§:XML;
      
      public static var §2V§:XML;
      
      public static const §&!1§:Boolean = true;
       
      
      public function §1u§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§?w§ == null)
         {
            §7L§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = § Z§(param1,§?w§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = § Z§(§?w§.Default[0].toString(),§?w§);
         }
         §7L§.log("Using connection profile:" + _loc2_.Id[0]);
         §2V§ = _loc2_;
         var _loc3_:Class = §7!v§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §4a§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §%!U§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §?7§ = new _loc3_(_loc6_,_loc5_);
         §63§ = new _loc4_();
         §?7§.§6V§(§63§.§;e§,§63§.§^!=§);
      }
      
      public static function § Z§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §?w§.Connection)
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
      
      public static function §@t§() : XML
      {
         if(§2V§ == null || !§2V§.Directories)
         {
            return null;
         }
         return §2V§.Directories[0];
      }
      
      public static function §3v§(param1:String, param2:Function = null) : void
      {
         §63§.§3v§(param1,param2);
      }
      
      public static function §>!_§(param1:String, param2:Function) : void
      {
         §63§.§^!A§(param1).addCallback(param2);
      }
      
      public static function §2!e§(param1:String, param2:Function) : void
      {
         §63§.§^!A§(param1).§@§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§"!-§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§5m§)
         {
            if(§&!1§)
            {
               _loc4_ = "";
               §7L§.log("URL sending...");
               if(!§%!U§ || §%!U§ == "PHP")
               {
                  _loc4_ = §?7§.§>!G§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §7L§.log(_loc4_);
               }
               else if(§%!U§ == "Google")
               {
                  _loc4_ = §?7§.§>!G§() + param1;
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
                  §7L§.log(_loc4_);
               }
            }
            _loc3_ = §63§.§^!A§(param1);
            if(_loc3_.§%!E§())
            {
               §?7§.sendRequest(param1,param2);
            }
            else
            {
               §7L§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §7L§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §5!5§() : void
      {
         §5m§ = true;
         §?7§.§&o§();
      }
      
      public static function §#!6§() : void
      {
         §5m§ = false;
         §?7§.§?!2§();
      }
      
      public static function §6E§() : Boolean
      {
         return §5m§;
      }
      
      public static function §5!W§(param1:String) : void
      {
         §63§.§^!A§(param1).§@!2§(true);
      }
      
      public static function §!m§(param1:String) : void
      {
         §63§.§^!A§(param1).§@!2§(false);
      }
      
      public static function §>!M§() : String
      {
         return §?7§.§>!G§();
      }
      
      public static function §^!-§() : Boolean
      {
         return §?w§ != null;
      }
   }
}
