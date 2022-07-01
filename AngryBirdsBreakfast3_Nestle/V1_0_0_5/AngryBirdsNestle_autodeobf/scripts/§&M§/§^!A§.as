package §&M§
{
   import §0!$§.§#!-§;
   
   public class §^!A§
   {
      
      private static var §0l§:§'!0§;
      
      private static var §#!&§:§-n§;
      
      private static var §>A§:Boolean = true;
      
      public static var §`g§:String = "";
      
      public static var §'9§:XML;
      
      public static var §#x§:XML;
      
      public static const §-!a§:Boolean = true;
       
      
      public function §^!A§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§'9§ == null)
         {
            §#!-§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §>L§(param1,§'9§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §>L§(§'9§.Default[0].toString(),§'9§);
         }
         §#!-§.log("Using connection profile:" + _loc2_.Id[0]);
         §#x§ = _loc2_;
         var _loc3_:Class = §5%§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §%!'§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §`g§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §0l§ = new _loc3_(_loc6_,_loc5_);
         §#!&§ = new _loc4_();
         §0l§.§3i§(§#!&§.§6B§,§#!&§.§4!8§);
      }
      
      public static function §>L§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §'9§.Connection)
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
      
      public static function §7!A§() : XML
      {
         if(§#x§ == null || !§#x§.Directories)
         {
            return null;
         }
         return §#x§.Directories[0];
      }
      
      public static function §0!@§(param1:String, param2:Function = null) : void
      {
         §#!&§.§0!@§(param1,param2);
      }
      
      public static function §"!§(param1:String, param2:Function) : void
      {
         §#!&§.§ !i§(param1).addCallback(param2);
      }
      
      public static function §%U§(param1:String, param2:Function) : void
      {
         §#!&§.§ !i§(param1).§@!A§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§9!h§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§>A§)
         {
            if(§-!a§)
            {
               _loc4_ = "";
               §#!-§.log("URL sending...");
               if(!§`g§ || §`g§ == "PHP")
               {
                  _loc4_ = §0l§.§`#§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §#!-§.log(_loc4_);
               }
               else if(§`g§ == "Google")
               {
                  _loc4_ = §0l§.§`#§() + param1;
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
                  §#!-§.log(_loc4_);
               }
            }
            _loc3_ = §#!&§.§ !i§(param1);
            if(_loc3_.§%x§())
            {
               §0l§.sendRequest(param1,param2);
            }
            else
            {
               §#!-§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §#!-§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function enable() : void
      {
         §>A§ = true;
         §0l§.§^!$§();
      }
      
      public static function disable() : void
      {
         §>A§ = false;
         §0l§.§+[§();
      }
      
      public static function §1!O§() : Boolean
      {
         return §>A§;
      }
      
      public static function §;&§(param1:String) : void
      {
         §#!&§.§ !i§(param1).§6T§(true);
      }
      
      public static function §"#§(param1:String) : void
      {
         §#!&§.§ !i§(param1).§6T§(false);
      }
      
      public static function §9!`§() : String
      {
         return §0l§.§`#§();
      }
      
      public static function §9!W§() : Boolean
      {
         return §'9§ != null;
      }
   }
}
