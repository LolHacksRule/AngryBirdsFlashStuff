package §#!2§
{
   import §'m§.§^S§;
   
   public class §0T§
   {
      
      private static var §]$§:§]9§;
      
      private static var §+$§:§6H§;
      
      private static var §@p§:Boolean = true;
      
      public static var §]!>§:String = "";
      
      public static var § do§:XML;
      
      public static var §=P§:XML;
      
      public static const §=G§:Boolean = true;
       
      
      public function §0T§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§ do§ == null)
         {
            §^S§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §#!H§(param1,§ do§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §#!H§(§ do§.Default[0].toString(),§ do§);
         }
         §^S§.log("Using connection profile:" + _loc2_.Id[0]);
         §=P§ = _loc2_;
         var _loc3_:Class = §`U§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = § !4§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §]!>§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §]$§ = new _loc3_(_loc6_,_loc5_);
         §+$§ = new _loc4_();
         §]$§.§[!#§(§+$§.§6O§,§+$§.§>@§);
      }
      
      public static function §#!H§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in § do§.Connection)
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
      
      public static function §@!&§() : XML
      {
         if(§=P§ == null || !§=P§.Directories)
         {
            return null;
         }
         return §=P§.Directories[0];
      }
      
      public static function § H§(param1:String, param2:Function = null) : void
      {
         §+$§.§ H§(param1,param2);
      }
      
      public static function §3i§(param1:String, param2:Function) : void
      {
         §+$§.§<5§(param1).addCallback(param2);
      }
      
      public static function §`F§(param1:String, param2:Function) : void
      {
         §+$§.§<5§(param1).§@,§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§<4§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§@p§)
         {
            if(§=G§)
            {
               _loc4_ = "";
               §^S§.log("URL sending...");
               if(!§]!>§ || §]!>§ == "PHP")
               {
                  _loc4_ = §]$§.§0!@§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §^S§.log(_loc4_);
               }
               else if(§]!>§ == "Google")
               {
                  _loc4_ = §]$§.§0!@§() + param1;
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
                  §^S§.log(_loc4_);
               }
            }
            _loc3_ = §+$§.§<5§(param1);
            if(_loc3_.§'8§())
            {
               §]$§.sendRequest(param1,param2);
            }
            else
            {
               §^S§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §^S§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §true§() : void
      {
         §@p§ = true;
         §]$§.§8!"§();
      }
      
      public static function §=!5§() : void
      {
         §@p§ = false;
         §]$§.§'9§();
      }
      
      public static function §]!D§() : Boolean
      {
         return §@p§;
      }
      
      public static function §5!0§(param1:String) : void
      {
         §+$§.§<5§(param1).§-Z§(true);
      }
      
      public static function §?!%§(param1:String) : void
      {
         §+$§.§<5§(param1).§-Z§(false);
      }
      
      public static function §<_§() : String
      {
         return §]$§.§0!@§();
      }
      
      public static function §!2§() : Boolean
      {
         return § do§ != null;
      }
   }
}
