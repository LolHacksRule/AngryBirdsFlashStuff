package §[!-§
{
   import §[x§.§%3§;
   
   public class §4-§
   {
      
      private static var §5!y§:§?!Z§;
      
      private static var §]C§:§?#§;
      
      private static var §2!@§:Boolean = true;
      
      public static var §@!6§:String = "";
      
      public static var §9!A§:XML;
      
      public static var §^"5§:XML;
      
      public static const §@t§:Boolean = true;
       
      
      public function §4-§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§9!A§ == null)
         {
            §%3§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §1"=§(param1,§9!A§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §1"=§(§9!A§.Default[0].toString(),§9!A§);
         }
         §%3§.log("Using connection profile:" + _loc2_.Id[0]);
         §^"5§ = _loc2_;
         var _loc3_:Class = §1D§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §>`§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §@!6§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §5!y§ = new _loc3_(_loc6_,_loc5_);
         §]C§ = new _loc4_();
         §5!y§.§[>§(§]C§.§0"G§,§]C§.§1]§);
      }
      
      public static function §1"=§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §9!A§.Connection)
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
         if(§^"5§ == null || !§^"5§.Directories)
         {
            return null;
         }
         return §^"5§.Directories[0];
      }
      
      public static function §@[§(param1:String, param2:Function = null) : void
      {
         §]C§.§@[§(param1,param2);
      }
      
      public static function §<"7§(param1:String, param2:Function) : void
      {
         §]C§.§3Q§(param1).addCallback(param2);
      }
      
      public static function §[s§(param1:String, param2:Function) : void
      {
         §]C§.§3Q§(param1).§>7§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§^?§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§2!@§)
         {
            if(§@t§)
            {
               _loc4_ = "";
               §%3§.log("URL sending...");
               if(!§@!6§ || §@!6§ == "PHP")
               {
                  _loc4_ = §5!y§.§+!=§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §%3§.log(_loc4_);
               }
               else if(§@!6§ == "Google")
               {
                  _loc4_ = §5!y§.§+!=§() + param1;
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
                  §%3§.log(_loc4_);
               }
            }
            _loc3_ = §]C§.§3Q§(param1);
            if(_loc3_.§ !J§())
            {
               §5!y§.sendRequest(param1,param2);
            }
            else
            {
               §%3§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §%3§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §8"&§() : void
      {
         §2!@§ = true;
         §5!y§.§'!J§();
      }
      
      public static function §@!+§() : void
      {
         §2!@§ = false;
         §5!y§.§!!;§();
      }
      
      public static function §%!@§() : Boolean
      {
         return §2!@§;
      }
      
      public static function §?!^§(param1:String) : void
      {
         §]C§.§3Q§(param1).§;"!§(true);
      }
      
      public static function §1B§(param1:String) : void
      {
         §]C§.§3Q§(param1).§;"!§(false);
      }
      
      public static function §4Q§() : String
      {
         return §5!y§.§+!=§();
      }
      
      public static function §+"B§() : Boolean
      {
         return §9!A§ != null;
      }
   }
}
