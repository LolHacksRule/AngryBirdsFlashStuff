package §1!`§
{
   import each.§!!'§;
   
   public class §8!s§
   {
      
      private static var §%!j§:§ !a§;
      
      private static var §+G§:§4"+§;
      
      private static var §'!9§:Boolean = true;
      
      public static var §3!t§:String = "";
      
      public static var §#!?§:XML;
      
      public static var §+" §:XML;
      
      public static const §-!1§:Boolean = true;
       
      
      public function §8!s§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§#!?§ == null)
         {
            §!!'§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §]$§(param1,§#!?§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §]$§(§#!?§.Default[0].toString(),§#!?§);
         }
         §!!'§.log("Using connection profile:" + _loc2_.Id[0]);
         §+" § = _loc2_;
         var _loc3_:Class = §4P§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §`z§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §3!t§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §%!j§ = new _loc3_(_loc6_,_loc5_);
         §+G§ = new _loc4_();
         §%!j§.§3!%§(§+G§.§+!0§,§+G§.§=7§);
      }
      
      public static function §]$§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §#!?§.Connection)
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
      
      public static function §3!b§() : XML
      {
         if(§+" § == null || !§+" §.Directories)
         {
            return null;
         }
         return §+" §.Directories[0];
      }
      
      public static function §;!$§(param1:String, param2:Function = null) : void
      {
         §+G§.§;!$§(param1,param2);
      }
      
      public static function §9!X§(param1:String, param2:Function) : void
      {
         §+G§.§-!6§(param1).addCallback(param2);
      }
      
      public static function §#g§(param1:String, param2:Function) : void
      {
         §+G§.§-!6§(param1).§;!A§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§2!<§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§'!9§)
         {
            if(§-!1§)
            {
               _loc4_ = "";
               §!!'§.log("URL sending...");
               if(!§3!t§ || §3!t§ == "PHP")
               {
                  _loc4_ = §%!j§.§=U§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §!!'§.log(_loc4_);
               }
               else if(§3!t§ == "Google")
               {
                  _loc4_ = §%!j§.§=U§() + param1;
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
                  §!!'§.log(_loc4_);
               }
            }
            _loc3_ = §+G§.§-!6§(param1);
            if(_loc3_.§4!E§())
            {
               §%!j§.sendRequest(param1,param2);
            }
            else
            {
               §!!'§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §!!'§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function enable() : void
      {
         §'!9§ = true;
         §%!j§.§6O§();
      }
      
      public static function disable() : void
      {
         §'!9§ = false;
         §%!j§.§4f§();
      }
      
      public static function §+4§() : Boolean
      {
         return §'!9§;
      }
      
      public static function §try §(param1:String) : void
      {
         §+G§.§-!6§(param1).§!W§(true);
      }
      
      public static function §%!U§(param1:String) : void
      {
         §+G§.§-!6§(param1).§!W§(false);
      }
      
      public static function §^[§() : String
      {
         return §%!j§.§=U§();
      }
      
      public static function §]!s§() : Boolean
      {
         return §#!?§ != null;
      }
   }
}
