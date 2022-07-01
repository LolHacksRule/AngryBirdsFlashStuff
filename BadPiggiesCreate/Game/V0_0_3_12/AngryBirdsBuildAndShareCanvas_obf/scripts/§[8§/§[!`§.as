package §[8§
{
   import §"p§.§@8§;
   
   public class §[!`§
   {
      
      private static var §]"<§:§#u§;
      
      private static var § !0§:§!"?§;
      
      private static var §8!"§:Boolean = true;
      
      public static var §2!L§:String = "";
      
      public static var §^!O§:XML;
      
      public static var §2"!§:XML;
      
      public static const §;!,§:Boolean = true;
       
      
      public function §[!`§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§^!O§ == null)
         {
            §@8§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §2@§(param1,§^!O§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §2@§(§^!O§.Default[0].toString(),§^!O§);
         }
         §@8§.log("Using connection profile:" + _loc2_.Id[0]);
         §2"!§ = _loc2_;
         var _loc3_:Class = §2^§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §<!?§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §2!L§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §]"<§ = new _loc3_(_loc6_,_loc5_);
         § !0§ = new _loc4_();
         §]"<§.§#!-§(§ !0§.§-%§,§ !0§.§^;§);
      }
      
      public static function §2@§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §^!O§.Connection)
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
      
      public static function §>2§() : XML
      {
         if(§2"!§ == null || !§2"!§.Directories)
         {
            return null;
         }
         return §2"!§.Directories[0];
      }
      
      public static function §+!a§(param1:String, param2:Function = null) : void
      {
         § !0§.§+!a§(param1,param2);
      }
      
      public static function § !!§(param1:String, param2:Function) : void
      {
         § !0§.§9r§(param1).addCallback(param2);
      }
      
      public static function §1!j§(param1:String, param2:Function) : void
      {
         § !0§.§9r§(param1).§`!6§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§2" § = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§8!"§)
         {
            if(§;!,§)
            {
               _loc4_ = "";
               §@8§.log("URL sending...");
               if(!§2!L§ || §2!L§ == "PHP")
               {
                  _loc4_ = §]"<§.§+!T§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §@8§.log(_loc4_);
               }
               else if(§2!L§ == "Google")
               {
                  _loc4_ = §]"<§.§+!T§() + param1;
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
                  §@8§.log(_loc4_);
               }
            }
            _loc3_ = § !0§.§9r§(param1);
            if(_loc3_.§!! §())
            {
               §]"<§.sendRequest(param1,param2);
            }
            else
            {
               §@8§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §@8§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §]c§() : void
      {
         §8!"§ = true;
         §]"<§.§-!K§();
      }
      
      public static function §^j§() : void
      {
         §8!"§ = false;
         §]"<§.§7A§();
      }
      
      public static function § ",§() : Boolean
      {
         return §8!"§;
      }
      
      public static function §0Y§(param1:String) : void
      {
         § !0§.§9r§(param1).§5U§(true);
      }
      
      public static function §%!+§(param1:String) : void
      {
         § !0§.§9r§(param1).§5U§(false);
      }
      
      public static function §0!y§() : String
      {
         return §]"<§.§+!T§();
      }
      
      public static function §?R§() : Boolean
      {
         return §^!O§ != null;
      }
   }
}
