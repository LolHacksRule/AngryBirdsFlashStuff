package §2<§
{
   import §+!c§.§;!=§;
   
   public class §8M§
   {
      
      private static var §4]§:§@d§;
      
      private static var §97§:§;!x§;
      
      private static var §2n§:Boolean = true;
      
      public static var §+s§:String = "";
      
      public static var §'"G§:XML;
      
      public static var §^!n§:XML;
      
      public static const § !z§:Boolean = true;
       
      
      public function §8M§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§'"G§ == null)
         {
            §;!=§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §3""§(param1,§'"G§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §3""§(§'"G§.Default[0].toString(),§'"G§);
         }
         §;!=§.log("Using connection profile:" + _loc2_.Id[0]);
         §^!n§ = _loc2_;
         var _loc3_:Class = §0g§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §use §[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §+s§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §4]§ = new _loc3_(_loc6_,_loc5_);
         §97§ = new _loc4_();
         §4]§.§3!L§(§97§.§!"&§,§97§.§'Y§);
      }
      
      public static function §3""§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §'"G§.Connection)
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
      
      public static function §+!y§() : XML
      {
         if(§^!n§ == null || !§^!n§.Directories)
         {
            return null;
         }
         return §^!n§.Directories[0];
      }
      
      public static function §#H§(param1:String, param2:Function = null) : void
      {
         §97§.§#H§(param1,param2);
      }
      
      public static function §[#§(param1:String, param2:Function) : void
      {
         §97§.§'!A§(param1).addCallback(param2);
      }
      
      public static function §&!#§(param1:String, param2:Function) : void
      {
         §97§.§'!A§(param1).§"!6§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§@`§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§2n§)
         {
            if(§ !z§)
            {
               _loc4_ = "";
               §;!=§.log("URL sending...");
               if(!§+s§ || §+s§ == "PHP")
               {
                  _loc4_ = §4]§.§="J§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §;!=§.log(_loc4_);
               }
               else if(§+s§ == "Google")
               {
                  _loc4_ = §4]§.§="J§() + param1;
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
                  §;!=§.log(_loc4_);
               }
            }
            _loc3_ = §97§.§'!A§(param1);
            if(_loc3_.§@"I§())
            {
               §4]§.sendRequest(param1,param2);
            }
            else
            {
               §;!=§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §;!=§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §@=§() : void
      {
         §2n§ = true;
         §4]§.§&J§();
      }
      
      public static function §#5§() : void
      {
         §2n§ = false;
         §4]§.§1!k§();
      }
      
      public static function §]I§() : Boolean
      {
         return §2n§;
      }
      
      public static function §;t§(param1:String) : void
      {
         §97§.§'!A§(param1).§;s§(true);
      }
      
      public static function §>!S§(param1:String) : void
      {
         §97§.§'!A§(param1).§;s§(false);
      }
      
      public static function §'!e§() : String
      {
         return §4]§.§="J§();
      }
      
      public static function §#!j§() : Boolean
      {
         return §'"G§ != null;
      }
   }
}
