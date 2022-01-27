package §break§
{
   import §-!5§.§5s§;
   
   public class §8!B§
   {
      
      private static var §=!?§:§]7§;
      
      private static var §3!5§:§@!=§;
      
      private static var §,Y§:Boolean = true;
      
      public static var §@B§:String = "";
      
      public static var §@!>§:XML;
      
      public static var §^!L§:XML;
      
      public static const §6Q§:Boolean = true;
       
      
      public function §8!B§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§@!>§ == null)
         {
            §5s§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §1b§(param1,§@!>§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §1b§(§@!>§.Default[0].toString(),§@!>§);
         }
         §5s§.log("Using connection profile:" + _loc2_.Id[0]);
         §^!L§ = _loc2_;
         var _loc3_:Class = §8!P§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §48§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §@B§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §=!?§ = new _loc3_(_loc6_,_loc5_);
         §3!5§ = new _loc4_();
         §=!?§.§;E§(§3!5§.§[T§,§3!5§.§,c§);
      }
      
      public static function §1b§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §@!>§.Connection)
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
      
      public static function §1Z§() : XML
      {
         if(§^!L§ == null || !§^!L§.Directories)
         {
            return null;
         }
         return §^!L§.Directories[0];
      }
      
      public static function §2<§(param1:String, param2:Function = null) : void
      {
         §3!5§.§2<§(param1,param2);
      }
      
      public static function §;O§(param1:String, param2:Function) : void
      {
         §3!5§.§throw§(param1).addCallback(param2);
      }
      
      public static function §8M§(param1:String, param2:Function) : void
      {
         §3!5§.§throw§(param1).§=[§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§9D§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§,Y§)
         {
            if(§6Q§)
            {
               _loc4_ = "";
               §5s§.log("URL sending...");
               if(!§@B§ || §@B§ == "PHP")
               {
                  _loc4_ = §=!?§.§ !F§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §5s§.log(_loc4_);
               }
               else if(§@B§ == "Google")
               {
                  _loc4_ = §=!?§.§ !F§() + param1;
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
                  §5s§.log(_loc4_);
               }
            }
            _loc3_ = §3!5§.§throw§(param1);
            if(_loc3_.§^!4§())
            {
               §=!?§.sendRequest(param1,param2);
            }
            else
            {
               §5s§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §5s§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §<G§() : void
      {
         §,Y§ = true;
         §=!?§.§5!<§();
      }
      
      public static function §@N§() : void
      {
         §,Y§ = false;
         §=!?§.§2r§();
      }
      
      public static function §^X§() : Boolean
      {
         return §,Y§;
      }
      
      public static function §+!2§(param1:String) : void
      {
         §3!5§.§throw§(param1).§'j§(true);
      }
      
      public static function §0g§(param1:String) : void
      {
         §3!5§.§throw§(param1).§'j§(false);
      }
      
      public static function §;B§() : String
      {
         return §=!?§.§ !F§();
      }
      
      public static function §"j§() : Boolean
      {
         return §@!>§ != null;
      }
   }
}
