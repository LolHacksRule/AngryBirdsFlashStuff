package §4S§
{
   import §6"p§.§^"t§;
   
   public class §<#j§
   {
      
      private static var §?`§:§-#c§;
      
      private static var §[d§:§0!]§;
      
      private static var §;z§:Boolean = true;
      
      public static var §""L§:String = "";
      
      public static var §4c§:XML;
      
      public static var §8!C§:XML;
      
      public static const §,!a§:Boolean = true;
       
      
      public function §<#j§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§4c§ == null)
         {
            §^"t§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §0!y§(param1,§4c§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §0!y§(§4c§.Default[0].toString(),§4c§);
         }
         §^"t§.log("Using connection profile:" + _loc2_.Id[0]);
         §8!C§ = _loc2_;
         var _loc3_:Class = §8h§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §3#n§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §""L§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §?`§ = new _loc3_(_loc6_,_loc5_);
         §[d§ = new _loc4_();
         §?`§.§@A§(§[d§.§5!!§,§[d§.§^"i§);
      }
      
      public static function §0!y§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §4c§.Connection)
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
      
      public static function §<!b§() : XML
      {
         if(§8!C§ == null || !§8!C§.Directories)
         {
            return null;
         }
         return §8!C§.Directories[0];
      }
      
      public static function §`"A§(param1:String, param2:Function = null) : void
      {
         §[d§.§`"A§(param1,param2);
      }
      
      public static function §6J§(param1:String, param2:Function) : void
      {
         §[d§.§3o§(param1).addCallback(param2);
      }
      
      public static function §-h§(param1:String, param2:Function) : void
      {
         §[d§.§3o§(param1).§&#&§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§34§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§;z§)
         {
            if(§,!a§)
            {
               _loc4_ = "";
               §^"t§.log("URL sending...");
               if(!§""L§ || §""L§ == "PHP")
               {
                  _loc4_ = §?`§.§-#N§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §^"t§.log(_loc4_);
               }
               else if(§""L§ == "Google")
               {
                  _loc4_ = §?`§.§-#N§() + param1;
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
                  §^"t§.log(_loc4_);
               }
            }
            _loc3_ = §[d§.§3o§(param1);
            if(_loc3_.§97§())
            {
               §?`§.sendRequest(param1,param2);
            }
            else
            {
               §^"t§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §^"t§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function enable() : void
      {
         §;z§ = true;
         §?`§.§0$'§();
      }
      
      public static function disable() : void
      {
         §;z§ = false;
         §?`§.§2!A§();
      }
      
      public static function §9#e§() : Boolean
      {
         return §;z§;
      }
      
      public static function §1g§(param1:String) : void
      {
         §[d§.§3o§(param1).§?!9§(true);
      }
      
      public static function §;]§(param1:String) : void
      {
         §[d§.§3o§(param1).§?!9§(false);
      }
      
      public static function §7#x§() : String
      {
         return §?`§.§-#N§();
      }
      
      public static function §`"N§() : Boolean
      {
         return §4c§ != null;
      }
   }
}
