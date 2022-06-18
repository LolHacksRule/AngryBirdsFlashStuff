package §%!1§
{
   import §-!6§.§>I§;
   
   public class §%E§
   {
      
      private static var §7-§:§3V§;
      
      private static var §3!C§:§%^§;
      
      private static var §-&§:Boolean = true;
      
      public static var §class§:String = "";
      
      public static var §?h§:XML;
      
      public static var §?Q§:XML;
      
      public static const §;!B§:Boolean = true;
       
      
      public function §%E§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§?h§ == null)
         {
            §>I§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §3e§(param1,§?h§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §3e§(§?h§.Default[0].toString(),§?h§);
         }
         §>I§.log("Using connection profile:" + _loc2_.Id[0]);
         §?Q§ = _loc2_;
         var _loc3_:Class = §6!+§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §!!7§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §class§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §7-§ = new _loc3_(_loc6_,_loc5_);
         §3!C§ = new _loc4_();
         §7-§.§?W§(§3!C§.§4!`§,§3!C§.§8>§);
      }
      
      public static function §3e§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §?h§.Connection)
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
      
      public static function §#1§() : XML
      {
         if(§?Q§ == null || !§?Q§.Directories)
         {
            return null;
         }
         return §?Q§.Directories[0];
      }
      
      public static function §-,§(param1:String, param2:Function = null) : void
      {
         §3!C§.§-,§(param1,param2);
      }
      
      public static function §&"§(param1:String, param2:Function) : void
      {
         §3!C§.§&w§(param1).addCallback(param2);
      }
      
      public static function §6!X§(param1:String, param2:Function) : void
      {
         §3!C§.§&w§(param1).§4!E§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§@H§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§-&§)
         {
            if(§;!B§)
            {
               _loc4_ = "";
               §>I§.log("URL sending...");
               if(!§class§ || §class§ == "PHP")
               {
                  _loc4_ = §7-§.§,O§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §>I§.log(_loc4_);
               }
               else if(§class§ == "Google")
               {
                  _loc4_ = §7-§.§,O§() + param1;
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
                  §>I§.log(_loc4_);
               }
            }
            _loc3_ = §3!C§.§&w§(param1);
            if(_loc3_.§=3§())
            {
               §7-§.sendRequest(param1,param2);
            }
            else
            {
               §>I§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §>I§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §6D§() : void
      {
         §-&§ = true;
         §7-§.§=]§();
      }
      
      public static function §>§() : void
      {
         §-&§ = false;
         §7-§.§<a§();
      }
      
      public static function §&r§() : Boolean
      {
         return §-&§;
      }
      
      public static function §'!@§(param1:String) : void
      {
         §3!C§.§&w§(param1).§9![§(true);
      }
      
      public static function §#x§(param1:String) : void
      {
         §3!C§.§&w§(param1).§9![§(false);
      }
      
      public static function §=B§() : String
      {
         return §7-§.§,O§();
      }
      
      public static function §`>§() : Boolean
      {
         return §?h§ != null;
      }
   }
}
