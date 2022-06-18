package §=Y§
{
   import §@!;§.§!!=§;
   
   public class §-=§
   {
      
      private static var §6!>§:§<!+§;
      
      private static var §9!5§:§1s§;
      
      private static var §!!L§:Boolean = true;
      
      public static var §0,§:String = "";
      
      public static var §58§:XML;
      
      public static var §-M§:XML;
      
      public static const §#q§:Boolean = true;
       
      
      public function §-=§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§58§ == null)
         {
            §!!=§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §<f§(param1,§58§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §<f§(§58§.Default[0].toString(),§58§);
         }
         §!!=§.log("Using connection profile:" + _loc2_.Id[0]);
         §-M§ = _loc2_;
         var _loc3_:Class = §^A§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §!!O§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §0,§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §6!>§ = new _loc3_(_loc6_,_loc5_);
         §9!5§ = new _loc4_();
         §6!>§.§#@§(§9!5§.§!!+§,§9!5§.§%!7§);
      }
      
      public static function §<f§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §58§.Connection)
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
      
      public static function §-!J§() : XML
      {
         if(§-M§ == null || !§-M§.Directories)
         {
            return null;
         }
         return §-M§.Directories[0];
      }
      
      public static function §3!+§(param1:String, param2:Function = null) : void
      {
         §9!5§.§3!+§(param1,param2);
      }
      
      public static function §!!N§(param1:String, param2:Function) : void
      {
         §9!5§.§-!?§(param1).addCallback(param2);
      }
      
      public static function §?'§(param1:String, param2:Function) : void
      {
         §9!5§.§-!?§(param1).§ H§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§[<§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§!!L§)
         {
            if(§#q§)
            {
               _loc4_ = "";
               §!!=§.log("URL sending...");
               if(!§0,§ || §0,§ == "PHP")
               {
                  _loc4_ = §6!>§.§ ;§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §!!=§.log(_loc4_);
               }
               else if(§0,§ == "Google")
               {
                  _loc4_ = §6!>§.§ ;§() + param1;
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
                  §!!=§.log(_loc4_);
               }
            }
            _loc3_ = §9!5§.§-!?§(param1);
            if(_loc3_.§%!G§())
            {
               §6!>§.sendRequest(param1,param2);
            }
            else
            {
               §!!=§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §!!=§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §;7§() : void
      {
         §!!L§ = true;
         §6!>§.§@!#§();
      }
      
      public static function §]^§() : void
      {
         §!!L§ = false;
         §6!>§.§]!4§();
      }
      
      public static function §'T§() : Boolean
      {
         return §!!L§;
      }
      
      public static function §7f§(param1:String) : void
      {
         §9!5§.§-!?§(param1).§-G§(true);
      }
      
      public static function §,!!§(param1:String) : void
      {
         §9!5§.§-!?§(param1).§-G§(false);
      }
      
      public static function §^W§() : String
      {
         return §6!>§.§ ;§();
      }
      
      public static function §try §() : Boolean
      {
         return §58§ != null;
      }
   }
}
