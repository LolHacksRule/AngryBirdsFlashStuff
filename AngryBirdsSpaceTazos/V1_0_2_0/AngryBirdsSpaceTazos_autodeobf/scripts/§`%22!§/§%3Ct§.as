package §`"!§
{
   import §""<§.§#N§;
   
   public class §<t§
   {
      
      private static var §<!L§:§"!V§;
      
      private static var §;!A§:§@!5§;
      
      private static var §;!N§:Boolean = true;
      
      public static var §`w§:String = "";
      
      public static var §"!F§:XML;
      
      public static var §5q§:XML;
      
      public static const §1"H§:Boolean = true;
       
      
      public function §<t§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§"!F§ == null)
         {
            §#N§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §9d§(param1,§"!F§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §9d§(§"!F§.Default[0].toString(),§"!F§);
         }
         §#N§.log("Using connection profile:" + _loc2_.Id[0]);
         §5q§ = _loc2_;
         var _loc3_:Class = §%"F§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §1w§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §`w§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §<!L§ = new _loc3_(_loc6_,_loc5_);
         §;!A§ = new _loc4_();
         §<!L§.§1!2§(§;!A§.§;X§,§;!A§.§^"D§);
      }
      
      public static function §9d§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §"!F§.Connection)
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
      
      public static function §+Q§() : XML
      {
         if(§5q§ == null || !§5q§.Directories)
         {
            return null;
         }
         return §5q§.Directories[0];
      }
      
      public static function §&!"§(param1:String, param2:Function = null) : void
      {
         §;!A§.§&!"§(param1,param2);
      }
      
      public static function §7"B§(param1:String, param2:Function) : void
      {
         §;!A§.§7!e§(param1).addCallback(param2);
      }
      
      public static function §`"§(param1:String, param2:Function) : void
      {
         §;!A§.§7!e§(param1).§-8§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§3w§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§;!N§)
         {
            if(§1"H§)
            {
               _loc4_ = "";
               §#N§.log("URL sending...");
               if(!§`w§ || §`w§ == "PHP")
               {
                  _loc4_ = §<!L§.§="9§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §#N§.log(_loc4_);
               }
               else if(§`w§ == "Google")
               {
                  _loc4_ = §<!L§.§="9§() + param1;
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
                  §#N§.log(_loc4_);
               }
            }
            _loc3_ = §;!A§.§7!e§(param1);
            if(_loc3_.§18§())
            {
               §<!L§.sendRequest(param1,param2);
            }
            else
            {
               §#N§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §#N§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function enable() : void
      {
         §;!N§ = true;
         §<!L§.§5"B§();
      }
      
      public static function disable() : void
      {
         §;!N§ = false;
         §<!L§.§=#§();
      }
      
      public static function §;x§() : Boolean
      {
         return §;!N§;
      }
      
      public static function §]-§(param1:String) : void
      {
         §;!A§.§7!e§(param1).§@"<§(true);
      }
      
      public static function §]!m§(param1:String) : void
      {
         §;!A§.§7!e§(param1).§@"<§(false);
      }
      
      public static function § !n§() : String
      {
         return §<!L§.§="9§();
      }
      
      public static function §+!5§() : Boolean
      {
         return §"!F§ != null;
      }
   }
}
