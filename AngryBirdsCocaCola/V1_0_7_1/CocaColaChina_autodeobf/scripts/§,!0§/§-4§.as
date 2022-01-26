package §,!0§
{
   import §?@§.§"]§;
   
   public class §-4§
   {
      
      private static var §'!_§:§#G§;
      
      private static var §#R§:§-F§;
      
      private static var §<Q§:Boolean = true;
      
      public static var §-<§:String = "";
      
      public static var §->§:XML;
      
      public static var §9!'§:XML;
      
      public static const §#%§:Boolean = true;
       
      
      public function §-4§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§->§ == null)
         {
            §"]§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §0!K§(param1,§->§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §0!K§(§->§.Default[0].toString(),§->§);
         }
         §"]§.log("Using connection profile:" + _loc2_.Id[0]);
         §9!'§ = _loc2_;
         var _loc3_:Class = §,!S§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §?,§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §-<§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §'!_§ = new _loc3_(_loc6_,_loc5_);
         §#R§ = new _loc4_();
         §'!_§.§@T§(§#R§.§#!`§,§#R§.§6!A§);
      }
      
      public static function §0!K§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §->§.Connection)
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
      
      public static function §=!§() : XML
      {
         if(§9!'§ == null || !§9!'§.Directories)
         {
            return null;
         }
         return §9!'§.Directories[0];
      }
      
      public static function §&[§(param1:String, param2:Function = null) : void
      {
         §#R§.§&[§(param1,param2);
      }
      
      public static function §,C§(param1:String, param2:Function) : void
      {
         §#R§.§+!M§(param1).addCallback(param2);
      }
      
      public static function §@a§(param1:String, param2:Function) : void
      {
         §#R§.§+!M§(param1).§ !5§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§[#§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§<Q§)
         {
            if(§#%§)
            {
               _loc4_ = "";
               §"]§.log("URL sending...");
               if(!§-<§ || §-<§ == "PHP")
               {
                  _loc4_ = §'!_§.§'!F§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §"]§.log(_loc4_);
               }
               else if(§-<§ == "Google")
               {
                  _loc4_ = §'!_§.§'!F§() + param1;
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
                  §"]§.log(_loc4_);
               }
            }
            _loc3_ = §#R§.§+!M§(param1);
            if(_loc3_.§,!,§())
            {
               §'!_§.sendRequest(param1,param2);
            }
            else
            {
               §"]§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §"]§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function § !C§() : void
      {
         §<Q§ = true;
         §'!_§.§0t§();
      }
      
      public static function § h§() : void
      {
         §<Q§ = false;
         §'!_§.§?W§();
      }
      
      public static function §1![§() : Boolean
      {
         return §<Q§;
      }
      
      public static function §4![§(param1:String) : void
      {
         §#R§.§+!M§(param1).§,$§(true);
      }
      
      public static function §7!5§(param1:String) : void
      {
         §#R§.§+!M§(param1).§,$§(false);
      }
      
      public static function §`>§() : String
      {
         return §'!_§.§'!F§();
      }
      
      public static function §8f§() : Boolean
      {
         return §->§ != null;
      }
   }
}
