package §3@§
{
   import §>^§.§!6§;
   
   public class §>#§
   {
      
      private static var §`!3§:§+!W§;
      
      private static var §9!@§:§[X§;
      
      private static var §^!>§:Boolean = true;
      
      public static var §<!'§:String = "";
      
      public static var §5W§:XML;
      
      public static var §@U§:XML;
      
      public static const §;!>§:Boolean = true;
       
      
      public function §>#§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§5W§ == null)
         {
            §!6§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §4!B§(param1,§5W§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §4!B§(§5W§.Default[0].toString(),§5W§);
         }
         §!6§.log("Using connection profile:" + _loc2_.Id[0]);
         §@U§ = _loc2_;
         var _loc3_:Class = §1K§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §+!M§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §<!'§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §`!3§ = new _loc3_(_loc6_,_loc5_);
         §9!@§ = new _loc4_();
         §`!3§.§;§(§9!@§.§"m§,§9!@§.§1O§);
      }
      
      public static function §4!B§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §5W§.Connection)
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
      
      public static function §`g§() : XML
      {
         if(§@U§ == null || !§@U§.Directories)
         {
            return null;
         }
         return §@U§.Directories[0];
      }
      
      public static function §2!g§(param1:String, param2:Function = null) : void
      {
         §9!@§.§2!g§(param1,param2);
      }
      
      public static function §+!2§(param1:String, param2:Function) : void
      {
         §9!@§.§#!>§(param1).addCallback(param2);
      }
      
      public static function §9B§(param1:String, param2:Function) : void
      {
         §9!@§.§#!>§(param1).§,2§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§^!Q§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§^!>§)
         {
            if(§;!>§)
            {
               _loc4_ = "";
               §!6§.log("URL sending...");
               if(!§<!'§ || §<!'§ == "PHP")
               {
                  _loc4_ = §`!3§.§@5§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §!6§.log(_loc4_);
               }
               else if(§<!'§ == "Google")
               {
                  _loc4_ = §`!3§.§@5§() + param1;
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
                  §!6§.log(_loc4_);
               }
            }
            _loc3_ = §9!@§.§#!>§(param1);
            if(_loc3_.§@!?§())
            {
               §`!3§.sendRequest(param1,param2);
            }
            else
            {
               §!6§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §!6§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §&Z§() : void
      {
         §^!>§ = true;
         §`!3§.§#!_§();
      }
      
      public static function § !#§() : void
      {
         §^!>§ = false;
         §`!3§.§2!I§();
      }
      
      public static function §^m§() : Boolean
      {
         return §^!>§;
      }
      
      public static function §6!!§(param1:String) : void
      {
         §9!@§.§#!>§(param1).§&R§(true);
      }
      
      public static function §2Y§(param1:String) : void
      {
         §9!@§.§#!>§(param1).§&R§(false);
      }
      
      public static function §6a§() : String
      {
         return §`!3§.§@5§();
      }
      
      public static function §`!6§() : Boolean
      {
         return §5W§ != null;
      }
   }
}
