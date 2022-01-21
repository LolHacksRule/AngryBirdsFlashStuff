package §09§
{
   import §=<§.§1+§;
   
   public class §4!c§
   {
      
      private static var §#!§:§<?§;
      
      private static var §[!^§:§10§;
      
      private static var §%!>§:Boolean = true;
      
      public static var §?!k§:String = "";
      
      public static var §31§:XML;
      
      public static var §>!M§:XML;
      
      public static const §?!-§:Boolean = true;
       
      
      public function §4!c§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§31§ == null)
         {
            §1+§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §<i§(param1,§31§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §<i§(§31§.Default[0].toString(),§31§);
         }
         §1+§.log("Using connection profile:" + _loc2_.Id[0]);
         §>!M§ = _loc2_;
         var _loc3_:Class = §6S§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §"!G§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §?!k§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §#!§ = new _loc3_(_loc6_,_loc5_);
         §[!^§ = new _loc4_();
         §#!§.§<k§(§[!^§.§3!b§,§[!^§.§6!P§);
      }
      
      public static function §<i§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §31§.Connection)
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
      
      public static function §9!8§() : XML
      {
         if(§>!M§ == null || !§>!M§.Directories)
         {
            return null;
         }
         return §>!M§.Directories[0];
      }
      
      public static function §@E§(param1:String, param2:Function = null) : void
      {
         §[!^§.§@E§(param1,param2);
      }
      
      public static function §^-§(param1:String, param2:Function) : void
      {
         §[!^§.§finally§(param1).addCallback(param2);
      }
      
      public static function §4!h§(param1:String, param2:Function) : void
      {
         §[!^§.§finally§(param1).§2S§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§<!j§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§%!>§)
         {
            if(§?!-§)
            {
               _loc4_ = "";
               §1+§.log("URL sending...");
               if(!§?!k§ || §?!k§ == "PHP")
               {
                  _loc4_ = §#!§.§@!"§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §1+§.log(_loc4_);
               }
               else if(§?!k§ == "Google")
               {
                  _loc4_ = §#!§.§@!"§() + param1;
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
                  §1+§.log(_loc4_);
               }
            }
            _loc3_ = §[!^§.§finally§(param1);
            if(_loc3_.§`!-§())
            {
               §#!§.sendRequest(param1,param2);
            }
            else
            {
               §1+§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §1+§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §1!#§() : void
      {
         §%!>§ = true;
         §#!§.§>i§();
      }
      
      public static function §,G§() : void
      {
         §%!>§ = false;
         §#!§.§<!<§();
      }
      
      public static function §7!X§() : Boolean
      {
         return §%!>§;
      }
      
      public static function §`$§(param1:String) : void
      {
         §[!^§.§finally§(param1).§4!O§(true);
      }
      
      public static function §;U§(param1:String) : void
      {
         §[!^§.§finally§(param1).§4!O§(false);
      }
      
      public static function §5!N§() : String
      {
         return §#!§.§@!"§();
      }
      
      public static function §>! §() : Boolean
      {
         return §31§ != null;
      }
   }
}
