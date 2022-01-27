package §-Y§
{
   import § !3§.§!X§;
   
   public class §>!'§
   {
      
      private static var §<b§:§4!^§;
      
      private static var §%!@§:§>!$§;
      
      private static var §'!8§:Boolean = true;
      
      public static var §9>§:String = "";
      
      public static var §0!1§:XML;
      
      public static var §4!V§:XML;
      
      public static const §3!a§:Boolean = true;
       
      
      public function §>!'§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§0!1§ == null)
         {
            §!X§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §&L§(param1,§0!1§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §&L§(§0!1§.Default[0].toString(),§0!1§);
         }
         §!X§.log("Using connection profile:" + _loc2_.Id[0]);
         §4!V§ = _loc2_;
         var _loc3_:Class = §8Q§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §9!]§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §9>§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §<b§ = new _loc3_(_loc6_,_loc5_);
         §%!@§ = new _loc4_();
         §<b§.§6T§(§%!@§.§!j§,§%!@§.§!!Q§);
      }
      
      public static function §&L§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §0!1§.Connection)
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
      
      public static function §>?§() : XML
      {
         if(§4!V§ == null || !§4!V§.Directories)
         {
            return null;
         }
         return §4!V§.Directories[0];
      }
      
      public static function §3@§(param1:String, param2:Function = null) : void
      {
         §%!@§.§3@§(param1,param2);
      }
      
      public static function §;!1§(param1:String, param2:Function) : void
      {
         §%!@§.§,i§(param1).addCallback(param2);
      }
      
      public static function §9f§(param1:String, param2:Function) : void
      {
         §%!@§.§,i§(param1).§5!"§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§8§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§'!8§)
         {
            if(§3!a§)
            {
               _loc4_ = "";
               §!X§.log("URL sending...");
               if(!§9>§ || §9>§ == "PHP")
               {
                  _loc4_ = §<b§.§<!N§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §!X§.log(_loc4_);
               }
               else if(§9>§ == "Google")
               {
                  _loc4_ = §<b§.§<!N§() + param1;
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
                  §!X§.log(_loc4_);
               }
            }
            _loc3_ = §%!@§.§,i§(param1);
            if(_loc3_.§,-§())
            {
               §<b§.sendRequest(param1,param2);
            }
            else
            {
               §!X§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §!X§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §1?§() : void
      {
         §'!8§ = true;
         §<b§.§%!L§();
      }
      
      public static function §+a§() : void
      {
         §'!8§ = false;
         §<b§.§<h§();
      }
      
      public static function §?!H§() : Boolean
      {
         return §'!8§;
      }
      
      public static function §%7§(param1:String) : void
      {
         §%!@§.§,i§(param1).§2!2§(true);
      }
      
      public static function §#!A§(param1:String) : void
      {
         §%!@§.§,i§(param1).§2!2§(false);
      }
      
      public static function §2d§() : String
      {
         return §<b§.§<!N§();
      }
      
      public static function §9!+§() : Boolean
      {
         return §0!1§ != null;
      }
   }
}
