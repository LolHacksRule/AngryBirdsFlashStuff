package §&N§
{
   import §;8§.§3f§;
   
   public class §[-§
   {
      
      private static var §!D§:§=>§;
      
      private static var §8d§:§=§;
      
      private static var §7=§:Boolean = true;
      
      public static var §1K§:String = "";
      
      public static var §+a§:XML;
      
      public static var §>R§:XML;
      
      public static const §5N§:Boolean = true;
       
      
      public function §[-§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§+a§ == null)
         {
            §3f§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §4#§(param1,§+a§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §4#§(§+a§.Default[0].toString(),§+a§);
         }
         §3f§.log("Using connection profile:" + _loc2_.Id[0]);
         §>R§ = _loc2_;
         var _loc3_:Class = §#w§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §'!2§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §1K§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §!D§ = new _loc3_(_loc6_,_loc5_);
         §8d§ = new _loc4_();
         §!D§.§^!2§(§8d§.§7Q§,§8d§.§6f§);
      }
      
      public static function §4#§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §+a§.Connection)
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
      
      public static function §]B§() : XML
      {
         if(§>R§ == null || !§>R§.Directories)
         {
            return null;
         }
         return §>R§.Directories[0];
      }
      
      public static function §2w§(param1:String, param2:Function = null) : void
      {
         §8d§.§2w§(param1,param2);
      }
      
      public static function §8&§(param1:String, param2:Function) : void
      {
         §8d§.§4G§(param1).addCallback(param2);
      }
      
      public static function §else §(param1:String, param2:Function) : void
      {
         §8d§.§4G§(param1).§2&§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§"!7§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§7=§)
         {
            if(§5N§)
            {
               _loc4_ = "";
               §3f§.log("URL sending...");
               if(!§1K§ || §1K§ == "PHP")
               {
                  _loc4_ = §!D§.§4y§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §3f§.log(_loc4_);
               }
               else if(§1K§ == "Google")
               {
                  _loc4_ = §!D§.§4y§() + param1;
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
                  §3f§.log(_loc4_);
               }
            }
            _loc3_ = §8d§.§4G§(param1);
            if(_loc3_.§9N§())
            {
               §!D§.sendRequest(param1,param2);
            }
            else
            {
               §3f§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §3f§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §2r§() : void
      {
         §7=§ = true;
         §!D§.§%!?§();
      }
      
      public static function §0!&§() : void
      {
         §7=§ = false;
         §!D§.§^%§();
      }
      
      public static function §+!$§() : Boolean
      {
         return §7=§;
      }
      
      public static function §,!4§(param1:String) : void
      {
         §8d§.§4G§(param1).§"c§(true);
      }
      
      public static function §-K§(param1:String) : void
      {
         §8d§.§4G§(param1).§"c§(false);
      }
      
      public static function §'!B§() : String
      {
         return §!D§.§4y§();
      }
      
      public static function §4!=§() : Boolean
      {
         return §+a§ != null;
      }
   }
}
