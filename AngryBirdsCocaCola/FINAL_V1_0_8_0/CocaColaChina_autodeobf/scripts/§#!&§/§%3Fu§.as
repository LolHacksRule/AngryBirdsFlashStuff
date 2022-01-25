package §#!&§
{
   import §^=§.§8!6§;
   
   public class §?u§
   {
      
      private static var §"K§:§`!Q§;
      
      private static var §'!^§:§,w§;
      
      private static var §9!+§:Boolean = true;
      
      public static var §`!V§:String = "";
      
      public static var §6!c§:XML;
      
      public static var §&!H§:XML;
      
      public static const §;![§:Boolean = true;
       
      
      public function §?u§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§6!c§ == null)
         {
            §8!6§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §6Y§(param1,§6!c§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §6Y§(§6!c§.Default[0].toString(),§6!c§);
         }
         §8!6§.log("Using connection profile:" + _loc2_.Id[0]);
         §&!H§ = _loc2_;
         var _loc3_:Class = §7!§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §'!I§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §`!V§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §"K§ = new _loc3_(_loc6_,_loc5_);
         §'!^§ = new _loc4_();
         §"K§.§1A§(§'!^§.§^R§,§'!^§.§-,§);
      }
      
      public static function §6Y§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §6!c§.Connection)
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
      
      public static function §-g§() : XML
      {
         if(§&!H§ == null || !§&!H§.Directories)
         {
            return null;
         }
         return §&!H§.Directories[0];
      }
      
      public static function §%!I§(param1:String, param2:Function = null) : void
      {
         §'!^§.§%!I§(param1,param2);
      }
      
      public static function §,L§(param1:String, param2:Function) : void
      {
         §'!^§.§9!§(param1).addCallback(param2);
      }
      
      public static function §47§(param1:String, param2:Function) : void
      {
         §'!^§.§9!§(param1).§1§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§?2§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§9!+§)
         {
            if(§;![§)
            {
               _loc4_ = "";
               §8!6§.log("URL sending...");
               if(!§`!V§ || §`!V§ == "PHP")
               {
                  _loc4_ = §"K§.§^!Z§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §8!6§.log(_loc4_);
               }
               else if(§`!V§ == "Google")
               {
                  _loc4_ = §"K§.§^!Z§() + param1;
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
                  §8!6§.log(_loc4_);
               }
            }
            _loc3_ = §'!^§.§9!§(param1);
            if(_loc3_.§!a§())
            {
               §"K§.sendRequest(param1,param2);
            }
            else
            {
               §8!6§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §8!6§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §!!Q§() : void
      {
         §9!+§ = true;
         §"K§.§'!E§();
      }
      
      public static function §-!8§() : void
      {
         §9!+§ = false;
         §"K§.§^!7§();
      }
      
      public static function §>i§() : Boolean
      {
         return §9!+§;
      }
      
      public static function §+G§(param1:String) : void
      {
         §'!^§.§9!§(param1).§^! §(true);
      }
      
      public static function §1d§(param1:String) : void
      {
         §'!^§.§9!§(param1).§^! §(false);
      }
      
      public static function §7>§() : String
      {
         return §"K§.§^!Z§();
      }
      
      public static function §%!M§() : Boolean
      {
         return §6!c§ != null;
      }
   }
}
