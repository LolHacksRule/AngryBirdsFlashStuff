package §3!$§
{
   import §'6§.§?!L§;
   
   public class §^[§
   {
      
      private static var §&!D§:§^!8§;
      
      private static var §'&§:§@N§;
      
      private static var § !3§:Boolean = true;
      
      public static var §@R§:String = "";
      
      public static var §#D§:XML;
      
      public static var §-!%§:XML;
      
      public static const §!!H§:Boolean = true;
       
      
      public function §^[§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§#D§ == null)
         {
            §?!L§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §1N§(param1,§#D§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §1N§(§#D§.Default[0].toString(),§#D§);
         }
         §?!L§.log("Using connection profile:" + _loc2_.Id[0]);
         §-!%§ = _loc2_;
         var _loc3_:Class = §<I§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §<!-§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §@R§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §&!D§ = new _loc3_(_loc6_,_loc5_);
         §'&§ = new _loc4_();
         §&!D§.§!!&§(§'&§.§2!I§,§'&§.§=c§);
      }
      
      public static function §1N§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §#D§.Connection)
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
      
      public static function §0§() : XML
      {
         if(§-!%§ == null || !§-!%§.Directories)
         {
            return null;
         }
         return §-!%§.Directories[0];
      }
      
      public static function §;!I§(param1:String, param2:Function = null) : void
      {
         §'&§.§;!I§(param1,param2);
      }
      
      public static function §2_§(param1:String, param2:Function) : void
      {
         §'&§.§=!6§(param1).addCallback(param2);
      }
      
      public static function §-j§(param1:String, param2:Function) : void
      {
         §'&§.§=!6§(param1).§[v§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§<>§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§ !3§)
         {
            if(§!!H§)
            {
               _loc4_ = "";
               §?!L§.log("URL sending...");
               if(!§@R§ || §@R§ == "PHP")
               {
                  _loc4_ = §&!D§.§04§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §?!L§.log(_loc4_);
               }
               else if(§@R§ == "Google")
               {
                  _loc4_ = §&!D§.§04§() + param1;
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
                  §?!L§.log(_loc4_);
               }
            }
            _loc3_ = §'&§.§=!6§(param1);
            if(_loc3_.§ S§())
            {
               §&!D§.sendRequest(param1,param2);
            }
            else
            {
               §?!L§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §?!L§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §94§() : void
      {
         § !3§ = true;
         §&!D§.§4>§();
      }
      
      public static function §;!&§() : void
      {
         § !3§ = false;
         §&!D§.§'Y§();
      }
      
      public static function §8`§() : Boolean
      {
         return § !3§;
      }
      
      public static function §&!9§(param1:String) : void
      {
         §'&§.§=!6§(param1).§&0§(true);
      }
      
      public static function §7>§(param1:String) : void
      {
         §'&§.§=!6§(param1).§&0§(false);
      }
      
      public static function §;!=§() : String
      {
         return §&!D§.§04§();
      }
      
      public static function §-n§() : Boolean
      {
         return §#D§ != null;
      }
   }
}
