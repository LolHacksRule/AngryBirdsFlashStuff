package §6!F§
{
   import §3a§.§7!+§;
   
   public class §9A§
   {
      
      private static var §>5§:§2!?§;
      
      private static var §catch§:§@!'§;
      
      private static var §%k§:Boolean = true;
      
      public static var §-[§:String = "";
      
      public static var §,[§:XML;
      
      public static var §]'§:XML;
      
      public static const §1!B§:Boolean = true;
       
      
      public function §9A§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§,[§ == null)
         {
            §7!+§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §]!L§(param1,§,[§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §]!L§(§,[§.Default[0].toString(),§,[§);
         }
         §7!+§.log("Using connection profile:" + _loc2_.Id[0]);
         §]'§ = _loc2_;
         var _loc3_:Class = §0!N§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §=!7§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §-[§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §>5§ = new _loc3_(_loc6_,_loc5_);
         §catch§ = new _loc4_();
         §>5§.§,4§(§catch§.§8g§,§catch§.§]i§);
      }
      
      public static function §]!L§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §,[§.Connection)
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
      
      public static function §,!5§() : XML
      {
         if(§]'§ == null || !§]'§.Directories)
         {
            return null;
         }
         return §]'§.Directories[0];
      }
      
      public static function §>!M§(param1:String, param2:Function = null) : void
      {
         §catch§.§>!M§(param1,param2);
      }
      
      public static function §=M§(param1:String, param2:Function) : void
      {
         §catch§.§0!&§(param1).addCallback(param2);
      }
      
      public static function §;P§(param1:String, param2:Function) : void
      {
         §catch§.§0!&§(param1).§@u§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§3!>§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§%k§)
         {
            if(§1!B§)
            {
               _loc4_ = "";
               §7!+§.log("URL sending...");
               if(!§-[§ || §-[§ == "PHP")
               {
                  _loc4_ = §>5§.§0S§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §7!+§.log(_loc4_);
               }
               else if(§-[§ == "Google")
               {
                  _loc4_ = §>5§.§0S§() + param1;
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
                  §7!+§.log(_loc4_);
               }
            }
            _loc3_ = §catch§.§0!&§(param1);
            if(_loc3_.§&!7§())
            {
               §>5§.sendRequest(param1,param2);
            }
            else
            {
               §7!+§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §7!+§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §2W§() : void
      {
         §%k§ = true;
         §>5§.§@5§();
      }
      
      public static function §%!6§() : void
      {
         §%k§ = false;
         §>5§.§7!C§();
      }
      
      public static function §2?§() : Boolean
      {
         return §%k§;
      }
      
      public static function §5Y§(param1:String) : void
      {
         §catch§.§0!&§(param1).§!!B§(true);
      }
      
      public static function §=$§(param1:String) : void
      {
         §catch§.§0!&§(param1).§!!B§(false);
      }
      
      public static function §^>§() : String
      {
         return §>5§.§0S§();
      }
      
      public static function §>s§() : Boolean
      {
         return §,[§ != null;
      }
   }
}
