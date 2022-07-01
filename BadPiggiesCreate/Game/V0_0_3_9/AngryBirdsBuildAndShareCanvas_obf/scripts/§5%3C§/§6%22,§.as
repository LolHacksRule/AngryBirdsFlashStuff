package §5<§
{
   import §@!;§.§&F§;
   
   public class §6",§
   {
      
      private static var §+!f§:§+T§;
      
      private static var §=!W§:§&A§;
      
      private static var §3;§:Boolean = true;
      
      public static var §8"%§:String = "";
      
      public static var §%3§:XML;
      
      public static var §9"§:XML;
      
      public static const §-!&§:Boolean = true;
       
      
      public function §6",§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§%3§ == null)
         {
            §&F§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §5M§(param1,§%3§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §5M§(§%3§.Default[0].toString(),§%3§);
         }
         §&F§.log("Using connection profile:" + _loc2_.Id[0]);
         §9"§ = _loc2_;
         var _loc3_:Class = §;!B§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §;!,§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §8"%§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §+!f§ = new _loc3_(_loc6_,_loc5_);
         §=!W§ = new _loc4_();
         §+!f§.§&i§(§=!W§.§#c§,§=!W§.§%!D§);
      }
      
      public static function §5M§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §%3§.Connection)
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
      
      public static function §>3§() : XML
      {
         if(§9"§ == null || !§9"§.Directories)
         {
            return null;
         }
         return §9"§.Directories[0];
      }
      
      public static function §,q§(param1:String, param2:Function = null) : void
      {
         §=!W§.§,q§(param1,param2);
      }
      
      public static function §9""§(param1:String, param2:Function) : void
      {
         §=!W§.§,6§(param1).addCallback(param2);
      }
      
      public static function §4f§(param1:String, param2:Function) : void
      {
         §=!W§.§,6§(param1).§0!'§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§5"!§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§3;§)
         {
            if(§-!&§)
            {
               _loc4_ = "";
               §&F§.log("URL sending...");
               if(!§8"%§ || §8"%§ == "PHP")
               {
                  _loc4_ = §+!f§.§!"-§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §&F§.log(_loc4_);
               }
               else if(§8"%§ == "Google")
               {
                  _loc4_ = §+!f§.§!"-§() + param1;
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
                  §&F§.log(_loc4_);
               }
            }
            _loc3_ = §=!W§.§,6§(param1);
            if(_loc3_.§;m§())
            {
               §+!f§.sendRequest(param1,param2);
            }
            else
            {
               §&F§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §&F§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §5!Z§() : void
      {
         §3;§ = true;
         §+!f§.§ !&§();
      }
      
      public static function §2!F§() : void
      {
         §3;§ = false;
         §+!f§.§!B§();
      }
      
      public static function §>!M§() : Boolean
      {
         return §3;§;
      }
      
      public static function §="4§(param1:String) : void
      {
         §=!W§.§,6§(param1).§?s§(true);
      }
      
      public static function §;!d§(param1:String) : void
      {
         §=!W§.§,6§(param1).§?s§(false);
      }
      
      public static function §%!X§() : String
      {
         return §+!f§.§!"-§();
      }
      
      public static function §6!X§() : Boolean
      {
         return §%3§ != null;
      }
   }
}
