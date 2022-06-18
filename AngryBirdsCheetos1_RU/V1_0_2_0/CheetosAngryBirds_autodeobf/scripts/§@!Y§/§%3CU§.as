package §@!Y§
{
   import §=g§.§@!L§;
   
   public class §<U§
   {
      
      private static var §^!W§:§>u§;
      
      private static var §7!5§:§%!'§;
      
      private static var §`k§:Boolean = true;
      
      public static var §=u§:String = "";
      
      public static var §]!G§:XML;
      
      public static var §;s§:XML;
      
      public static const §9y§:Boolean = true;
       
      
      public function §<U§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§]!G§ == null)
         {
            §@!L§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §'`§(param1,§]!G§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §'`§(§]!G§.Default[0].toString(),§]!G§);
         }
         §@!L§.log("Using connection profile:" + _loc2_.Id[0]);
         §;s§ = _loc2_;
         var _loc3_:Class = §^!0§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §?k§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §=u§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §^!W§ = new _loc3_(_loc6_,_loc5_);
         §7!5§ = new _loc4_();
         §^!W§.§1E§(§7!5§.§60§,§7!5§.§%!I§);
      }
      
      public static function §'`§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §]!G§.Connection)
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
      
      public static function §+Z§() : XML
      {
         if(§;s§ == null || !§;s§.Directories)
         {
            return null;
         }
         return §;s§.Directories[0];
      }
      
      public static function §%!4§(param1:String, param2:Function = null) : void
      {
         §7!5§.§%!4§(param1,param2);
      }
      
      public static function §+R§(param1:String, param2:Function) : void
      {
         §7!5§.§7<§(param1).addCallback(param2);
      }
      
      public static function §5!=§(param1:String, param2:Function) : void
      {
         §7!5§.§7<§(param1).§6m§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§<M§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§`k§)
         {
            if(§9y§)
            {
               _loc4_ = "";
               §@!L§.log("URL sending...");
               if(!§=u§ || §=u§ == "PHP")
               {
                  _loc4_ = §^!W§.§4!J§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §@!L§.log(_loc4_);
               }
               else if(§=u§ == "Google")
               {
                  _loc4_ = §^!W§.§4!J§() + param1;
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
                  §@!L§.log(_loc4_);
               }
            }
            _loc3_ = §7!5§.§7<§(param1);
            if(_loc3_.§6O§())
            {
               §^!W§.sendRequest(param1,param2);
            }
            else
            {
               §@!L§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §@!L§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §4j§() : void
      {
         §`k§ = true;
         §^!W§.§"U§();
      }
      
      public static function §4v§() : void
      {
         §`k§ = false;
         §^!W§.§4!'§();
      }
      
      public static function §'!#§() : Boolean
      {
         return §`k§;
      }
      
      public static function §;!§(param1:String) : void
      {
         §7!5§.§7<§(param1).§]D§(true);
      }
      
      public static function §9!;§(param1:String) : void
      {
         §7!5§.§7<§(param1).§]D§(false);
      }
      
      public static function §%!Z§() : String
      {
         return §^!W§.§4!J§();
      }
      
      public static function §^7§() : Boolean
      {
         return §]!G§ != null;
      }
   }
}
