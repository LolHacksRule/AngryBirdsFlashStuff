package §7"1§
{
   import §#"3§.§4!h§;
   
   public class §[#U§
   {
      
      private static var §@!7§:§4#Y§;
      
      private static var §4!?§:§=$0§;
      
      private static var §]"3§:Boolean = true;
      
      public static var §0"v§:String = "";
      
      public static var §?#R§:XML;
      
      public static var §8"&§:XML;
      
      public static const §&$$§:Boolean = true;
       
      
      public function §[#U§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§?#R§ == null)
         {
            §4!h§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §3!?§(param1,§?#R§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §3!?§(§?#R§.Default[0].toString(),§?#R§);
         }
         §4!h§.log("Using connection profile:" + _loc2_.Id[0]);
         §8"&§ = _loc2_;
         var _loc3_:Class = §5'§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §0-§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §0"v§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §@!7§ = new _loc3_(_loc6_,_loc5_);
         §4!?§ = new _loc4_();
         §@!7§.§'!=§(§4!?§.§>=§,§4!?§.§6#&§);
      }
      
      public static function §3!?§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §?#R§.Connection)
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
      
      public static function § 5§() : XML
      {
         if(§8"&§ == null || !§8"&§.Directories)
         {
            return null;
         }
         return §8"&§.Directories[0];
      }
      
      public static function §]9§(param1:String, param2:Function = null) : void
      {
         §4!?§.§]9§(param1,param2);
      }
      
      public static function §2q§(param1:String, param2:Function) : void
      {
         §4!?§.§1"Q§(param1).addCallback(param2);
      }
      
      public static function §,#A§(param1:String, param2:Function) : void
      {
         §4!?§.§1"Q§(param1).§`$ §(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§,>§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§]"3§)
         {
            if(§&$$§)
            {
               _loc4_ = "";
               §4!h§.log("URL sending...");
               if(!§0"v§ || §0"v§ == "PHP")
               {
                  _loc4_ = §@!7§.§?$'§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §4!h§.log(_loc4_);
               }
               else if(§0"v§ == "Google")
               {
                  _loc4_ = §@!7§.§?$'§() + param1;
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
                  §4!h§.log(_loc4_);
               }
            }
            _loc3_ = §4!?§.§1"Q§(param1);
            if(_loc3_.§6#9§())
            {
               §@!7§.sendRequest(param1,param2);
            }
            else
            {
               §4!h§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §4!h§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function enable() : void
      {
         §]"3§ = true;
         §@!7§.§'#m§();
      }
      
      public static function disable() : void
      {
         §]"3§ = false;
         §@!7§.§>Y§();
      }
      
      public static function §7"&§() : Boolean
      {
         return §]"3§;
      }
      
      public static function §7$=§(param1:String) : void
      {
         §4!?§.§1"Q§(param1).§!!>§(true);
      }
      
      public static function § #<§(param1:String) : void
      {
         §4!?§.§1"Q§(param1).§!!>§(false);
      }
      
      public static function §!!r§() : String
      {
         return §@!7§.§?$'§();
      }
      
      public static function §!"F§() : Boolean
      {
         return §?#R§ != null;
      }
   }
}
