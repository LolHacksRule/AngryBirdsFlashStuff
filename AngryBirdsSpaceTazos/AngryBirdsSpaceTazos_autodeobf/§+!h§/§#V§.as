package §+!h§
{
   import §0N§.§2!@§;
   
   public class §#V§
   {
      
      private static var §#G§:§4"2§;
      
      private static var §9!?§:§'7§;
      
      private static var §[!2§:Boolean = true;
      
      public static var §?B§:String = "";
      
      public static var §0J§:XML;
      
      public static var §5!+§:XML;
      
      public static const §65§:Boolean = true;
       
      
      public function §#V§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§0J§ == null)
         {
            §2!@§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §=!A§(param1,§0J§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §=!A§(§0J§.Default[0].toString(),§0J§);
         }
         §2!@§.log("Using connection profile:" + _loc2_.Id[0]);
         §5!+§ = _loc2_;
         var _loc3_:Class = §]!2§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §;! §[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §?B§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §#G§ = new _loc3_(_loc6_,_loc5_);
         §9!?§ = new _loc4_();
         §#G§.§1]§(§9!?§.§`!i§,§9!?§.§1!J§);
      }
      
      public static function §=!A§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §0J§.Connection)
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
      
      public static function §4!+§() : XML
      {
         if(§5!+§ == null || !§5!+§.Directories)
         {
            return null;
         }
         return §5!+§.Directories[0];
      }
      
      public static function §!r§(param1:String, param2:Function = null) : void
      {
         §9!?§.§!r§(param1,param2);
      }
      
      public static function §5!!§(param1:String, param2:Function) : void
      {
         §9!?§.§1"B§(param1).addCallback(param2);
      }
      
      public static function §>!n§(param1:String, param2:Function) : void
      {
         §9!?§.§1"B§(param1).§@!`§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§5!6§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§[!2§)
         {
            if(§65§)
            {
               _loc4_ = "";
               §2!@§.log("URL sending...");
               if(!§?B§ || §?B§ == "PHP")
               {
                  _loc4_ = §#G§.§!!,§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §2!@§.log(_loc4_);
               }
               else if(§?B§ == "Google")
               {
                  _loc4_ = §#G§.§!!,§() + param1;
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
                  §2!@§.log(_loc4_);
               }
            }
            _loc3_ = §9!?§.§1"B§(param1);
            if(_loc3_.§7"B§())
            {
               §#G§.sendRequest(param1,param2);
            }
            else
            {
               §2!@§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §2!@§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function enable() : void
      {
         §[!2§ = true;
         §#G§.§]",§();
      }
      
      public static function disable() : void
      {
         §[!2§ = false;
         §#G§.§6"5§();
      }
      
      public static function §7!=§() : Boolean
      {
         return §[!2§;
      }
      
      public static function §5"+§(param1:String) : void
      {
         §9!?§.§1"B§(param1).§!!a§(true);
      }
      
      public static function §#4§(param1:String) : void
      {
         §9!?§.§1"B§(param1).§!!a§(false);
      }
      
      public static function §3+§() : String
      {
         return §#G§.§!!,§();
      }
      
      public static function §[,§() : Boolean
      {
         return §0J§ != null;
      }
   }
}
