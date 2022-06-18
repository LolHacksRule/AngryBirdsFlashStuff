package §^<§
{
   import §2x§.§'!@§;
   
   public class §`p§
   {
      
      private static var §`!G§:§6t§;
      
      private static var §+u§:§>P§;
      
      private static var §^>§:Boolean = true;
      
      public static var §5^§:String = "";
      
      public static var §,V§:XML;
      
      public static var §0!D§:XML;
      
      public static const §;`§:Boolean = true;
       
      
      public function §`p§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§,V§ == null)
         {
            §'!@§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §8!=§(param1,§,V§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §8!=§(§,V§.Default[0].toString(),§,V§);
         }
         §'!@§.log("Using connection profile:" + _loc2_.Id[0]);
         §0!D§ = _loc2_;
         var _loc3_:Class = § g§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §`&§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §5^§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §`!G§ = new _loc3_(_loc6_,_loc5_);
         §+u§ = new _loc4_();
         §`!G§.§#!-§(§+u§.§>_§,§+u§.§!+§);
      }
      
      public static function §8!=§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §,V§.Connection)
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
      
      public static function §8Y§() : XML
      {
         if(§0!D§ == null || !§0!D§.Directories)
         {
            return null;
         }
         return §0!D§.Directories[0];
      }
      
      public static function §6e§(param1:String, param2:Function = null) : void
      {
         §+u§.§6e§(param1,param2);
      }
      
      public static function §<l§(param1:String, param2:Function) : void
      {
         §+u§.§`^§(param1).addCallback(param2);
      }
      
      public static function § q§(param1:String, param2:Function) : void
      {
         §+u§.§`^§(param1).§3E§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§!9§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§^>§)
         {
            if(§;`§)
            {
               _loc4_ = "";
               §'!@§.log("URL sending...");
               if(!§5^§ || §5^§ == "PHP")
               {
                  _loc4_ = §`!G§.§]!0§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §'!@§.log(_loc4_);
               }
               else if(§5^§ == "Google")
               {
                  _loc4_ = §`!G§.§]!0§() + param1;
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
                  §'!@§.log(_loc4_);
               }
            }
            _loc3_ = §+u§.§`^§(param1);
            if(_loc3_.§=8§())
            {
               §`!G§.sendRequest(param1,param2);
            }
            else
            {
               §'!@§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §'!@§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §5G§() : void
      {
         §^>§ = true;
         §`!G§.§67§();
      }
      
      public static function § i§() : void
      {
         §^>§ = false;
         §`!G§.§7p§();
      }
      
      public static function §`!B§() : Boolean
      {
         return §^>§;
      }
      
      public static function §;I§(param1:String) : void
      {
         §+u§.§`^§(param1).§0w§(true);
      }
      
      public static function §%>§(param1:String) : void
      {
         §+u§.§`^§(param1).§0w§(false);
      }
      
      public static function §;f§() : String
      {
         return §`!G§.§]!0§();
      }
      
      public static function §8q§() : Boolean
      {
         return §,V§ != null;
      }
   }
}
