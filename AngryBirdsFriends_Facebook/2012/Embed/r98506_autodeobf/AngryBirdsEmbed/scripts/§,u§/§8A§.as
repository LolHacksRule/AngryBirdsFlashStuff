package §,u§
{
   import §-p§.§&2§;
   
   public class §8A§
   {
      
      private static var §?t§:§+=§;
      
      private static var §2!B§:§&D§;
      
      private static var §6J§:Boolean = true;
      
      public static var §`!!§:String = "";
      
      public static var §]!3§:XML;
      
      public static var §7C§:XML;
      
      public static const §@m§:Boolean = true;
       
      
      public function §8A§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§]!3§ == null)
         {
            §&2§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §6x§(param1,§]!3§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §6x§(§]!3§.Default[0].toString(),§]!3§);
         }
         §&2§.log("Using connection profile:" + _loc2_.Id[0]);
         §7C§ = _loc2_;
         var _loc3_:Class = §,L§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §2!6§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §`!!§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §?t§ = new _loc3_(_loc6_,_loc5_);
         §2!B§ = new _loc4_();
         §?t§.§9!8§(§2!B§.§&!;§,§2!B§.§%P§);
      }
      
      public static function §6x§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §]!3§.Connection)
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
      
      public static function §-8§() : XML
      {
         if(§7C§ == null || !§7C§.Directories)
         {
            return null;
         }
         return §7C§.Directories[0];
      }
      
      public static function §#m§(param1:String, param2:Function = null) : void
      {
         §2!B§.§#m§(param1,param2);
      }
      
      public static function §'!-§(param1:String, param2:Function) : void
      {
         §2!B§.§'!4§(param1).addCallback(param2);
      }
      
      public static function §;w§(param1:String, param2:Function) : void
      {
         §2!B§.§'!4§(param1).§13§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§@t§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§6J§)
         {
            if(§@m§)
            {
               _loc4_ = "";
               §&2§.log("URL sending...");
               if(!§`!!§ || §`!!§ == "PHP")
               {
                  _loc4_ = §?t§.§#6§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §&2§.log(_loc4_);
               }
               else if(§`!!§ == "Google")
               {
                  _loc4_ = §?t§.§#6§() + param1;
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
                  §&2§.log(_loc4_);
               }
            }
            _loc3_ = §2!B§.§'!4§(param1);
            if(_loc3_.§4!+§())
            {
               §?t§.sendRequest(param1,param2);
            }
            else
            {
               §&2§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §&2§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §!_§() : void
      {
         §6J§ = true;
         §?t§.§^G§();
      }
      
      public static function §6!"§() : void
      {
         §6J§ = false;
         §?t§.§6R§();
      }
      
      public static function §&%§() : Boolean
      {
         return §6J§;
      }
      
      public static function §#2§(param1:String) : void
      {
         §2!B§.§'!4§(param1).§7=§(true);
      }
      
      public static function §1s§(param1:String) : void
      {
         §2!B§.§'!4§(param1).§7=§(false);
      }
      
      public static function §6i§() : String
      {
         return §?t§.§#6§();
      }
      
      public static function §-!I§() : Boolean
      {
         return §]!3§ != null;
      }
   }
}
