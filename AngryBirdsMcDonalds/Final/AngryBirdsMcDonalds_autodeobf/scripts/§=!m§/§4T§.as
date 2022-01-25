package §=!m§
{
   import §0i§.§4!%§;
   
   public class §4T§
   {
      
      private static var §%[§:§8G§;
      
      private static var §8O§:§;Z§;
      
      private static var §9!4§:Boolean = true;
      
      public static var §^C§:String = "";
      
      public static var §39§:XML;
      
      public static var §>y§:XML;
      
      public static const §18§:Boolean = true;
       
      
      public function §4T§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§39§ == null)
         {
            §4!%§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §"7§(param1,§39§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §"7§(§39§.Default[0].toString(),§39§);
         }
         §4!%§.log("Using connection profile:" + _loc2_.Id[0]);
         §>y§ = _loc2_;
         var _loc3_:Class = §,!F§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §]#§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §^C§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §%[§ = new _loc3_(_loc6_,_loc5_);
         §8O§ = new _loc4_();
         §%[§.§>A§(§8O§.§>!p§,§8O§.§<!7§);
      }
      
      public static function §"7§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §39§.Connection)
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
      
      public static function §^n§() : XML
      {
         if(§>y§ == null || !§>y§.Directories)
         {
            return null;
         }
         return §>y§.Directories[0];
      }
      
      public static function §[!+§(param1:String, param2:Function = null) : void
      {
         §8O§.§[!+§(param1,param2);
      }
      
      public static function §5!_§(param1:String, param2:Function) : void
      {
         §8O§.§"C§(param1).addCallback(param2);
      }
      
      public static function §1!;§(param1:String, param2:Function) : void
      {
         §8O§.§"C§(param1).§!W§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§9-§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§9!4§)
         {
            if(§18§)
            {
               _loc4_ = "";
               §4!%§.log("URL sending...");
               if(!§^C§ || §^C§ == "PHP")
               {
                  _loc4_ = §%[§.§2a§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §4!%§.log(_loc4_);
               }
               else if(§^C§ == "Google")
               {
                  _loc4_ = §%[§.§2a§() + param1;
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
                  §4!%§.log(_loc4_);
               }
            }
            _loc3_ = §8O§.§"C§(param1);
            if(_loc3_.§=M§())
            {
               §%[§.sendRequest(param1,param2);
            }
            else
            {
               §4!%§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §4!%§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §%!6§() : void
      {
         §9!4§ = true;
         §%[§.§2!A§();
      }
      
      public static function §]7§() : void
      {
         §9!4§ = false;
         §%[§.§2;§();
      }
      
      public static function §5o§() : Boolean
      {
         return §9!4§;
      }
      
      public static function §&N§(param1:String) : void
      {
         §8O§.§"C§(param1).§50§(true);
      }
      
      public static function §[!?§(param1:String) : void
      {
         §8O§.§"C§(param1).§50§(false);
      }
      
      public static function §+!1§() : String
      {
         return §%[§.§2a§();
      }
      
      public static function §5U§() : Boolean
      {
         return §39§ != null;
      }
   }
}
