package §<@§
{
   import §3!O§.§5q§;
   
   public class §^m§
   {
      
      private static var §-M§:§@w§;
      
      private static var §%!D§:§>!9§;
      
      private static var §&h§:Boolean = true;
      
      public static var §0-§:String = "";
      
      public static var §9B§:XML;
      
      public static var §22§:XML;
      
      public static const §>!#§:Boolean = true;
       
      
      public function §^m§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§9B§ == null)
         {
            §5q§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §>!$§(param1,§9B§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §>!$§(§9B§.Default[0].toString(),§9B§);
         }
         §5q§.log("Using connection profile:" + _loc2_.Id[0]);
         §22§ = _loc2_;
         var _loc3_:Class = §`!J§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §;1§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §0-§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §-M§ = new _loc3_(_loc6_,_loc5_);
         §%!D§ = new _loc4_();
         §-M§.§,v§(§%!D§.§ !%§,§%!D§.§`!4§);
      }
      
      public static function §>!$§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §9B§.Connection)
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
      
      public static function §`!$§() : XML
      {
         if(§22§ == null || !§22§.Directories)
         {
            return null;
         }
         return §22§.Directories[0];
      }
      
      public static function §,_§(param1:String, param2:Function = null) : void
      {
         §%!D§.§,_§(param1,param2);
      }
      
      public static function §;g§(param1:String, param2:Function) : void
      {
         §%!D§.§[k§(param1).addCallback(param2);
      }
      
      public static function §,!E§(param1:String, param2:Function) : void
      {
         §%!D§.§[k§(param1).§>c§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§&6§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§&h§)
         {
            if(§>!#§)
            {
               _loc4_ = "";
               §5q§.log("URL sending...");
               if(!§0-§ || §0-§ == "PHP")
               {
                  _loc4_ = §-M§.§`"§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §5q§.log(_loc4_);
               }
               else if(§0-§ == "Google")
               {
                  _loc4_ = §-M§.§`"§() + param1;
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
                  §5q§.log(_loc4_);
               }
            }
            _loc3_ = §%!D§.§[k§(param1);
            if(_loc3_.§!!'§())
            {
               §-M§.sendRequest(param1,param2);
            }
            else
            {
               §5q§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §5q§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §&!&§() : void
      {
         §&h§ = true;
         §-M§.§+!§();
      }
      
      public static function §?t§() : void
      {
         §&h§ = false;
         §-M§.§,!I§();
      }
      
      public static function §]! §() : Boolean
      {
         return §&h§;
      }
      
      public static function §,1§(param1:String) : void
      {
         §%!D§.§[k§(param1).§[W§(true);
      }
      
      public static function §5!F§(param1:String) : void
      {
         §%!D§.§[k§(param1).§[W§(false);
      }
      
      public static function §[!4§() : String
      {
         return §-M§.§`"§();
      }
      
      public static function §!!B§() : Boolean
      {
         return §9B§ != null;
      }
   }
}
