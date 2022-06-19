package §_-3f§
{
   import §_-U0§.§_-tF§;
   
   public class §_-mc§
   {
      
      private static var §_-u-§:§_-dX§;
      
      private static var §_-s7§:§_-G9§;
      
      private static var §_-vz§:Boolean = true;
      
      public static var §_-7N§:String = "";
      
      public static var §_-oL§:XML;
      
      public static var §_-LS§:XML;
      
      public static const §_-q-§:Boolean = true;
       
      
      public function §_-mc§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§_-oL§ == null)
         {
            §_-tF§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §_-z5§(param1,§_-oL§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §_-z5§(§_-oL§.Default[0].toString(),§_-oL§);
         }
         §_-tF§.log("Using connection profile:" + _loc2_.Id[0]);
         §_-LS§ = _loc2_;
         var _loc3_:Class = §_-94§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §_-LV§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §_-7N§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §_-u-§ = new _loc3_(_loc6_,_loc5_);
         §_-s7§ = new _loc4_();
         §_-u-§.§_-0u§(§_-s7§.§_-Gq§,§_-s7§.§_-ZN§);
      }
      
      public static function §_-z5§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §_-oL§.Connection)
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
      
      public static function §_-ZI§() : XML
      {
         if(§_-LS§ == null || !§_-LS§.Directories)
         {
            return null;
         }
         return §_-LS§.Directories[0];
      }
      
      public static function § get§(param1:String, param2:Function = null) : void
      {
         §_-s7§.§ get§(param1,param2);
      }
      
      public static function §_-df§(param1:String, param2:Function) : void
      {
         §_-s7§.§_-aG§(param1).addCallback(param2);
      }
      
      public static function §_-Kz§(param1:String, param2:Function) : void
      {
         §_-s7§.§_-aG§(param1).§_-Zc§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§_-HB§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§_-vz§)
         {
            if(§_-q-§)
            {
               _loc4_ = "";
               §_-tF§.log("URL sending...");
               if(!§_-7N§ || §_-7N§ == "PHP")
               {
                  _loc4_ = §_-u-§.§_-T6§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §_-tF§.log(_loc4_);
               }
               else if(§_-7N§ == "Google")
               {
                  _loc4_ = §_-u-§.§_-T6§() + param1;
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
                  §_-tF§.log(_loc4_);
               }
            }
            _loc3_ = §_-s7§.§_-aG§(param1);
            if(_loc3_.§_-4r§())
            {
               §_-u-§.sendRequest(param1,param2);
            }
            else
            {
               §_-tF§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §_-tF§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §class§() : void
      {
         §_-vz§ = true;
         §_-u-§.§_-fJ§();
      }
      
      public static function §_-jk§() : void
      {
         §_-vz§ = false;
         §_-u-§.§_-Ja§();
      }
      
      public static function §_-fS§() : Boolean
      {
         return §_-vz§;
      }
      
      public static function §_-GX§(param1:String) : void
      {
         §_-s7§.§_-aG§(param1).§_-Np§(true);
      }
      
      public static function §_-yG§(param1:String) : void
      {
         §_-s7§.§_-aG§(param1).§_-Np§(false);
      }
      
      public static function §_-kx§() : String
      {
         return §_-u-§.§_-T6§();
      }
      
      public static function §_-0a§() : Boolean
      {
         return §_-oL§ != null;
      }
   }
}
