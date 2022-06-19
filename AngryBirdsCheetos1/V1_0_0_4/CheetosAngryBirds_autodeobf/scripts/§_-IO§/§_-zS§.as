package §_-IO§
{
   import §_-r6§.§_-Oy§;
   
   public class §_-zS§
   {
      
      private static var §_-UL§:§_-7h§;
      
      private static var §_-wS§:§_-NR§;
      
      private static var §_-Px§:Boolean = true;
      
      public static var §_-GV§:String = "";
      
      public static var §_-le§:XML;
      
      public static var §_-Ko§:XML;
      
      public static const §_-72§:Boolean = true;
       
      
      public function §_-zS§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§_-le§ == null)
         {
            §_-Oy§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §_-a1§(param1,§_-le§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §_-a1§(§_-le§.Default[0].toString(),§_-le§);
         }
         §_-Oy§.log("Using connection profile:" + _loc2_.Id[0]);
         §_-Ko§ = _loc2_;
         var _loc3_:Class = §_-PO§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §_-DE§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §_-GV§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §_-UL§ = new _loc3_(_loc6_,_loc5_);
         §_-wS§ = new _loc4_();
         §_-UL§.§_-EN§(§_-wS§.§_-ho§,§_-wS§.§_-Sr§);
      }
      
      public static function §_-a1§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §_-le§.Connection)
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
      
      public static function §_-Jv§() : XML
      {
         if(§_-Ko§ == null || !§_-Ko§.Directories)
         {
            return null;
         }
         return §_-Ko§.Directories[0];
      }
      
      public static function §_-UI§(param1:String, param2:Function = null) : void
      {
         §_-wS§.§_-UI§(param1,param2);
      }
      
      public static function §_-mG§(param1:String, param2:Function) : void
      {
         §_-wS§.§_-z6§(param1).addCallback(param2);
      }
      
      public static function §_-2f§(param1:String, param2:Function) : void
      {
         §_-wS§.§_-z6§(param1).§_-Mf§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§_-S1§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§_-Px§)
         {
            if(§_-72§)
            {
               _loc4_ = "";
               §_-Oy§.log("URL sending...");
               if(!§_-GV§ || §_-GV§ == "PHP")
               {
                  _loc4_ = §_-UL§.§_-AA§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §_-Oy§.log(_loc4_);
               }
               else if(§_-GV§ == "Google")
               {
                  _loc4_ = §_-UL§.§_-AA§() + param1;
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
                  §_-Oy§.log(_loc4_);
               }
            }
            _loc3_ = §_-wS§.§_-z6§(param1);
            if(_loc3_.§for §())
            {
               §_-UL§.sendRequest(param1,param2);
            }
            else
            {
               §_-Oy§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §_-Oy§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §_-HX§() : void
      {
         §_-Px§ = true;
         §_-UL§.§_-zp§();
      }
      
      public static function §_-Yp§() : void
      {
         §_-Px§ = false;
         §_-UL§.§_-ab§();
      }
      
      public static function §_-1b§() : Boolean
      {
         return §_-Px§;
      }
      
      public static function §_-GP§(param1:String) : void
      {
         §_-wS§.§_-z6§(param1).§_-uC§(true);
      }
      
      public static function §_-fD§(param1:String) : void
      {
         §_-wS§.§_-z6§(param1).§_-uC§(false);
      }
      
      public static function §_-gu§() : String
      {
         return §_-UL§.§_-AA§();
      }
      
      public static function §_-i5§() : Boolean
      {
         return §_-le§ != null;
      }
   }
}
