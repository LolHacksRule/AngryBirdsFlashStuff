package §-^§
{
   import §1!B§.§<m§;
   
   public class §?7§
   {
      
      private static var §6!y§:§#J§;
      
      private static var §0`§:§5?§;
      
      private static var §]!p§:Boolean = true;
      
      public static var §!!y§:String = "";
      
      public static var §[!d§:XML;
      
      public static var §#!f§:XML;
      
      public static const §8<§:Boolean = true;
       
      
      public function §?7§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§[!d§ == null)
         {
            §<m§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §1!d§(param1,§[!d§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §1!d§(§[!d§.Default[0].toString(),§[!d§);
         }
         §<m§.log("Using connection profile:" + _loc2_.Id[0]);
         §#!f§ = _loc2_;
         var _loc3_:Class = §7!9§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §0!D§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §!!y§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §6!y§ = new _loc3_(_loc6_,_loc5_);
         §0`§ = new _loc4_();
         §6!y§.§%,§(§0`§.§[!9§,§0`§.§4!l§);
      }
      
      public static function §1!d§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §[!d§.Connection)
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
      
      public static function §7h§() : XML
      {
         if(§#!f§ == null || !§#!f§.Directories)
         {
            return null;
         }
         return §#!f§.Directories[0];
      }
      
      public static function §,!c§(param1:String, param2:Function = null) : void
      {
         §0`§.§,!c§(param1,param2);
      }
      
      public static function §@!m§(param1:String, param2:Function) : void
      {
         §0`§.§=O§(param1).addCallback(param2);
      }
      
      public static function §8!^§(param1:String, param2:Function) : void
      {
         §0`§.§=O§(param1).§=+§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§=q§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§]!p§)
         {
            if(§8<§)
            {
               _loc4_ = "";
               §<m§.log("URL sending...");
               if(!§!!y§ || §!!y§ == "PHP")
               {
                  _loc4_ = §6!y§.§ !§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §<m§.log(_loc4_);
               }
               else if(§!!y§ == "Google")
               {
                  _loc4_ = §6!y§.§ !§() + param1;
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
                  §<m§.log(_loc4_);
               }
            }
            _loc3_ = §0`§.§=O§(param1);
            if(_loc3_.§[N§())
            {
               §6!y§.sendRequest(param1,param2);
            }
            else
            {
               §<m§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §<m§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function § A§() : void
      {
         §]!p§ = true;
         §6!y§.§>^§();
      }
      
      public static function §,`§() : void
      {
         §]!p§ = false;
         §6!y§.§>"§();
      }
      
      public static function §&c§() : Boolean
      {
         return §]!p§;
      }
      
      public static function §6I§(param1:String) : void
      {
         §0`§.§=O§(param1).§^"§(true);
      }
      
      public static function §5!6§(param1:String) : void
      {
         §0`§.§=O§(param1).§^"§(false);
      }
      
      public static function §0!3§() : String
      {
         return §6!y§.§ !§();
      }
      
      public static function §8!i§() : Boolean
      {
         return §[!d§ != null;
      }
   }
}
