package §6!a§
{
   import §6b§.Log;
   
   public class Server
   {
      
      private static var §@n§:§?!!§;
      
      private static var §[!j§:ResponseHandler;
      
      private static var §,T§:Boolean = true;
      
      public static var §]6§:String = "";
      
      public static var §=`§:XML;
      
      public static var §@§:XML;
      
      public static const §`l§:Boolean = true;
       
      
      public function Server()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§=`§ == null)
         {
            Log.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §&$§(param1,§=`§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §&$§(§=`§.Default[0].toString(),§=`§);
         }
         Log.log("Using connection profile:" + _loc2_.Id[0]);
         §@§ = _loc2_;
         var _loc3_:Class = §"!+§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §3!Z§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §]6§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §@n§ = new _loc3_(_loc6_,_loc5_);
         §[!j§ = new _loc4_();
         §@n§.§]!5§(§[!j§.§>8§,§[!j§.§0W§);
      }
      
      public static function §&$§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §=`§.Connection)
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
      
      public static function §&7§() : XML
      {
         if(§@§ == null || !§@§.Directories)
         {
            return null;
         }
         return §@§.Directories[0];
      }
      
      public static function §&H§(param1:String, param2:Function = null) : void
      {
         §[!j§.§&H§(param1,param2);
      }
      
      public static function §`!8§(param1:String, param2:Function) : void
      {
         §[!j§.§-!T§(param1).addCallback(param2);
      }
      
      public static function §`!^§(param1:String, param2:Function) : void
      {
         §[!j§.§-!T§(param1).§in§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:ServerCommand = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§,T§)
         {
            if(§`l§)
            {
               _loc4_ = "";
               Log.log("URL sending...");
               if(!§]6§ || §]6§ == "PHP")
               {
                  _loc4_ = §@n§.§^!B§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  Log.log(_loc4_);
               }
               else if(§]6§ == "Google")
               {
                  _loc4_ = §@n§.§^!B§() + param1;
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
            _loc3_ = §[!j§.§-!T§(param1);
            if(_loc3_.§4Y§())
            {
               §@n§.sendRequest(param1,param2);
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
         §,T§ = true;
         §@n§.§1?§();
      }
      
      public static function §-Y§() : void
      {
         §,T§ = false;
         §@n§.§;k§();
      }
      
      public static function §4!7§() : Boolean
      {
         return §,T§;
      }
      
      public static function §+!B§(param1:String) : void
      {
         §[!j§.§-!T§(param1).§4%§(true);
      }
      
      public static function §,5§(param1:String) : void
      {
         §[!j§.§-!T§(param1).§4%§(false);
      }
      
      public static function §"w§() : String
      {
         return §@n§.§^!B§();
      }
      
      public static function §9'§() : Boolean
      {
         return §=`§ != null;
      }
   }
}
