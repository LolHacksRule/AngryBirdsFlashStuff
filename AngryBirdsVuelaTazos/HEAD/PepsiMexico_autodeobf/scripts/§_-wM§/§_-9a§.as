package §_-wM§
{
   import §_-gM§.§_-yj§;
   
   public class §_-9a§
   {
      
      private static var §_-8f§:§_-dZ§;
      
      private static var §_-LH§:§_-6J§;
      
      private static var §_-He§:Boolean = true;
      
      public static var §_-6O§:String = "";
      
      public static var §throw§:XML;
      
      public static var §_-45§:XML;
      
      public static const §_-aQ§:Boolean = true;
       
      
      public function §_-9a§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§throw§ == null)
         {
            §_-yj§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §_-4W§(param1,§throw§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §_-4W§(§throw§.Default[0].toString(),§throw§);
         }
         §_-yj§.log("Using connection profile:" + _loc2_.Id[0]);
         §_-45§ = _loc2_;
         var _loc3_:Class = §_-Ck§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §_-3A§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §_-6O§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §_-8f§ = new _loc3_(_loc6_,_loc5_);
         §_-LH§ = new _loc4_();
         §_-8f§.§_-Dj§(§_-LH§.§_-uq§,§_-LH§.§_-yT§);
      }
      
      public static function §_-4W§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §throw§.Connection)
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
      
      public static function §_-sJ§() : XML
      {
         if(§_-45§ == null || !§_-45§.Directories)
         {
            return null;
         }
         return §_-45§.Directories[0];
      }
      
      public static function §_-DD§(param1:String, param2:Function = null) : void
      {
         §_-LH§.§_-DD§(param1,param2);
      }
      
      public static function §_-0q§(param1:String, param2:Function) : void
      {
         §_-LH§.§_-Gw§(param1).addCallback(param2);
      }
      
      public static function §_-zG§(param1:String, param2:Function) : void
      {
         §_-LH§.§_-Gw§(param1).§_-KC§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§_-nm§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§_-He§)
         {
            if(§_-aQ§)
            {
               _loc4_ = "";
               §_-yj§.log("URL sending...");
               if(!§_-6O§ || §_-6O§ == "PHP")
               {
                  _loc4_ = §_-8f§.§_-jy§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §_-yj§.log(_loc4_);
               }
               else if(§_-6O§ == "Google")
               {
                  _loc4_ = §_-8f§.§_-jy§() + param1;
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
                  §_-yj§.log(_loc4_);
               }
            }
            _loc3_ = §_-LH§.§_-Gw§(param1);
            if(_loc3_.§_-EA§())
            {
               §_-8f§.sendRequest(param1,param2);
            }
            else
            {
               §_-yj§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §_-yj§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §_-vQ§() : void
      {
         §_-He§ = true;
         §_-8f§.§_-d5§();
      }
      
      public static function §_-No§() : void
      {
         §_-He§ = false;
         §_-8f§.§_-8a§();
      }
      
      public static function §_-QC§() : Boolean
      {
         return §_-He§;
      }
      
      public static function §_-NX§(param1:String) : void
      {
         §_-LH§.§_-Gw§(param1).§_-DH§(true);
      }
      
      public static function §_-oJ§(param1:String) : void
      {
         §_-LH§.§_-Gw§(param1).§_-DH§(false);
      }
      
      public static function §_-8T§() : String
      {
         return §_-8f§.§_-jy§();
      }
      
      public static function §_-tG§() : Boolean
      {
         return §throw§ != null;
      }
   }
}
