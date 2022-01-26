package §,!A§
{
   import § N§.§]M§;
   
   public class §+!2§
   {
      
      private static var §if§:§8"§;
      
      private static var §!!G§:§9"§;
      
      private static var §7!F§:Boolean = true;
      
      public static var §8!b§:String = "";
      
      public static var §8!?§:XML;
      
      public static var §^_§:XML;
      
      public static const §7a§:Boolean = true;
       
      
      public function §+!2§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§8!?§ == null)
         {
            §]M§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §%s§(param1,§8!?§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §%s§(§8!?§.Default[0].toString(),§8!?§);
         }
         §]M§.log("Using connection profile:" + _loc2_.Id[0]);
         §^_§ = _loc2_;
         var _loc3_:Class = §"!-§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §^M§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §8!b§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §if§ = new _loc3_(_loc6_,_loc5_);
         §!!G§ = new _loc4_();
         §if§.§'d§(§!!G§.§%4§,§!!G§.§@!;§);
      }
      
      public static function §%s§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §8!?§.Connection)
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
      
      public static function §1! §() : XML
      {
         if(§^_§ == null || !§^_§.Directories)
         {
            return null;
         }
         return §^_§.Directories[0];
      }
      
      public static function §-_§(param1:String, param2:Function = null) : void
      {
         §!!G§.§-_§(param1,param2);
      }
      
      public static function §0!2§(param1:String, param2:Function) : void
      {
         §!!G§.§`§(param1).addCallback(param2);
      }
      
      public static function §4!G§(param1:String, param2:Function) : void
      {
         §!!G§.§`§(param1).§]!3§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§#!N§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§7!F§)
         {
            if(§7a§)
            {
               _loc4_ = "";
               §]M§.log("URL sending...");
               if(!§8!b§ || §8!b§ == "PHP")
               {
                  _loc4_ = §if§.§?!>§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §]M§.log(_loc4_);
               }
               else if(§8!b§ == "Google")
               {
                  _loc4_ = §if§.§?!>§() + param1;
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
                  §]M§.log(_loc4_);
               }
            }
            _loc3_ = §!!G§.§`§(param1);
            if(_loc3_.§9!5§())
            {
               §if§.sendRequest(param1,param2);
            }
            else
            {
               §]M§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §]M§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §;^§() : void
      {
         §7!F§ = true;
         §if§.§'!M§();
      }
      
      public static function §@"§() : void
      {
         §7!F§ = false;
         §if§.§8]§();
      }
      
      public static function §2U§() : Boolean
      {
         return §7!F§;
      }
      
      public static function §"!Z§(param1:String) : void
      {
         §!!G§.§`§(param1).§=Y§(true);
      }
      
      public static function §8y§(param1:String) : void
      {
         §!!G§.§`§(param1).§=Y§(false);
      }
      
      public static function §+q§() : String
      {
         return §if§.§?!>§();
      }
      
      public static function §`Q§() : Boolean
      {
         return §8!?§ != null;
      }
   }
}
