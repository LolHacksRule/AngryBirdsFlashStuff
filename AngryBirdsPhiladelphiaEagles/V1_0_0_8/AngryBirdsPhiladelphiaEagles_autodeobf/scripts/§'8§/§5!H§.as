package §'8§
{
   import §"1§.§3'§;
   
   public class §5!H§
   {
      
      private static var §[m§:§0,§;
      
      private static var §"!=§:§#!O§;
      
      private static var §@I§:Boolean = true;
      
      public static var §0a§:String = "";
      
      public static var §+Q§:XML;
      
      public static var §^!1§:XML;
      
      public static const §5h§:Boolean = true;
       
      
      public function §5!H§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§+Q§ == null)
         {
            §3'§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §>0§(param1,§+Q§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §>0§(§+Q§.Default[0].toString(),§+Q§);
         }
         §3'§.log("Using connection profile:" + _loc2_.Id[0]);
         §^!1§ = _loc2_;
         var _loc3_:Class = §1!M§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §^!;§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §0a§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §[m§ = new _loc3_(_loc6_,_loc5_);
         §"!=§ = new _loc4_();
         §[m§.§<f§(§"!=§.§-c§,§"!=§.§!+§);
      }
      
      public static function §>0§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §+Q§.Connection)
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
      
      public static function §"! §() : XML
      {
         if(§^!1§ == null || !§^!1§.Directories)
         {
            return null;
         }
         return §^!1§.Directories[0];
      }
      
      public static function §&I§(param1:String, param2:Function = null) : void
      {
         §"!=§.§&I§(param1,param2);
      }
      
      public static function §"!#§(param1:String, param2:Function) : void
      {
         §"!=§.§^;§(param1).addCallback(param2);
      }
      
      public static function §<!&§(param1:String, param2:Function) : void
      {
         §"!=§.§^;§(param1).§<I§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§-3§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§@I§)
         {
            if(§5h§)
            {
               _loc4_ = "";
               §3'§.log("URL sending...");
               if(!§0a§ || §0a§ == "PHP")
               {
                  _loc4_ = §[m§.§8W§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §3'§.log(_loc4_);
               }
               else if(§0a§ == "Google")
               {
                  _loc4_ = §[m§.§8W§() + param1;
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
                  §3'§.log(_loc4_);
               }
            }
            _loc3_ = §"!=§.§^;§(param1);
            if(_loc3_.§,§())
            {
               §[m§.sendRequest(param1,param2);
            }
            else
            {
               §3'§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §3'§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §-!;§() : void
      {
         §@I§ = true;
         §[m§.§3X§();
      }
      
      public static function §]!D§() : void
      {
         §@I§ = false;
         §[m§.§&Y§();
      }
      
      public static function §#!E§() : Boolean
      {
         return §@I§;
      }
      
      public static function §6M§(param1:String) : void
      {
         §"!=§.§^;§(param1).§3!6§(true);
      }
      
      public static function §4!A§(param1:String) : void
      {
         §"!=§.§^;§(param1).§3!6§(false);
      }
      
      public static function §8e§() : String
      {
         return §[m§.§8W§();
      }
      
      public static function §2A§() : Boolean
      {
         return §+Q§ != null;
      }
   }
}
