package §;$§
{
   import §&!b§.§ c§;
   
   public class §0M§
   {
      
      private static var §@!K§:§ use§;
      
      private static var §#U§:§&>§;
      
      private static var §]s§:Boolean = true;
      
      public static var §`3§:String = "";
      
      public static var §%!Y§:XML;
      
      public static var §,!e§:XML;
      
      public static const §1n§:Boolean = true;
       
      
      public function §0M§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§%!Y§ == null)
         {
            § c§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §1!1§(param1,§%!Y§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §1!1§(§%!Y§.Default[0].toString(),§%!Y§);
         }
         § c§.log("Using connection profile:" + _loc2_.Id[0]);
         §,!e§ = _loc2_;
         var _loc3_:Class = §`P§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §'!G§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §`3§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §@!K§ = new _loc3_(_loc6_,_loc5_);
         §#U§ = new _loc4_();
         §@!K§.§+h§(§#U§.§@8§,§#U§.§]!_§);
      }
      
      public static function §1!1§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §%!Y§.Connection)
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
      
      public static function §;"§() : XML
      {
         if(§,!e§ == null || !§,!e§.Directories)
         {
            return null;
         }
         return §,!e§.Directories[0];
      }
      
      public static function §=Q§(param1:String, param2:Function = null) : void
      {
         §#U§.§=Q§(param1,param2);
      }
      
      public static function §!Q§(param1:String, param2:Function) : void
      {
         §#U§.§#@§(param1).addCallback(param2);
      }
      
      public static function §continue§(param1:String, param2:Function) : void
      {
         §#U§.§#@§(param1).§%!R§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§1I§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§]s§)
         {
            if(§1n§)
            {
               _loc4_ = "";
               § c§.log("URL sending...");
               if(!§`3§ || §`3§ == "PHP")
               {
                  _loc4_ = §@!K§.§^9§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  § c§.log(_loc4_);
               }
               else if(§`3§ == "Google")
               {
                  _loc4_ = §@!K§.§^9§() + param1;
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
                  § c§.log(_loc4_);
               }
            }
            _loc3_ = §#U§.§#@§(param1);
            if(_loc3_.§<K§())
            {
               §@!K§.sendRequest(param1,param2);
            }
            else
            {
               § c§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            § c§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §5!Z§() : void
      {
         §]s§ = true;
         §@!K§.§^,§();
      }
      
      public static function §%c§() : void
      {
         §]s§ = false;
         §@!K§.§ !>§();
      }
      
      public static function §,!I§() : Boolean
      {
         return §]s§;
      }
      
      public static function §3!Y§(param1:String) : void
      {
         §#U§.§#@§(param1).§&!1§(true);
      }
      
      public static function § !<§(param1:String) : void
      {
         §#U§.§#@§(param1).§&!1§(false);
      }
      
      public static function §%N§() : String
      {
         return §@!K§.§^9§();
      }
      
      public static function §3!3§() : Boolean
      {
         return §%!Y§ != null;
      }
   }
}
