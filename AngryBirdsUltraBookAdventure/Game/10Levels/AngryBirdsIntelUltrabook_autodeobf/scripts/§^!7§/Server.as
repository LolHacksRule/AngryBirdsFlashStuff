package §^!7§
{
   import §<u§.Log;
   
   public class Server
   {
      
      private static var §`T§:§=]§;
      
      private static var §-U§:ResponseHandler;
      
      private static var §6!B§:Boolean = true;
      
      public static var §^!G§:String = "";
      
      public static var §[`§:XML;
      
      public static var §[!#§:XML;
      
      public static const §6P§:Boolean = true;
       
      
      public function Server()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§[`§ == null)
         {
            Log.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §'S§(param1,§[`§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §'S§(§[`§.Default[0].toString(),§[`§);
         }
         Log.log("Using connection profile:" + _loc2_.Id[0]);
         §[!#§ = _loc2_;
         var _loc3_:Class = §,m§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §]@§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §^!G§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §`T§ = new _loc3_(_loc6_,_loc5_);
         §-U§ = new _loc4_();
         §`T§.§<]§(§-U§.§4!N§,§-U§.§=c§);
      }
      
      public static function §'S§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §[`§.Connection)
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
      
      public static function §'!%§() : XML
      {
         if(§[!#§ == null || !§[!#§.Directories)
         {
            return null;
         }
         return §[!#§.Directories[0];
      }
      
      public static function §]g§(param1:String, param2:Function = null) : void
      {
         §-U§.§]g§(param1,param2);
      }
      
      public static function §,l§(param1:String, param2:Function) : void
      {
         §-U§.§1![§(param1).addCallback(param2);
      }
      
      public static function §-!e§(param1:String, param2:Function) : void
      {
         §-U§.§1![§(param1).§>!X§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:ServerCommand = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§6!B§)
         {
            if(§6P§)
            {
               _loc4_ = "";
               Log.log("URL sending...");
               if(!§^!G§ || §^!G§ == "PHP")
               {
                  _loc4_ = §`T§.§>?§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  Log.log(_loc4_);
               }
               else if(§^!G§ == "Google")
               {
                  _loc4_ = §`T§.§>?§() + param1;
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
                  Log.log(_loc4_);
               }
            }
            _loc3_ = §-U§.§1![§(param1);
            if(_loc3_.§;!I§())
            {
               §`T§.sendRequest(param1,param2);
            }
            else
            {
               Log.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            Log.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function enable() : void
      {
         §6!B§ = true;
         §`T§.§03§();
      }
      
      public static function §`!0§() : void
      {
         §6!B§ = false;
         §`T§.§=!&§();
      }
      
      public static function §'5§() : Boolean
      {
         return §6!B§;
      }
      
      public static function §6!k§(param1:String) : void
      {
         §-U§.§1![§(param1).§1!g§(true);
      }
      
      public static function §9p§(param1:String) : void
      {
         §-U§.§1![§(param1).§1!g§(false);
      }
      
      public static function §2s§() : String
      {
         return §`T§.§>?§();
      }
      
      public static function §"!B§() : Boolean
      {
         return §[`§ != null;
      }
   }
}
