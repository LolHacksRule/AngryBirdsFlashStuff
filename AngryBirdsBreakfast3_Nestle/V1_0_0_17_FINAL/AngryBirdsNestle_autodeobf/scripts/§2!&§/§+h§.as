package §2!&§
{
   import §24§.;
   
   public class §+h§
   {
      
      private static var §%!q§:§<!B§;
      
      private static var §9!0§:§+!V§;
      
      private static var §-!l§:Boolean = true;
      
      public static var §-z§:String = "";
      
      public static var §;=§:XML;
      
      public static var §9!v§:XML;
      
      public static const §'!C§:Boolean = true;
       
      
      public function §+h§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§;=§ == null)
         {
            §#7§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §0v§(param1,§;=§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §0v§(§;=§.Default[0].toString(),§;=§);
         }
         §#7§.log("Using connection profile:" + _loc2_.Id[0]);
         §9!v§ = _loc2_;
         var _loc3_:Class = §-"%§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §&!j§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §-z§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §%!q§ = new _loc3_(_loc6_,_loc5_);
         §9!0§ = new _loc4_();
         §%!q§.§9!o§(§9!0§.§2=§,§9!0§.§#8§);
      }
      
      public static function §0v§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §;=§.Connection)
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
      
      public static function §^!W§() : XML
      {
         if(§9!v§ == null || !§9!v§.Directories)
         {
            return null;
         }
         return §9!v§.Directories[0];
      }
      
      public static function §2!W§(param1:String, param2:Function = null) : void
      {
         §9!0§.§2!W§(param1,param2);
      }
      
      public static function §8L§(param1:String, param2:Function) : void
      {
         §9!0§.§;C§(param1).addCallback(param2);
      }
      
      public static function §!!4§(param1:String, param2:Function) : void
      {
         §9!0§.§;C§(param1).§[u§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§?M§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§-!l§)
         {
            if(§'!C§)
            {
               _loc4_ = "";
               §#7§.log("URL sending...");
               if(!§-z§ || §-z§ == "PHP")
               {
                  _loc4_ = §%!q§.§8!=§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §#7§.log(_loc4_);
               }
               else if(§-z§ == "Google")
               {
                  _loc4_ = §%!q§.§8!=§() + param1;
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
                  §#7§.log(_loc4_);
               }
            }
            _loc3_ = §9!0§.§;C§(param1);
            if(_loc3_.§5"5§())
            {
               §%!q§.sendRequest(param1,param2);
            }
            else
            {
               §#7§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §#7§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function enable() : void
      {
         §-!l§ = true;
         §%!q§.§ !Y§();
      }
      
      public static function disable() : void
      {
         §-!l§ = false;
         §%!q§.§&"1§();
      }
      
      public static function §5!W§() : Boolean
      {
         return §-!l§;
      }
      
      public static function §&2§(param1:String) : void
      {
         §9!0§.§;C§(param1).§!"&§(true);
      }
      
      public static function §!"#§(param1:String) : void
      {
         §9!0§.§;C§(param1).§!"&§(false);
      }
      
      public static function §7! §() : String
      {
         return §%!q§.§8!=§();
      }
      
      public static function §#",§() : Boolean
      {
         return §;=§ != null;
      }
   }
}
