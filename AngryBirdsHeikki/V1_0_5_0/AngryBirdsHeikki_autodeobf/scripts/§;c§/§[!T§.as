package §;c§
{
   import §1!K§.§>!<§;
   
   public class §[!T§
   {
      
      private static var §&R§:§6-§;
      
      private static var §2S§:§^q§;
      
      private static var § 0§:Boolean = true;
      
      public static var §25§:String = "";
      
      public static var §3$§:XML;
      
      public static var §>!5§:XML;
      
      public static const §5R§:Boolean = true;
       
      
      public function §[!T§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§3$§ == null)
         {
            §>!<§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §3!?§(param1,§3$§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §3!?§(§3$§.Default[0].toString(),§3$§);
         }
         §>!<§.log("Using connection profile:" + _loc2_.Id[0]);
         §>!5§ = _loc2_;
         var _loc3_:Class = §%i§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §?!1§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §25§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §&R§ = new _loc3_(_loc6_,_loc5_);
         §2S§ = new _loc4_();
         §&R§.§6!U§(§2S§.§1o§,§2S§.§9Q§);
      }
      
      public static function §3!?§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §3$§.Connection)
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
      
      public static function §!_§() : XML
      {
         if(§>!5§ == null || !§>!5§.Directories)
         {
            return null;
         }
         return §>!5§.Directories[0];
      }
      
      public static function §8K§(param1:String, param2:Function = null) : void
      {
         §2S§.§8K§(param1,param2);
      }
      
      public static function §"+§(param1:String, param2:Function) : void
      {
         §2S§.§%%§(param1).addCallback(param2);
      }
      
      public static function §7n§(param1:String, param2:Function) : void
      {
         §2S§.§%%§(param1).§=C§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§=<§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§ 0§)
         {
            if(§5R§)
            {
               _loc4_ = "";
               §>!<§.log("URL sending...");
               if(!§25§ || §25§ == "PHP")
               {
                  _loc4_ = §&R§.§='§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §>!<§.log(_loc4_);
               }
               else if(§25§ == "Google")
               {
                  _loc4_ = §&R§.§='§() + param1;
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
                  §>!<§.log(_loc4_);
               }
            }
            _loc3_ = §2S§.§%%§(param1);
            if(_loc3_.§<!-§())
            {
               §&R§.sendRequest(param1,param2);
            }
            else
            {
               §>!<§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §>!<§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §"A§() : void
      {
         § 0§ = true;
         §&R§.§-H§();
      }
      
      public static function §2!§() : void
      {
         § 0§ = false;
         §&R§.§8!M§();
      }
      
      public static function §^!!§() : Boolean
      {
         return § 0§;
      }
      
      public static function §&w§(param1:String) : void
      {
         §2S§.§%%§(param1).§#!1§(true);
      }
      
      public static function §1F§(param1:String) : void
      {
         §2S§.§%%§(param1).§#!1§(false);
      }
      
      public static function §[O§() : String
      {
         return §&R§.§='§();
      }
      
      public static function §6b§() : Boolean
      {
         return §3$§ != null;
      }
   }
}
