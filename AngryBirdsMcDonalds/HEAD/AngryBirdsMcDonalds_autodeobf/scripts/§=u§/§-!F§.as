package §=u§
{
   import §'+§.§1u§;
   
   public class §-!F§
   {
      
      private static var §&!^§:§"V§;
      
      private static var §6!i§:§8!W§;
      
      private static var §0v§:Boolean = true;
      
      public static var §2!A§:String = "";
      
      public static var §]-§:XML;
      
      public static var §-!"§:XML;
      
      public static const §0!T§:Boolean = true;
       
      
      public function §-!F§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§]-§ == null)
         {
            §1u§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §1W§(param1,§]-§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §1W§(§]-§.Default[0].toString(),§]-§);
         }
         §1u§.log("Using connection profile:" + _loc2_.Id[0]);
         §-!"§ = _loc2_;
         var _loc3_:Class = §#Z§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §8I§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §2!A§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §&!^§ = new _loc3_(_loc6_,_loc5_);
         §6!i§ = new _loc4_();
         §&!^§.§7!R§(§6!i§.§-4§,§6!i§.§!V§);
      }
      
      public static function §1W§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §]-§.Connection)
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
      
      public static function §?!]§() : XML
      {
         if(§-!"§ == null || !§-!"§.Directories)
         {
            return null;
         }
         return §-!"§.Directories[0];
      }
      
      public static function §<!]§(param1:String, param2:Function = null) : void
      {
         §6!i§.§<!]§(param1,param2);
      }
      
      public static function §+!#§(param1:String, param2:Function) : void
      {
         §6!i§.§@"§(param1).addCallback(param2);
      }
      
      public static function §<!N§(param1:String, param2:Function) : void
      {
         §6!i§.§@"§(param1).§"!a§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§>!,§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§0v§)
         {
            if(§0!T§)
            {
               _loc4_ = "";
               §1u§.log("URL sending...");
               if(!§2!A§ || §2!A§ == "PHP")
               {
                  _loc4_ = §&!^§.§"!R§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §1u§.log(_loc4_);
               }
               else if(§2!A§ == "Google")
               {
                  _loc4_ = §&!^§.§"!R§() + param1;
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
                  §1u§.log(_loc4_);
               }
            }
            _loc3_ = §6!i§.§@"§(param1);
            if(_loc3_.§?!=§())
            {
               §&!^§.sendRequest(param1,param2);
            }
            else
            {
               §1u§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §1u§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §-!;§() : void
      {
         §0v§ = true;
         §&!^§.§2!'§();
      }
      
      public static function §%!'§() : void
      {
         §0v§ = false;
         §&!^§.§`g§();
      }
      
      public static function §@M§() : Boolean
      {
         return §0v§;
      }
      
      public static function §=j§(param1:String) : void
      {
         §6!i§.§@"§(param1).§6[§(true);
      }
      
      public static function §+!Q§(param1:String) : void
      {
         §6!i§.§@"§(param1).§6[§(false);
      }
      
      public static function § ^§() : String
      {
         return §&!^§.§"!R§();
      }
      
      public static function §`!R§() : Boolean
      {
         return §]-§ != null;
      }
   }
}
