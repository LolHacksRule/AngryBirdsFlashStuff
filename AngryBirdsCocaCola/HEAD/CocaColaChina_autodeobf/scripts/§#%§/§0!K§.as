package §#%§
{
   import §'!G§.§1C§;
   
   public class §0!K§
   {
      
      private static var §=!§:§ V§;
      
      private static var §&[§:§[#§;
      
      private static var §,C§:Boolean = true;
      
      public static var §@a§:String = "";
      
      public static var § !C§:XML;
      
      public static var § h§:XML;
      
      public static const §1![§:Boolean = true;
       
      
      public function §0!K§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§ !C§ == null)
         {
            §1C§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §4![§(param1,§ !C§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §4![§(§ !C§.Default[0].toString(),§ !C§);
         }
         §1C§.log("Using connection profile:" + _loc2_.Id[0]);
         § h§ = _loc2_;
         var _loc3_:Class = §?,§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §,!,§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §@a§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §=!§ = new _loc3_(_loc6_,_loc5_);
         §&[§ = new _loc4_();
         §=!§.§8!<§(§&[§.§%[§,§&[§.§&P§);
      }
      
      public static function §4![§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in § !C§.Connection)
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
      
      public static function §7!5§() : XML
      {
         if(§ h§ == null || !§ h§.Directories)
         {
            return null;
         }
         return § h§.Directories[0];
      }
      
      public static function §`>§(param1:String, param2:Function = null) : void
      {
         §&[§.§`>§(param1,param2);
      }
      
      public static function §8f§(param1:String, param2:Function) : void
      {
         §&[§.§,$§(param1).addCallback(param2);
      }
      
      public static function §,!S§(param1:String, param2:Function) : void
      {
         §&[§.§,$§(param1).§'!F§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§>p§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§,C§)
         {
            if(§1![§)
            {
               _loc4_ = "";
               §1C§.log("URL sending...");
               if(!§@a§ || §@a§ == "PHP")
               {
                  _loc4_ = §=!§.§;!F§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §1C§.log(_loc4_);
               }
               else if(§@a§ == "Google")
               {
                  _loc4_ = §=!§.§;!F§() + param1;
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
                  §1C§.log(_loc4_);
               }
            }
            _loc3_ = §&[§.§,$§(param1);
            if(_loc3_.§4!H§())
            {
               §=!§.sendRequest(param1,param2);
            }
            else
            {
               §1C§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §1C§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §@!C§() : void
      {
         §,C§ = true;
         §=!§.§0!Z§();
      }
      
      public static function §-F§() : void
      {
         §,C§ = false;
         §=!§.§44§();
      }
      
      public static function §#K§() : Boolean
      {
         return §,C§;
      }
      
      public static function §#!`§(param1:String) : void
      {
         §&[§.§,$§(param1).§ get§(true);
      }
      
      public static function §6!A§(param1:String) : void
      {
         §&[§.§,$§(param1).§ get§(false);
      }
      
      public static function §4W§() : String
      {
         return §=!§.§;!F§();
      }
      
      public static function §+!M§() : Boolean
      {
         return § !C§ != null;
      }
   }
}
