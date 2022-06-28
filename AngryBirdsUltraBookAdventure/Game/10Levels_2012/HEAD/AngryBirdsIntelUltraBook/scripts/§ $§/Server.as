package § $§
{
   import §'N§.Log;
   
   public class Server
   {
      
      private static var §3+§:§]E§;
      
      private static var §?n§:ResponseHandler;
      
      private static var §!P§:Boolean = true;
      
      public static var §!!B§:String = "";
      
      public static var §]!K§:XML;
      
      public static var §?!=§:XML;
      
      public static const §&T§:Boolean = true;
       
      
      public function Server()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§]!K§ == null)
         {
            Log.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §#! §(param1,§]!K§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §#! §(§]!K§.Default[0].toString(),§]!K§);
         }
         Log.log("Using connection profile:" + _loc2_.Id[0]);
         §?!=§ = _loc2_;
         var _loc3_:Class = §1o§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §#!V§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §!!B§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §3+§ = new _loc3_(_loc6_,_loc5_);
         §?n§ = new _loc4_();
         §3+§.§%l§(§?n§.each,§?n§.§]-§);
      }
      
      public static function §#! §(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §]!K§.Connection)
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
      
      public static function § !T§() : XML
      {
         if(§?!=§ == null || !§?!=§.Directories)
         {
            return null;
         }
         return §?!=§.Directories[0];
      }
      
      public static function §8>§(param1:String, param2:Function = null) : void
      {
         §?n§.§8>§(param1,param2);
      }
      
      public static function § !V§(param1:String, param2:Function) : void
      {
         §?n§.§5>§(param1).addCallback(param2);
      }
      
      public static function §1!d§(param1:String, param2:Function) : void
      {
         §?n§.§5>§(param1).§<!<§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:ServerCommand = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§!P§)
         {
            if(§&T§)
            {
               _loc4_ = "";
               Log.log("URL sending...");
               if(!§!!B§ || §!!B§ == "PHP")
               {
                  _loc4_ = §3+§.§&!e§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  Log.log(_loc4_);
               }
               else if(§!!B§ == "Google")
               {
                  _loc4_ = §3+§.§&!e§() + param1;
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
            _loc3_ = §?n§.§5>§(param1);
            if(_loc3_.§!K§())
            {
               §3+§.sendRequest(param1,param2);
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
         §!P§ = true;
         §3+§.§@y§();
      }
      
      public static function §!_§() : void
      {
         §!P§ = false;
         §3+§.§65§();
      }
      
      public static function §=U§() : Boolean
      {
         return §!P§;
      }
      
      public static function §57§(param1:String) : void
      {
         §?n§.§5>§(param1).§@!K§(true);
      }
      
      public static function §?9§(param1:String) : void
      {
         §?n§.§5>§(param1).§@!K§(false);
      }
      
      public static function §1X§() : String
      {
         return §3+§.§&!e§();
      }
      
      public static function §`!3§() : Boolean
      {
         return §]!K§ != null;
      }
   }
}
