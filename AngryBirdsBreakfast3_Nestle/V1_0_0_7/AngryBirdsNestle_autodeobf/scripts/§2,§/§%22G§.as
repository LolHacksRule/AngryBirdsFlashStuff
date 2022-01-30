package §2,§
{
   import § !Q§.§"D§;
   
   public class §"G§
   {
      
      private static var §>d§:§@!k§;
      
      private static var §!X§:§%!t§;
      
      private static var §-!O§:Boolean = true;
      
      public static var § !X§:String = "";
      
      public static var §&^§:XML;
      
      public static var §0!G§:XML;
      
      public static const §;!-§:Boolean = true;
       
      
      public function §"G§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§&^§ == null)
         {
            §"D§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §1!]§(param1,§&^§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §1!]§(§&^§.Default[0].toString(),§&^§);
         }
         §"D§.log("Using connection profile:" + _loc2_.Id[0]);
         §0!G§ = _loc2_;
         var _loc3_:Class = §8n§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §2!H§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            § !X§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §>d§ = new _loc3_(_loc6_,_loc5_);
         §!X§ = new _loc4_();
         §>d§.§]]§(§!X§.§=!i§,§!X§.§7!i§);
      }
      
      public static function §1!]§(param1:String, param2:XML) : XML
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
      
      public static function §5!>§() : XML
      {
         if(§0!G§ == null || !§0!G§.Directories)
         {
            return null;
         }
         return §0!G§.Directories[0];
      }
      
      public static function §@!m§(param1:String, param2:Function = null) : void
      {
         §!X§.§@!m§(param1,param2);
      }
      
      public static function §6!W§(param1:String, param2:Function) : void
      {
         §!X§.§;!T§(param1).addCallback(param2);
      }
      
      public static function §-!T§(param1:String, param2:Function) : void
      {
         §!X§.§;!T§(param1).§0x§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§#!m§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§-!O§)
         {
            if(§;!-§)
            {
               _loc4_ = "";
               §"D§.log("URL sending...");
               if(!§ !X§ || § !X§ == "PHP")
               {
                  _loc4_ = §>d§.§7U§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §"D§.log(_loc4_);
               }
               else if(§ !X§ == "Google")
               {
                  _loc4_ = §>d§.§7U§() + param1;
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
                  §"D§.log(_loc4_);
               }
            }
            _loc3_ = §!X§.§;!T§(param1);
            if(_loc3_.§6!G§())
            {
               §>d§.sendRequest(param1,param2);
            }
            else
            {
               §"D§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §"D§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function enable() : void
      {
         §-!O§ = true;
         §>d§.§ J§();
      }
      
      public static function disable() : void
      {
         §-!O§ = false;
         §>d§.§5C§();
      }
      
      public static function §%&§() : Boolean
      {
         return §-!O§;
      }
      
      public static function §&!J§(param1:String) : void
      {
         §!X§.§;!T§(param1).§<!c§(true);
      }
      
      public static function §'9§(param1:String) : void
      {
         §!X§.§;!T§(param1).§<!c§(false);
      }
      
      public static function §<>§() : String
      {
         return §>d§.§7U§();
      }
      
      public static function §"!6§() : Boolean
      {
         return §&^§ != null;
      }
   }
}
