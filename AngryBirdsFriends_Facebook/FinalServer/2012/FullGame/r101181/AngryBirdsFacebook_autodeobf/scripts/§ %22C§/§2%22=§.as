package § "C§
{
   import §6o§.§+!k§;
   
   public class §2"=§
   {
      
      private static var §?;§:§5!e§;
      
      private static var §&!Q§:§;P§;
      
      private static var §[,§:Boolean = true;
      
      public static var §^;§:String = "";
      
      public static var §+"-§:XML;
      
      public static var §-+§:XML;
      
      public static const §#"4§:Boolean = true;
       
      
      public function §2"=§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§+"-§ == null)
         {
            §+!k§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §8">§(param1,§+"-§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §8">§(§+"-§.Default[0].toString(),§+"-§);
         }
         §+!k§.log("Using connection profile:" + _loc2_.Id[0]);
         §-+§ = _loc2_;
         var _loc3_:Class = §?!1§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §=y§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §^;§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §?;§ = new _loc3_(_loc6_,_loc5_);
         §&!Q§ = new _loc4_();
         §?;§.§4!L§(§&!Q§.§?k§,§&!Q§.§>=§);
      }
      
      public static function §8">§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §+"-§.Connection)
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
      
      public static function §0!,§() : XML
      {
         if(§-+§ == null || !§-+§.Directories)
         {
            return null;
         }
         return §-+§.Directories[0];
      }
      
      public static function §'!x§(param1:String, param2:Function = null) : void
      {
         §&!Q§.§'!x§(param1,param2);
      }
      
      public static function §[!!§(param1:String, param2:Function) : void
      {
         §&!Q§.§0!`§(param1).addCallback(param2);
      }
      
      public static function §&!6§(param1:String, param2:Function) : void
      {
         §&!Q§.§0!`§(param1).§[">§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§<r§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§[,§)
         {
            if(§#"4§)
            {
               _loc4_ = "";
               §+!k§.log("URL sending...");
               if(!§^;§ || §^;§ == "PHP")
               {
                  _loc4_ = §?;§.§""%§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §+!k§.log(_loc4_);
               }
               else if(§^;§ == "Google")
               {
                  _loc4_ = §?;§.§""%§() + param1;
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
                  §+!k§.log(_loc4_);
               }
            }
            _loc3_ = §&!Q§.§0!`§(param1);
            if(_loc3_.§7!i§())
            {
               §?;§.sendRequest(param1,param2);
            }
            else
            {
               §+!k§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §+!k§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §'!m§() : void
      {
         §[,§ = true;
         §?;§.§<Y§();
      }
      
      public static function §+!X§() : void
      {
         §[,§ = false;
         §?;§.§=!6§();
      }
      
      public static function §=J§() : Boolean
      {
         return §[,§;
      }
      
      public static function §]!`§(param1:String) : void
      {
         §&!Q§.§0!`§(param1).§@S§(true);
      }
      
      public static function §;!%§(param1:String) : void
      {
         §&!Q§.§0!`§(param1).§@S§(false);
      }
      
      public static function §3D§() : String
      {
         return §?;§.§""%§();
      }
      
      public static function §%"E§() : Boolean
      {
         return §+"-§ != null;
      }
   }
}
