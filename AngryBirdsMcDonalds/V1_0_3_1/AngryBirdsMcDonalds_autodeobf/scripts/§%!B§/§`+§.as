package §%!B§
{
   import §5K§.§[C§;
   
   public class §`+§
   {
      
      private static var §'!e§:§9+§;
      
      private static var §,! §:§%4§;
      
      private static var § !X§:Boolean = true;
      
      public static var §-![§:String = "";
      
      public static var §!!f§:XML;
      
      public static var §7L§:XML;
      
      public static const §;!"§:Boolean = true;
       
      
      public function §`+§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§!!f§ == null)
         {
            §[C§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §]G§(param1,§!!f§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §]G§(§!!f§.Default[0].toString(),§!!f§);
         }
         §[C§.log("Using connection profile:" + _loc2_.Id[0]);
         §7L§ = _loc2_;
         var _loc3_:Class = §9!U§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §'!X§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §-![§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §'!e§ = new _loc3_(_loc6_,_loc5_);
         §,! § = new _loc4_();
         §'!e§.§1Y§(§,! §.§'R§,§,! §.§2!h§);
      }
      
      public static function §]G§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §!!f§.Connection)
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
      
      public static function §-!%§() : XML
      {
         if(§7L§ == null || !§7L§.Directories)
         {
            return null;
         }
         return §7L§.Directories[0];
      }
      
      public static function §3G§(param1:String, param2:Function = null) : void
      {
         §,! §.§3G§(param1,param2);
      }
      
      public static function §6y§(param1:String, param2:Function) : void
      {
         §,! §.§#v§(param1).addCallback(param2);
      }
      
      public static function §<!^§(param1:String, param2:Function) : void
      {
         §,! §.§#v§(param1).§2!p§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§5!U§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§ !X§)
         {
            if(§;!"§)
            {
               _loc4_ = "";
               §[C§.log("URL sending...");
               if(!§-![§ || §-![§ == "PHP")
               {
                  _loc4_ = §'!e§.§2!N§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §[C§.log(_loc4_);
               }
               else if(§-![§ == "Google")
               {
                  _loc4_ = §'!e§.§2!N§() + param1;
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
                  §[C§.log(_loc4_);
               }
            }
            _loc3_ = §,! §.§#v§(param1);
            if(_loc3_.§>3§())
            {
               §'!e§.sendRequest(param1,param2);
            }
            else
            {
               §[C§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §[C§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §,!4§() : void
      {
         § !X§ = true;
         §'!e§.§ 4§();
      }
      
      public static function §"j§() : void
      {
         § !X§ = false;
         §'!e§.§;K§();
      }
      
      public static function §0>§() : Boolean
      {
         return § !X§;
      }
      
      public static function §8=§(param1:String) : void
      {
         §,! §.§#v§(param1).§@S§(true);
      }
      
      public static function §!!-§(param1:String) : void
      {
         §,! §.§#v§(param1).§@S§(false);
      }
      
      public static function §!,§() : String
      {
         return §'!e§.§2!N§();
      }
      
      public static function §5!X§() : Boolean
      {
         return §!!f§ != null;
      }
   }
}
