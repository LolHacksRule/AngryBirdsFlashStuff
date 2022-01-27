package §8!i§
{
   import §`!w§.§^!$§;
   
   public class §>j§
   {
      
      private static var §#%§:§true §;
      
      private static var §+"$§:§&!1§;
      
      private static var §0!'§:Boolean = true;
      
      public static var §2!D§:String = "";
      
      public static var §%N§:XML;
      
      public static var § !m§:XML;
      
      public static const §2"#§:Boolean = true;
       
      
      public function §>j§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§%N§ == null)
         {
            §^!$§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §^E§(param1,§%N§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §^E§(§%N§.Default[0].toString(),§%N§);
         }
         §^!$§.log("Using connection profile:" + _loc2_.Id[0]);
         § !m§ = _loc2_;
         var _loc3_:Class = §=!E§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §6!c§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §2!D§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §#%§ = new _loc3_(_loc6_,_loc5_);
         §+"$§ = new _loc4_();
         §#%§.§1" §(§+"$§.§<T§,§+"$§.§^!Z§);
      }
      
      public static function §^E§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §%N§.Connection)
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
      
      public static function §8"%§() : XML
      {
         if(§ !m§ == null || !§ !m§.Directories)
         {
            return null;
         }
         return § !m§.Directories[0];
      }
      
      public static function §"!W§(param1:String, param2:Function = null) : void
      {
         §+"$§.§"!W§(param1,param2);
      }
      
      public static function §2"%§(param1:String, param2:Function) : void
      {
         §+"$§.§7!l§(param1).addCallback(param2);
      }
      
      public static function §&P§(param1:String, param2:Function) : void
      {
         §+"$§.§7!l§(param1).§8"3§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§;k§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§0!'§)
         {
            if(§2"#§)
            {
               _loc4_ = "";
               §^!$§.log("URL sending...");
               if(!§2!D§ || §2!D§ == "PHP")
               {
                  _loc4_ = §#%§.§+h§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §^!$§.log(_loc4_);
               }
               else if(§2!D§ == "Google")
               {
                  _loc4_ = §#%§.§+h§() + param1;
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
                  §^!$§.log(_loc4_);
               }
            }
            _loc3_ = §+"$§.§7!l§(param1);
            if(_loc3_.§^">§())
            {
               §#%§.sendRequest(param1,param2);
            }
            else
            {
               §^!$§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §^!$§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function enable() : void
      {
         §0!'§ = true;
         §#%§.§2!p§();
      }
      
      public static function disable() : void
      {
         §0!'§ = false;
         §#%§.§'u§();
      }
      
      public static function § "9§() : Boolean
      {
         return §0!'§;
      }
      
      public static function §1%§(param1:String) : void
      {
         §+"$§.§7!l§(param1).§!a§(true);
      }
      
      public static function §!=§(param1:String) : void
      {
         §+"$§.§7!l§(param1).§!a§(false);
      }
      
      public static function §@!$§() : String
      {
         return §#%§.§+h§();
      }
      
      public static function §"!5§() : Boolean
      {
         return §%N§ != null;
      }
   }
}
