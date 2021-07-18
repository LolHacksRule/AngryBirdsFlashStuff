package §_-bz§
{
   import §_-e3§.§_-54§;
   
   public class §_-uC§
   {
      
      private static var §_-4-§:§_-fh§;
      
      private static var §implements§:§_-aP§;
      
      private static var §_-xw§:Boolean = true;
      
      public static var §_-fg§:String = "";
      
      public static var §_-Cf§:XML;
      
      public static var §_-9Q§:XML;
      
      public static const §_-cJ§:Boolean = true;
       
      
      public function §_-uC§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§_-Cf§ == null)
         {
            §_-54§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §_-8a§(param1,§_-Cf§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §_-8a§(§_-Cf§.Default[0].toString(),§_-Cf§);
         }
         §_-54§.log("Using connection profile:" + _loc2_.Id[0]);
         §_-9Q§ = _loc2_;
         var _loc3_:Class = §_-91§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §_-e6§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §_-fg§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §_-4-§ = new _loc3_(_loc6_,_loc5_);
         §implements§ = new _loc4_();
         §_-4-§.§_-9-§(§implements§.§_-n1§,§implements§.§_-Yr§);
      }
      
      public static function §_-8a§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §_-Cf§.Connection)
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
      
      public static function §_-V9§() : XML
      {
         if(§_-9Q§ == null || !§_-9Q§.Directories)
         {
            return null;
         }
         return §_-9Q§.Directories[0];
      }
      
      public static function §_-RY§(param1:String, param2:Function = null) : void
      {
         §implements§.§_-RY§(param1,param2);
      }
      
      public static function §_-98§(param1:String, param2:Function) : void
      {
         §implements§.§_-qh§(param1).addCallback(param2);
      }
      
      public static function §_-6t§(param1:String, param2:Function) : void
      {
         §implements§.§_-qh§(param1).§_-IR§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§_-BW§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§_-xw§)
         {
            if(§_-cJ§)
            {
               _loc4_ = "";
               §_-54§.log("URL sending...");
               if(!§_-fg§ || §_-fg§ == "PHP")
               {
                  _loc4_ = §_-4-§.§_-05§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §_-54§.log(_loc4_);
               }
               else if(§_-fg§ == "Google")
               {
                  _loc4_ = §_-4-§.§_-05§() + param1;
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
                  §_-54§.log(_loc4_);
               }
            }
            _loc3_ = §implements§.§_-qh§(param1);
            if(_loc3_.§_-jv§())
            {
               §_-4-§.sendRequest(param1,param2);
            }
            else
            {
               §_-54§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §_-54§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §_-BV§() : void
      {
         §_-xw§ = true;
         §_-4-§.§_-0X§();
      }
      
      public static function §_-Dn§() : void
      {
         §_-xw§ = false;
         §_-4-§.§_-u0§();
      }
      
      public static function §_-00§() : Boolean
      {
         return §_-xw§;
      }
      
      public static function §_-1f§(param1:String) : void
      {
         §implements§.§_-qh§(param1).§_-ut§(true);
      }
      
      public static function §_-Gn§(param1:String) : void
      {
         §implements§.§_-qh§(param1).§_-ut§(false);
      }
      
      public static function §_-nM§() : String
      {
         return §_-4-§.§_-05§();
      }
      
      public static function §_-cn§() : Boolean
      {
         return §_-Cf§ != null;
      }
   }
}
