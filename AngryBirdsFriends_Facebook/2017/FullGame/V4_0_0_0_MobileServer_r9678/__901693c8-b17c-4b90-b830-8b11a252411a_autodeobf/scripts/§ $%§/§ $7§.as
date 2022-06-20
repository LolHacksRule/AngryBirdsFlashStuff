package § $%§
{
   import §<"p§.§?!T§;
   
   public class § $7§
   {
      
      private static var §&$§:§##m§;
      
      private static var §,"§:§3"W§;
      
      private static var §4#z§:Boolean = true;
      
      public static var §!$4§:String = "";
      
      public static var §>d§:XML;
      
      public static var §%"#§:XML;
      
      public static const §,!4§:Boolean = true;
       
      
      public function § $7§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§>d§ == null)
         {
            §?!T§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §^"h§(param1,§>d§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §^"h§(§>d§.Default[0].toString(),§>d§);
         }
         §?!T§.log("Using connection profile:" + _loc2_.Id[0]);
         §%"#§ = _loc2_;
         var _loc3_:Class = §'D§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §<!M§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §!$4§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §&$§ = new _loc3_(_loc6_,_loc5_);
         §,"§ = new _loc4_();
         §&$§.§#s§(§,"§.§2#B§,§,"§.§"#i§);
      }
      
      public static function §^"h§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §>d§.Connection)
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
      
      public static function §<J§() : XML
      {
         if(§%"#§ == null || !§%"#§.Directories)
         {
            return null;
         }
         return §%"#§.Directories[0];
      }
      
      public static function §9"`§(param1:String, param2:Function = null) : void
      {
         §,"§.§9"`§(param1,param2);
      }
      
      public static function §&!=§(param1:String, param2:Function) : void
      {
         §,"§.§'"u§(param1).addCallback(param2);
      }
      
      public static function §-#>§(param1:String, param2:Function) : void
      {
         §,"§.§'"u§(param1).§+#R§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§-J§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§4#z§)
         {
            if(§,!4§)
            {
               _loc4_ = "";
               §?!T§.log("URL sending...");
               if(!§!$4§ || §!$4§ == "PHP")
               {
                  _loc4_ = §&$§.§2J§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §?!T§.log(_loc4_);
               }
               else if(§!$4§ == "Google")
               {
                  _loc4_ = §&$§.§2J§() + param1;
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
                  §?!T§.log(_loc4_);
               }
            }
            _loc3_ = §,"§.§'"u§(param1);
            if(_loc3_.§83§())
            {
               §&$§.sendRequest(param1,param2);
            }
            else
            {
               §?!T§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §?!T§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function enable() : void
      {
         §4#z§ = true;
         §&$§.§]Y§();
      }
      
      public static function disable() : void
      {
         §4#z§ = false;
         §&$§.§&#>§();
      }
      
      public static function §!!?§() : Boolean
      {
         return §4#z§;
      }
      
      public static function §0U§(param1:String) : void
      {
         §,"§.§'"u§(param1).§&"x§(true);
      }
      
      public static function §1E§(param1:String) : void
      {
         §,"§.§'"u§(param1).§&"x§(false);
      }
      
      public static function §3U§() : String
      {
         return §&$§.§2J§();
      }
      
      public static function §`#&§() : Boolean
      {
         return §>d§ != null;
      }
   }
}
