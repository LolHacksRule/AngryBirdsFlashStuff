package §`X§
{
   import §9H§.§@M§;
   
   public class §%!5§
   {
      
      private static var §7k§:§%#§;
      
      private static var §-l§:§4D§;
      
      private static var §#n§:Boolean = true;
      
      public static var §?J§:String = "";
      
      public static var §&^§:XML;
      
      public static var §1$§:XML;
      
      public static const §>#§:Boolean = true;
       
      
      public function §%!5§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§&^§ == null)
         {
            §@M§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §7!2§(param1,§&^§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §7!2§(§&^§.Default[0].toString(),§&^§);
         }
         §@M§.log("Using connection profile:" + _loc2_.Id[0]);
         §1$§ = _loc2_;
         var _loc3_:Class = §2,§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §+L§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §?J§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §7k§ = new _loc3_(_loc6_,_loc5_);
         §-l§ = new _loc4_();
         §7k§.§%A§(§-l§.§^`§,§-l§.§#Z§);
      }
      
      public static function §7!2§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §&^§.Connection)
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
      
      public static function §!&§() : XML
      {
         if(§1$§ == null || !§1$§.Directories)
         {
            return null;
         }
         return §1$§.Directories[0];
      }
      
      public static function §"!0§(param1:String, param2:Function = null) : void
      {
         §-l§.§"!0§(param1,param2);
      }
      
      public static function §>1§(param1:String, param2:Function) : void
      {
         §-l§.§#q§(param1).addCallback(param2);
      }
      
      public static function §"V§(param1:String, param2:Function) : void
      {
         §-l§.§#q§(param1).§2v§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§ !$§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§#n§)
         {
            if(§>#§)
            {
               _loc4_ = "";
               §@M§.log("URL sending...");
               if(!§?J§ || §?J§ == "PHP")
               {
                  _loc4_ = §7k§.§;!1§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §@M§.log(_loc4_);
               }
               else if(§?J§ == "Google")
               {
                  _loc4_ = §7k§.§;!1§() + param1;
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
                  §@M§.log(_loc4_);
               }
            }
            _loc3_ = §-l§.§#q§(param1);
            if(_loc3_.§6!6§())
            {
               §7k§.sendRequest(param1,param2);
            }
            else
            {
               §@M§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §@M§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §?=§() : void
      {
         §#n§ = true;
         §7k§.§!i§();
      }
      
      public static function §!K§() : void
      {
         §#n§ = false;
         §7k§.§0=§();
      }
      
      public static function §;!<§() : Boolean
      {
         return §#n§;
      }
      
      public static function §+!§(param1:String) : void
      {
         §-l§.§#q§(param1).§"!3§(true);
      }
      
      public static function §>T§(param1:String) : void
      {
         §-l§.§#q§(param1).§"!3§(false);
      }
      
      public static function § !B§() : String
      {
         return §7k§.§;!1§();
      }
      
      public static function §else§() : Boolean
      {
         return §&^§ != null;
      }
   }
}
