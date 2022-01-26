package §4!W§
{
   import §'D§.§8e§;
   
   public class §]H§
   {
      
      private static var §5l§:§?!S§;
      
      private static var §8![§:§=s§;
      
      private static var §&r§:Boolean = true;
      
      public static var §[!!§:String = "";
      
      public static var §=!,§:XML;
      
      public static var §3&§:XML;
      
      public static const §3[§:Boolean = true;
       
      
      public function §]H§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§=!,§ == null)
         {
            §8e§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §2!^§(param1,§=!,§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §2!^§(§=!,§.Default[0].toString(),§=!,§);
         }
         §8e§.log("Using connection profile:" + _loc2_.Id[0]);
         §3&§ = _loc2_;
         var _loc3_:Class = §^c§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §=!P§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §[!!§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §5l§ = new _loc3_(_loc6_,_loc5_);
         §8![§ = new _loc4_();
         §5l§.§5<§(§8![§.§<B§,§8![§.§0!V§);
      }
      
      public static function §2!^§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §=!,§.Connection)
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
      
      public static function §,I§() : XML
      {
         if(§3&§ == null || !§3&§.Directories)
         {
            return null;
         }
         return §3&§.Directories[0];
      }
      
      public static function §'v§(param1:String, param2:Function = null) : void
      {
         §8![§.§'v§(param1,param2);
      }
      
      public static function §!!A§(param1:String, param2:Function) : void
      {
         §8![§.§;!^§(param1).addCallback(param2);
      }
      
      public static function §5!2§(param1:String, param2:Function) : void
      {
         §8![§.§;!^§(param1).§#"§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§>!V§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§&r§)
         {
            if(§3[§)
            {
               _loc4_ = "";
               §8e§.log("URL sending...");
               if(!§[!!§ || §[!!§ == "PHP")
               {
                  _loc4_ = §5l§.§@;§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §8e§.log(_loc4_);
               }
               else if(§[!!§ == "Google")
               {
                  _loc4_ = §5l§.§@;§() + param1;
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
                  §8e§.log(_loc4_);
               }
            }
            _loc3_ = §8![§.§;!^§(param1);
            if(_loc3_.§2!5§())
            {
               §5l§.sendRequest(param1,param2);
            }
            else
            {
               §8e§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §8e§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §9!<§() : void
      {
         §&r§ = true;
         §5l§.§49§();
      }
      
      public static function §?!B§() : void
      {
         §&r§ = false;
         §5l§.§;!R§();
      }
      
      public static function §&!§() : Boolean
      {
         return §&r§;
      }
      
      public static function §7Q§(param1:String) : void
      {
         §8![§.§;!^§(param1).§?8§(true);
      }
      
      public static function §<w§(param1:String) : void
      {
         §8![§.§;!^§(param1).§?8§(false);
      }
      
      public static function §8f§() : String
      {
         return §5l§.§@;§();
      }
      
      public static function §9!7§() : Boolean
      {
         return §=!,§ != null;
      }
   }
}
