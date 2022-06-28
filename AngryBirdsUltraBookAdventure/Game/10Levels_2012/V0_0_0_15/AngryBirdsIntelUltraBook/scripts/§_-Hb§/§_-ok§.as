package §_-Hb§
{
   import §_-0BH§.§_-FK§;
   
   public class §_-ok§
   {
      
      private static var §_-4z§:§_-9V§;
      
      private static var §_-ks§:§_-jA§;
      
      private static var §_-qP§:Boolean = true;
      
      public static var §_-FF§:String = "";
      
      public static var §_-CT§:XML;
      
      public static var §_-1v§:XML;
      
      public static const §_-g7§:Boolean = true;
       
      
      public function §_-ok§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§_-CT§ == null)
         {
            §_-FK§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §_-PW§(param1,§_-CT§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §_-PW§(§_-CT§.Default[0].toString(),§_-CT§);
         }
         §_-FK§.log("Using connection profile:" + _loc2_.Id[0]);
         §_-1v§ = _loc2_;
         var _loc3_:Class = §_-8O§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §_-15§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §_-FF§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §_-4z§ = new _loc3_(_loc6_,_loc5_);
         §_-ks§ = new _loc4_();
         §_-4z§.§_-Et§(§_-ks§.§_-Oi§,§_-ks§.§_-03N§);
      }
      
      public static function §_-PW§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §_-CT§.Connection)
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
      
      public static function §_-Ji§() : XML
      {
         if(§_-1v§ == null || !§_-1v§.Directories)
         {
            return null;
         }
         return §_-1v§.Directories[0];
      }
      
      public static function §_-0-r§(param1:String, param2:Function = null) : void
      {
         §_-ks§.§_-0-r§(param1,param2);
      }
      
      public static function §_-pa§(param1:String, param2:Function) : void
      {
         §_-ks§.§_-nZ§(param1).addCallback(param2);
      }
      
      public static function §_-0--§(param1:String, param2:Function) : void
      {
         §_-ks§.§_-nZ§(param1).§_-tG§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§_-5p§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§_-qP§)
         {
            if(§_-g7§)
            {
               _loc4_ = "";
               §_-FK§.log("URL sending...");
               if(!§_-FF§ || §_-FF§ == "PHP")
               {
                  _loc4_ = §_-4z§.§_-Os§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §_-FK§.log(_loc4_);
               }
               else if(§_-FF§ == "Google")
               {
                  _loc4_ = §_-4z§.§_-Os§() + param1;
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
                  §_-FK§.log(_loc4_);
               }
            }
            _loc3_ = §_-ks§.§_-nZ§(param1);
            if(_loc3_.§_-r6§())
            {
               §_-4z§.sendRequest(param1,param2);
            }
            else
            {
               §_-FK§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §_-FK§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §_-Ed§() : void
      {
         §_-qP§ = true;
         §_-4z§.§_-4n§();
      }
      
      public static function §_-Ov§() : void
      {
         §_-qP§ = false;
         §_-4z§.§_-03a§();
      }
      
      public static function §_-051§() : Boolean
      {
         return §_-qP§;
      }
      
      public static function §break§(param1:String) : void
      {
         §_-ks§.§_-nZ§(param1).§_-9k§(true);
      }
      
      public static function §_-mS§(param1:String) : void
      {
         §_-ks§.§_-nZ§(param1).§_-9k§(false);
      }
      
      public static function §_-p3§() : String
      {
         return §_-4z§.§_-Os§();
      }
      
      public static function §_-UZ§() : Boolean
      {
         return §_-CT§ != null;
      }
   }
}
