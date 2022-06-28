package §[H§
{
   import §2§.§0!<§;
   
   public class §7P§
   {
      
      private static var §true§:§++§;
      
      private static var §`a§:§=4§;
      
      private static var §3C§:Boolean = true;
      
      public static var §1V§:String = "";
      
      public static var §@!+§:XML;
      
      public static var §8!'§:XML;
      
      public static const §[v§:Boolean = true;
       
      
      public function §7P§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§@!+§ == null)
         {
            §0!<§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = § §(param1,§@!+§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = § §(§@!+§.Default[0].toString(),§@!+§);
         }
         §0!<§.log("Using connection profile:" + _loc2_.Id[0]);
         §8!'§ = _loc2_;
         var _loc3_:Class = §-f§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §8j§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §1V§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §true§ = new _loc3_(_loc6_,_loc5_);
         §`a§ = new _loc4_();
         §true§.§"?§(§`a§.§ !F§,§`a§.§^N§);
      }
      
      public static function § §(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §@!+§.Connection)
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
      
      public static function §#§() : XML
      {
         if(§8!'§ == null || !§8!'§.Directories)
         {
            return null;
         }
         return §8!'§.Directories[0];
      }
      
      public static function §?!4§(param1:String, param2:Function = null) : void
      {
         §`a§.§?!4§(param1,param2);
      }
      
      public static function §[!D§(param1:String, param2:Function) : void
      {
         §`a§.§%+§(param1).addCallback(param2);
      }
      
      public static function §1=§(param1:String, param2:Function) : void
      {
         §`a§.§%+§(param1).§class§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§9]§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§3C§)
         {
            if(§[v§)
            {
               _loc4_ = "";
               §0!<§.log("URL sending...");
               if(!§1V§ || §1V§ == "PHP")
               {
                  _loc4_ = §true§.§,f§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §0!<§.log(_loc4_);
               }
               else if(§1V§ == "Google")
               {
                  _loc4_ = §true§.§,f§() + param1;
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
                  §0!<§.log(_loc4_);
               }
            }
            _loc3_ = §`a§.§%+§(param1);
            if(_loc3_.§case §())
            {
               §true§.sendRequest(param1,param2);
            }
            else
            {
               §0!<§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §0!<§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §&!,§() : void
      {
         §3C§ = true;
         §true§.§`H§();
      }
      
      public static function §3"§() : void
      {
         §3C§ = false;
         §true§.§=b§();
      }
      
      public static function §"!=§() : Boolean
      {
         return §3C§;
      }
      
      public static function §;k§(param1:String) : void
      {
         §`a§.§%+§(param1).§]y§(true);
      }
      
      public static function §6!+§(param1:String) : void
      {
         §`a§.§%+§(param1).§]y§(false);
      }
      
      public static function §&!D§() : String
      {
         return §true§.§,f§();
      }
      
      public static function §]F§() : Boolean
      {
         return §@!+§ != null;
      }
   }
}
