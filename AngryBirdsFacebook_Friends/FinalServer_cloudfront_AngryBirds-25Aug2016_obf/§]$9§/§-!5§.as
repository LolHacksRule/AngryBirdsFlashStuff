package §]$9§
{
   import §!x§.§4"d§;
   
   public class §-!5§
   {
      
      private static var §>1§:§1#]§;
      
      private static var §-"t§:§&!&§;
      
      private static var §2"§:Boolean = true;
      
      public static var §6#J§:String = "";
      
      public static var §5O§:XML;
      
      public static var §"#Y§:XML;
      
      public static const §]"O§:Boolean = true;
       
      
      public function §-!5§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§5O§ == null)
         {
            §4"d§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §=#E§(param1,§5O§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §=#E§(§5O§.Default[0].toString(),§5O§);
         }
         §4"d§.log("Using connection profile:" + _loc2_.Id[0]);
         §"#Y§ = _loc2_;
         var _loc3_:Class = §[-§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §"!&§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §6#J§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §>1§ = new _loc3_(_loc6_,_loc5_);
         §-"t§ = new _loc4_();
         §>1§.§"F§(§-"t§.§3<§,§-"t§.§;`§);
      }
      
      public static function §=#E§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §5O§.Connection)
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
      
      public static function §1# §() : XML
      {
         if(§"#Y§ == null || !§"#Y§.Directories)
         {
            return null;
         }
         return §"#Y§.Directories[0];
      }
      
      public static function §+"Z§(param1:String, param2:Function = null) : void
      {
         §-"t§.§+"Z§(param1,param2);
      }
      
      public static function §%"q§(param1:String, param2:Function) : void
      {
         §-"t§.§ $+§(param1).addCallback(param2);
      }
      
      public static function §>!$§(param1:String, param2:Function) : void
      {
         §-"t§.§ $+§(param1).§5!3§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§<"+§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§2"§)
         {
            if(§]"O§)
            {
               _loc4_ = "";
               §4"d§.log("URL sending...");
               if(!§6#J§ || §6#J§ == "PHP")
               {
                  _loc4_ = §>1§.§8" §() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §4"d§.log(_loc4_);
               }
               else if(§6#J§ == "Google")
               {
                  _loc4_ = §>1§.§8" §() + param1;
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
                  §4"d§.log(_loc4_);
               }
            }
            _loc3_ = §-"t§.§ $+§(param1);
            if(_loc3_.§#B§())
            {
               §>1§.sendRequest(param1,param2);
            }
            else
            {
               §4"d§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §4"d§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function enable() : void
      {
         §2"§ = true;
         §>1§.§+W§();
      }
      
      public static function disable() : void
      {
         §2"§ = false;
         §>1§.§<#"§();
      }
      
      public static function §@!G§() : Boolean
      {
         return §2"§;
      }
      
      public static function §'!9§(param1:String) : void
      {
         §-"t§.§ $+§(param1).§,8§(true);
      }
      
      public static function §!e§(param1:String) : void
      {
         §-"t§.§ $+§(param1).§,8§(false);
      }
      
      public static function §9#t§() : String
      {
         return §>1§.§8" §();
      }
      
      public static function §^!D§() : Boolean
      {
         return §5O§ != null;
      }
   }
}
