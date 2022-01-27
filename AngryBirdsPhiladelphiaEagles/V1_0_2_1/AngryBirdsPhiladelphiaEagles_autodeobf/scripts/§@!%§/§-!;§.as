package §@!%§
{
   import §@V§.§`!5§;
   
   public class §-!;§
   {
      
      private static var §9'§:§`!!§;
      
      private static var §>!#§:§#8§;
      
      private static var §2O§:Boolean = true;
      
      public static var §]!5§:String = "";
      
      public static var §6Q§:XML;
      
      public static var §#%§:XML;
      
      public static const §6!7§:Boolean = true;
       
      
      public function §-!;§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§6Q§ == null)
         {
            §`!5§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §['§(param1,§6Q§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §['§(§6Q§.Default[0].toString(),§6Q§);
         }
         §`!5§.log("Using connection profile:" + _loc2_.Id[0]);
         §#%§ = _loc2_;
         var _loc3_:Class = §7l§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §;1§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §]!5§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §9'§ = new _loc3_(_loc6_,_loc5_);
         §>!#§ = new _loc4_();
         §9'§.§4C§(§>!#§.§[C§,§>!#§.§+_§);
      }
      
      public static function §['§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §6Q§.Connection)
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
      
      public static function §'-§() : XML
      {
         if(§#%§ == null || !§#%§.Directories)
         {
            return null;
         }
         return §#%§.Directories[0];
      }
      
      public static function §+!N§(param1:String, param2:Function = null) : void
      {
         §>!#§.§+!N§(param1,param2);
      }
      
      public static function §4!J§(param1:String, param2:Function) : void
      {
         §>!#§.§2!G§(param1).addCallback(param2);
      }
      
      public static function §#r§(param1:String, param2:Function) : void
      {
         §>!#§.§2!G§(param1).§6t§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§"!D§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§2O§)
         {
            if(§6!7§)
            {
               _loc4_ = "";
               §`!5§.log("URL sending...");
               if(!§]!5§ || §]!5§ == "PHP")
               {
                  _loc4_ = §9'§.§1!!§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §`!5§.log(_loc4_);
               }
               else if(§]!5§ == "Google")
               {
                  _loc4_ = §9'§.§1!!§() + param1;
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
                  §`!5§.log(_loc4_);
               }
            }
            _loc3_ = §>!#§.§2!G§(param1);
            if(_loc3_.§=z§())
            {
               §9'§.sendRequest(param1,param2);
            }
            else
            {
               §`!5§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §`!5§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §1r§() : void
      {
         §2O§ = true;
         §9'§.§!_§();
      }
      
      public static function §!!'§() : void
      {
         §2O§ = false;
         §9'§.§%J§();
      }
      
      public static function §]!%§() : Boolean
      {
         return §2O§;
      }
      
      public static function §"J§(param1:String) : void
      {
         §>!#§.§2!G§(param1).§;!<§(true);
      }
      
      public static function §'i§(param1:String) : void
      {
         §>!#§.§2!G§(param1).§;!<§(false);
      }
      
      public static function §8q§() : String
      {
         return §9'§.§1!!§();
      }
      
      public static function §"P§() : Boolean
      {
         return §6Q§ != null;
      }
   }
}
