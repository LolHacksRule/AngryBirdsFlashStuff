package §#=§
{
   import §3v§.§1a§;
   
   public class §<!C§
   {
      
      private static var §,"§:§%!3§;
      
      private static var §;!2§:§2j§;
      
      private static var §1C§:Boolean = true;
      
      public static var §3!;§:String = "";
      
      public static var §-§:XML;
      
      public static var §^-§:XML;
      
      public static const §<,§:Boolean = true;
       
      
      public function §<!C§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§-§ == null)
         {
            §1a§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §97§(param1,§-§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §97§(§-§.Default[0].toString(),§-§);
         }
         §1a§.log("Using connection profile:" + _loc2_.Id[0]);
         §^-§ = _loc2_;
         var _loc3_:Class = §0!8§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §8!F§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §3!;§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §,"§ = new _loc3_(_loc6_,_loc5_);
         §;!2§ = new _loc4_();
         §,"§.§0T§(§;!2§.§+!'§,§;!2§.§;!'§);
      }
      
      public static function §97§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §-§.Connection)
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
      
      public static function §8!=§() : XML
      {
         if(§^-§ == null || !§^-§.Directories)
         {
            return null;
         }
         return §^-§.Directories[0];
      }
      
      public static function §+%§(param1:String, param2:Function = null) : void
      {
         §;!2§.§+%§(param1,param2);
      }
      
      public static function §6!C§(param1:String, param2:Function) : void
      {
         §;!2§.§8H§(param1).addCallback(param2);
      }
      
      public static function §+<§(param1:String, param2:Function) : void
      {
         §;!2§.§8H§(param1).§-v§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§^l§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§1C§)
         {
            if(§<,§)
            {
               _loc4_ = "";
               §1a§.log("URL sending...");
               if(!§3!;§ || §3!;§ == "PHP")
               {
                  _loc4_ = §,"§.§1$§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §1a§.log(_loc4_);
               }
               else if(§3!;§ == "Google")
               {
                  _loc4_ = §,"§.§1$§() + param1;
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
                  §1a§.log(_loc4_);
               }
            }
            _loc3_ = §;!2§.§8H§(param1);
            if(_loc3_.§&]§())
            {
               §,"§.sendRequest(param1,param2);
            }
            else
            {
               §1a§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §1a§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §'o§() : void
      {
         §1C§ = true;
         §,"§.§<f§();
      }
      
      public static function §1!§() : void
      {
         §1C§ = false;
         §,"§.§5!9§();
      }
      
      public static function §[!-§() : Boolean
      {
         return §1C§;
      }
      
      public static function §+Q§(param1:String) : void
      {
         §;!2§.§8H§(param1).§0w§(true);
      }
      
      public static function §9Z§(param1:String) : void
      {
         §;!2§.§8H§(param1).§0w§(false);
      }
      
      public static function §^P§() : String
      {
         return §,"§.§1$§();
      }
      
      public static function §2l§() : Boolean
      {
         return §-§ != null;
      }
   }
}
