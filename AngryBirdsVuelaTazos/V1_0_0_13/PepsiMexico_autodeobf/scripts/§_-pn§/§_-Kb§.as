package §_-pn§
{
   import §_-ex§.§_-mR§;
   
   public class §_-Kb§
   {
      
      private static var §_-BV§:§_-iK§;
      
      private static var §_-B0§:§_-Pt§;
      
      private static var §_-8q§:Boolean = true;
      
      public static var §_-dg§:String = "";
      
      public static var §_-Qr§:XML;
      
      public static var §_-uV§:XML;
      
      public static const §_-cJ§:Boolean = true;
       
      
      public function §_-Kb§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§_-Qr§ == null)
         {
            §_-mR§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §null §(param1,§_-Qr§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §null §(§_-Qr§.Default[0].toString(),§_-Qr§);
         }
         §_-mR§.log("Using connection profile:" + _loc2_.Id[0]);
         §_-uV§ = _loc2_;
         var _loc3_:Class = §_-Kd§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §_-FW§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §_-dg§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §_-BV§ = new _loc3_(_loc6_,_loc5_);
         §_-B0§ = new _loc4_();
         §_-BV§.§_-rq§(§_-B0§.§_-4f§,§_-B0§.§ if§);
      }
      
      public static function §null §(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §_-Qr§.Connection)
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
      
      public static function §_-CG§() : XML
      {
         if(§_-uV§ == null || !§_-uV§.Directories)
         {
            return null;
         }
         return §_-uV§.Directories[0];
      }
      
      public static function §_-CL§(param1:String, param2:Function = null) : void
      {
         §_-B0§.§_-CL§(param1,param2);
      }
      
      public static function §_-25§(param1:String, param2:Function) : void
      {
         §_-B0§.§_-KU§(param1).addCallback(param2);
      }
      
      public static function §_-Mu§(param1:String, param2:Function) : void
      {
         §_-B0§.§_-KU§(param1).§_-3D§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§_-4a§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§_-8q§)
         {
            if(§_-cJ§)
            {
               _loc4_ = "";
               §_-mR§.log("URL sending...");
               if(!§_-dg§ || §_-dg§ == "PHP")
               {
                  _loc4_ = §_-BV§.§_-M4§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §_-mR§.log(_loc4_);
               }
               else if(§_-dg§ == "Google")
               {
                  _loc4_ = §_-BV§.§_-M4§() + param1;
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
                  §_-mR§.log(_loc4_);
               }
            }
            _loc3_ = §_-B0§.§_-KU§(param1);
            if(_loc3_.§_-Bl§())
            {
               §_-BV§.sendRequest(param1,param2);
            }
            else
            {
               §_-mR§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §_-mR§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §_-MU§() : void
      {
         §_-8q§ = true;
         §_-BV§.§_-mK§();
      }
      
      public static function §_-Qz§() : void
      {
         §_-8q§ = false;
         §_-BV§.§_-dB§();
      }
      
      public static function §_-qV§() : Boolean
      {
         return §_-8q§;
      }
      
      public static function §_-9L§(param1:String) : void
      {
         §_-B0§.§_-KU§(param1).§_-Ie§(true);
      }
      
      public static function §_-rK§(param1:String) : void
      {
         §_-B0§.§_-KU§(param1).§_-Ie§(false);
      }
      
      public static function §_-0D§() : String
      {
         return §_-BV§.§_-M4§();
      }
      
      public static function § var§() : Boolean
      {
         return §_-Qr§ != null;
      }
   }
}
