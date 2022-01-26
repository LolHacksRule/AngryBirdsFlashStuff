package §_-nd§
{
   import §_-ZG§.§_-Ne§;
   
   public class §_-wz§
   {
      
      private static var §_-mx§:§_-N2§;
      
      private static var §_-2O§:§_-qA§;
      
      private static var §_-Au§:Boolean = true;
      
      public static var §_-VT§:String = "";
      
      public static var §_-5m§:XML;
      
      public static var §_-RX§:XML;
      
      public static const §_-j7§:Boolean = true;
       
      
      public function §_-wz§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§_-5m§ == null)
         {
            §_-Ne§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §_-ar§(param1,§_-5m§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §_-ar§(§_-5m§.Default[0].toString(),§_-5m§);
         }
         §_-Ne§.log("Using connection profile:" + _loc2_.Id[0]);
         §_-RX§ = _loc2_;
         var _loc3_:Class = §_-6S§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §_-Cy§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §_-VT§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §_-mx§ = new _loc3_(_loc6_,_loc5_);
         §_-2O§ = new _loc4_();
         §_-mx§.§_-NO§(§_-2O§.§_-Xl§,§_-2O§.§_-oB§);
      }
      
      public static function §_-ar§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §_-5m§.Connection)
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
      
      public static function §_-XN§() : XML
      {
         if(§_-RX§ == null || !§_-RX§.Directories)
         {
            return null;
         }
         return §_-RX§.Directories[0];
      }
      
      public static function §_-II§(param1:String, param2:Function = null) : void
      {
         §_-2O§.§_-II§(param1,param2);
      }
      
      public static function §_-8j§(param1:String, param2:Function) : void
      {
         §_-2O§.§_-MJ§(param1).addCallback(param2);
      }
      
      public static function §_-a5§(param1:String, param2:Function) : void
      {
         §_-2O§.§_-MJ§(param1).§_-bv§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§_-YO§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§_-Au§)
         {
            if(§_-j7§)
            {
               _loc4_ = "";
               §_-Ne§.log("URL sending...");
               if(!§_-VT§ || §_-VT§ == "PHP")
               {
                  _loc4_ = §_-mx§.§_-E9§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §_-Ne§.log(_loc4_);
               }
               else if(§_-VT§ == "Google")
               {
                  _loc4_ = §_-mx§.§_-E9§() + param1;
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
                  §_-Ne§.log(_loc4_);
               }
            }
            _loc3_ = §_-2O§.§_-MJ§(param1);
            if(_loc3_.§_-fS§())
            {
               §_-mx§.sendRequest(param1,param2);
            }
            else
            {
               §_-Ne§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §_-Ne§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §_-d-§() : void
      {
         §_-Au§ = true;
         §_-mx§.§_-tC§();
      }
      
      public static function §_-CG§() : void
      {
         §_-Au§ = false;
         §_-mx§.§_-bm§();
      }
      
      public static function §_-kU§() : Boolean
      {
         return §_-Au§;
      }
      
      public static function §_-x§(param1:String) : void
      {
         §_-2O§.§_-MJ§(param1).§_-Xf§(true);
      }
      
      public static function §_-4k§(param1:String) : void
      {
         §_-2O§.§_-MJ§(param1).§_-Xf§(false);
      }
      
      public static function §_-6E§() : String
      {
         return §_-mx§.§_-E9§();
      }
      
      public static function §_-98§() : Boolean
      {
         return §_-5m§ != null;
      }
   }
}
