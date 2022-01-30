package §%!k§
{
   import §4u§.§<!L§;
   
   public class §=M§
   {
      
      private static var §!h§:§9?§;
      
      private static var §=!K§:§;!g§;
      
      private static var §]!`§:Boolean = true;
      
      public static var §'"1§:String = "";
      
      public static var §'!z§:XML;
      
      public static var §8T§:XML;
      
      public static const §[!k§:Boolean = true;
       
      
      public function §=M§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§'!z§ == null)
         {
            §<!L§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §,X§(param1,§'!z§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §,X§(§'!z§.Default[0].toString(),§'!z§);
         }
         §<!L§.log("Using connection profile:" + _loc2_.Id[0]);
         §8T§ = _loc2_;
         var _loc3_:Class = §%!'§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §2c§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §'"1§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §!h§ = new _loc3_(_loc6_,_loc5_);
         §=!K§ = new _loc4_();
         §!h§.§=!u§(§=!K§.§>Y§,§=!K§.§%!K§);
      }
      
      public static function §,X§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §'!z§.Connection)
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
      
      public static function §2w§() : XML
      {
         if(§8T§ == null || !§8T§.Directories)
         {
            return null;
         }
         return §8T§.Directories[0];
      }
      
      public static function §!3§(param1:String, param2:Function = null) : void
      {
         §=!K§.§!3§(param1,param2);
      }
      
      public static function §,!G§(param1:String, param2:Function) : void
      {
         §=!K§.§!!<§(param1).addCallback(param2);
      }
      
      public static function §][§(param1:String, param2:Function) : void
      {
         §=!K§.§!!<§(param1).§3!z§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§#^§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§]!`§)
         {
            if(§[!k§)
            {
               _loc4_ = "";
               §<!L§.log("URL sending...");
               if(!§'"1§ || §'"1§ == "PHP")
               {
                  _loc4_ = §!h§.§5f§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §<!L§.log(_loc4_);
               }
               else if(§'"1§ == "Google")
               {
                  _loc4_ = §!h§.§5f§() + param1;
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
                  §<!L§.log(_loc4_);
               }
            }
            _loc3_ = §=!K§.§!!<§(param1);
            if(_loc3_.§7@§())
            {
               §!h§.sendRequest(param1,param2);
            }
            else
            {
               §<!L§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §<!L§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §%'§() : void
      {
         §]!`§ = true;
         §!h§.§`"'§();
      }
      
      public static function §%"-§() : void
      {
         §]!`§ = false;
         §!h§.§&!J§();
      }
      
      public static function §3"#§() : Boolean
      {
         return §]!`§;
      }
      
      public static function §-!U§(param1:String) : void
      {
         §=!K§.§!!<§(param1).§6A§(true);
      }
      
      public static function §#H§(param1:String) : void
      {
         §=!K§.§!!<§(param1).§6A§(false);
      }
      
      public static function §["3§() : String
      {
         return §!h§.§5f§();
      }
      
      public static function §6!^§() : Boolean
      {
         return §'!z§ != null;
      }
   }
}
