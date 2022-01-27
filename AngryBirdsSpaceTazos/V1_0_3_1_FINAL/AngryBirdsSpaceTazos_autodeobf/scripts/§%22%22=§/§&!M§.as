package §""=§
{
   import §6!C§.§6E§;
   
   public class §&!M§
   {
      
      private static var §[!#§:§=I§;
      
      private static var §]M§:§-h§;
      
      private static var §<!k§:Boolean = true;
      
      public static var §'!!§:String = "";
      
      public static var §,!>§:XML;
      
      public static var §8E§:XML;
      
      public static const §><§:Boolean = true;
       
      
      public function §&!M§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§,!>§ == null)
         {
            §6E§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §">§(param1,§,!>§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §">§(§,!>§.Default[0].toString(),§,!>§);
         }
         §6E§.log("Using connection profile:" + _loc2_.Id[0]);
         §8E§ = _loc2_;
         var _loc3_:Class = §9!;§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = § !F§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §'!!§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §[!#§ = new _loc3_(_loc6_,_loc5_);
         §]M§ = new _loc4_();
         §[!#§.§]"-§(§]M§.§2!0§,§]M§.§0!H§);
      }
      
      public static function §">§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §,!>§.Connection)
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
      
      public static function §5"=§() : XML
      {
         if(§8E§ == null || !§8E§.Directories)
         {
            return null;
         }
         return §8E§.Directories[0];
      }
      
      public static function §>3§(param1:String, param2:Function = null) : void
      {
         §]M§.§>3§(param1,param2);
      }
      
      public static function §8!j§(param1:String, param2:Function) : void
      {
         §]M§.§9!=§(param1).addCallback(param2);
      }
      
      public static function §`"8§(param1:String, param2:Function) : void
      {
         §]M§.§9!=§(param1).§,!g§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§0l§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§<!k§)
         {
            if(§><§)
            {
               _loc4_ = "";
               §6E§.log("URL sending...");
               if(!§'!!§ || §'!!§ == "PHP")
               {
                  _loc4_ = §[!#§.§1"7§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §6E§.log(_loc4_);
               }
               else if(§'!!§ == "Google")
               {
                  _loc4_ = §[!#§.§1"7§() + param1;
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
                  §6E§.log(_loc4_);
               }
            }
            _loc3_ = §]M§.§9!=§(param1);
            if(_loc3_.§=Y§())
            {
               §[!#§.sendRequest(param1,param2);
            }
            else
            {
               §6E§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §6E§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function enable() : void
      {
         §<!k§ = true;
         §[!#§.§]!L§();
      }
      
      public static function disable() : void
      {
         §<!k§ = false;
         §[!#§.§`!;§();
      }
      
      public static function §%D§() : Boolean
      {
         return §<!k§;
      }
      
      public static function §^!d§(param1:String) : void
      {
         §]M§.§9!=§(param1).§`G§(true);
      }
      
      public static function §?"C§(param1:String) : void
      {
         §]M§.§9!=§(param1).§`G§(false);
      }
      
      public static function §!r§() : String
      {
         return §[!#§.§1"7§();
      }
      
      public static function §2!7§() : Boolean
      {
         return §,!>§ != null;
      }
   }
}
