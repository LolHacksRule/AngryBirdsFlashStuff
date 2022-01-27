package §]8§
{
   import §!6§.§3!5§;
   
   public class §6v§
   {
      
      private static var §-T§:§04§;
      
      private static var §1S§:§=!,§;
      
      private static var §>'§:Boolean = true;
      
      public static var §+V§:String = "";
      
      public static var §@8§:XML;
      
      public static var §]!&§:XML;
      
      public static const §7N§:Boolean = true;
       
      
      public function §6v§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§@8§ == null)
         {
            §3!5§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §;!§(param1,§@8§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §;!§(§@8§.Default[0].toString(),§@8§);
         }
         §3!5§.log("Using connection profile:" + _loc2_.Id[0]);
         §]!&§ = _loc2_;
         var _loc3_:Class = §"P§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §7!C§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §+V§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §-T§ = new _loc3_(_loc6_,_loc5_);
         §1S§ = new _loc4_();
         §-T§.§5!$§(§1S§.§0y§,§1S§.§]g§);
      }
      
      public static function §;!§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §@8§.Connection)
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
      
      public static function §`!-§() : XML
      {
         if(§]!&§ == null || !§]!&§.Directories)
         {
            return null;
         }
         return §]!&§.Directories[0];
      }
      
      public static function §-J§(param1:String, param2:Function = null) : void
      {
         §1S§.§-J§(param1,param2);
      }
      
      public static function §'O§(param1:String, param2:Function) : void
      {
         §1S§.§#!Q§(param1).addCallback(param2);
      }
      
      public static function §+§(param1:String, param2:Function) : void
      {
         §1S§.§#!Q§(param1).§3_§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§[!P§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§>'§)
         {
            if(§7N§)
            {
               _loc4_ = "";
               §3!5§.log("URL sending...");
               if(!§+V§ || §+V§ == "PHP")
               {
                  _loc4_ = §-T§.§1,§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §3!5§.log(_loc4_);
               }
               else if(§+V§ == "Google")
               {
                  _loc4_ = §-T§.§1,§() + param1;
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
                  §3!5§.log(_loc4_);
               }
            }
            _loc3_ = §1S§.§#!Q§(param1);
            if(_loc3_.§ K§())
            {
               §-T§.sendRequest(param1,param2);
            }
            else
            {
               §3!5§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §3!5§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §true§() : void
      {
         §>'§ = true;
         §-T§.§5!J§();
      }
      
      public static function §4!N§() : void
      {
         §>'§ = false;
         §-T§.§=V§();
      }
      
      public static function §%'§() : Boolean
      {
         return §>'§;
      }
      
      public static function §`6§(param1:String) : void
      {
         §1S§.§#!Q§(param1).§#!O§(true);
      }
      
      public static function §]$§(param1:String) : void
      {
         §1S§.§#!Q§(param1).§#!O§(false);
      }
      
      public static function §7v§() : String
      {
         return §-T§.§1,§();
      }
      
      public static function §#!6§() : Boolean
      {
         return §@8§ != null;
      }
   }
}
