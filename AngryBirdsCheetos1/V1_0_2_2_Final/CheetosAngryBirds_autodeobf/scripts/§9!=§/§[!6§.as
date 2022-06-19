package §9!=§
{
   import § !G§.§ #§;
   
   public class §[!6§
   {
      
      private static var §]Y§:§%t§;
      
      private static var §;!6§:§"#§;
      
      private static var §^!Y§:Boolean = true;
      
      public static var §3![§:String = "";
      
      public static var §^!-§:XML;
      
      public static var §[!D§:XML;
      
      public static const §=6§:Boolean = true;
       
      
      public function §[!6§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§^!-§ == null)
         {
            § #§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §4!V§(param1,§^!-§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §4!V§(§^!-§.Default[0].toString(),§^!-§);
         }
         § #§.log("Using connection profile:" + _loc2_.Id[0]);
         §[!D§ = _loc2_;
         var _loc3_:Class = §@;§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §6!S§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §3![§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §]Y§ = new _loc3_(_loc6_,_loc5_);
         §;!6§ = new _loc4_();
         §]Y§.§0i§(§;!6§.§do§,§;!6§.§!!Y§);
      }
      
      public static function §4!V§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §^!-§.Connection)
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
      
      public static function §]Z§() : XML
      {
         if(§[!D§ == null || !§[!D§.Directories)
         {
            return null;
         }
         return §[!D§.Directories[0];
      }
      
      public static function §%!G§(param1:String, param2:Function = null) : void
      {
         §;!6§.§%!G§(param1,param2);
      }
      
      public static function §@C§(param1:String, param2:Function) : void
      {
         §;!6§.§;!!§(param1).addCallback(param2);
      }
      
      public static function §="§(param1:String, param2:Function) : void
      {
         §;!6§.§;!!§(param1).§]Q§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§5z§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§^!Y§)
         {
            if(§=6§)
            {
               _loc4_ = "";
               § #§.log("URL sending...");
               if(!§3![§ || §3![§ == "PHP")
               {
                  _loc4_ = §]Y§.§var §() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  § #§.log(_loc4_);
               }
               else if(§3![§ == "Google")
               {
                  _loc4_ = §]Y§.§var §() + param1;
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
                  § #§.log(_loc4_);
               }
            }
            _loc3_ = §;!6§.§;!!§(param1);
            if(_loc3_.§0!X§())
            {
               §]Y§.sendRequest(param1,param2);
            }
            else
            {
               § #§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            § #§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §,!F§() : void
      {
         §^!Y§ = true;
         §]Y§.§ in§();
      }
      
      public static function §8!X§() : void
      {
         §^!Y§ = false;
         §]Y§.§]V§();
      }
      
      public static function §`E§() : Boolean
      {
         return §^!Y§;
      }
      
      public static function §'I§(param1:String) : void
      {
         §;!6§.§;!!§(param1).§[A§(true);
      }
      
      public static function §#-§(param1:String) : void
      {
         §;!6§.§;!!§(param1).§[A§(false);
      }
      
      public static function §]&§() : String
      {
         return §]Y§.§var §();
      }
      
      public static function §#D§() : Boolean
      {
         return §^!-§ != null;
      }
   }
}
