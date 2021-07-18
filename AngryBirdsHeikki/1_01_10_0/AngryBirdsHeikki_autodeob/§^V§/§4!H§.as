package §^V§
{
   import §@R§.§4,§;
   
   public class §4!H§
   {
      
      private static var §=!e§:§"e§;
      
      private static var §5!0§:§@s§;
      
      private static var §>!!§:Boolean = true;
      
      public static var §=!M§:String = "";
      
      public static var §4R§:XML;
      
      public static var §@!L§:XML;
      
      public static const §``§:Boolean = true;
       
      
      public function §4!H§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§4R§ == null)
         {
            §4,§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §4!!§(param1,§4R§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §4!!§(§4R§.Default[0].toString(),§4R§);
         }
         §4,§.log("Using connection profile:" + _loc2_.Id[0]);
         §@!L§ = _loc2_;
         var _loc3_:Class = §;#§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §?!A§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §=!M§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §=!e§ = new _loc3_(_loc6_,_loc5_);
         §5!0§ = new _loc4_();
         §=!e§.§]!]§(§5!0§.§0!<§,§5!0§.§=!U§);
      }
      
      public static function §4!!§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §4R§.Connection)
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
      
      public static function §`l§() : XML
      {
         if(§@!L§ == null || !§@!L§.Directories)
         {
            return null;
         }
         return §@!L§.Directories[0];
      }
      
      public static function §-%§(param1:String, param2:Function = null) : void
      {
         §5!0§.§-%§(param1,param2);
      }
      
      public static function §^!6§(param1:String, param2:Function) : void
      {
         §5!0§.§,S§(param1).addCallback(param2);
      }
      
      public static function §2!R§(param1:String, param2:Function) : void
      {
         §5!0§.§,S§(param1).§-=§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§;a§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§>!!§)
         {
            if(§``§)
            {
               _loc4_ = "";
               §4,§.log("URL sending...");
               if(!§=!M§ || §=!M§ == "PHP")
               {
                  _loc4_ = §=!e§.§%!'§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §4,§.log(_loc4_);
               }
               else if(§=!M§ == "Google")
               {
                  _loc4_ = §=!e§.§%!'§() + param1;
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
                  §4,§.log(_loc4_);
               }
            }
            _loc3_ = §5!0§.§,S§(param1);
            if(_loc3_.§+f§())
            {
               §=!e§.sendRequest(param1,param2);
            }
            else
            {
               §4,§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §4,§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §<!^§() : void
      {
         §>!!§ = true;
         §=!e§.§ !2§();
      }
      
      public static function §1>§() : void
      {
         §>!!§ = false;
         §=!e§.§&,§();
      }
      
      public static function §`L§() : Boolean
      {
         return §>!!§;
      }
      
      public static function §0v§(param1:String) : void
      {
         §5!0§.§,S§(param1).§?!L§(true);
      }
      
      public static function §8B§(param1:String) : void
      {
         §5!0§.§,S§(param1).§?!L§(false);
      }
      
      public static function §7!`§() : String
      {
         return §=!e§.§%!'§();
      }
      
      public static function §7!"§() : Boolean
      {
         return §4R§ != null;
      }
   }
}
