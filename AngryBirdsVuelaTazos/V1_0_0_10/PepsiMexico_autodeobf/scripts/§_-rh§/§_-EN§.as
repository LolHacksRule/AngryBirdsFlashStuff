package §_-rh§
{
   import §_-ot§.§_-o6§;
   
   public class §_-EN§
   {
      
      private static var §_-LI§:§_-wL§;
      
      private static var §_-xG§:§_-qr§;
      
      private static var §_-JS§:Boolean = true;
      
      public static var §_-a4§:String = "";
      
      public static var §_-Ga§:XML;
      
      public static var §_-Bs§:XML;
      
      public static const §_-ES§:Boolean = true;
       
      
      public function §_-EN§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§_-Ga§ == null)
         {
            §_-o6§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §_-qp§(param1,§_-Ga§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §_-qp§(§_-Ga§.Default[0].toString(),§_-Ga§);
         }
         §_-o6§.log("Using connection profile:" + _loc2_.Id[0]);
         §_-Bs§ = _loc2_;
         var _loc3_:Class = §_-SF§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §_-LY§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §_-a4§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §_-LI§ = new _loc3_(_loc6_,_loc5_);
         §_-xG§ = new _loc4_();
         §_-LI§.§_-6g§(§_-xG§.§_-XG§,§_-xG§.§_-8h§);
      }
      
      public static function §_-qp§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §_-Ga§.Connection)
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
      
      public static function §_-Sl§() : XML
      {
         if(§_-Bs§ == null || !§_-Bs§.Directories)
         {
            return null;
         }
         return §_-Bs§.Directories[0];
      }
      
      public static function §_-Vo§(param1:String, param2:Function = null) : void
      {
         §_-xG§.§_-Vo§(param1,param2);
      }
      
      public static function §_-DI§(param1:String, param2:Function) : void
      {
         §_-xG§.§_-M0§(param1).addCallback(param2);
      }
      
      public static function §_-0t§(param1:String, param2:Function) : void
      {
         §_-xG§.§_-M0§(param1).§_-7x§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§_-Dj§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§_-JS§)
         {
            if(§_-ES§)
            {
               _loc4_ = "";
               §_-o6§.log("URL sending...");
               if(!§_-a4§ || §_-a4§ == "PHP")
               {
                  _loc4_ = §_-LI§.§_-15§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §_-o6§.log(_loc4_);
               }
               else if(§_-a4§ == "Google")
               {
                  _loc4_ = §_-LI§.§_-15§() + param1;
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
                  §_-o6§.log(_loc4_);
               }
            }
            _loc3_ = §_-xG§.§_-M0§(param1);
            if(_loc3_.§_-EA§())
            {
               §_-LI§.sendRequest(param1,param2);
            }
            else
            {
               §_-o6§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §_-o6§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §_-lT§() : void
      {
         §_-JS§ = true;
         §_-LI§.§_-LA§();
      }
      
      public static function §_-Pl§() : void
      {
         §_-JS§ = false;
         §_-LI§.§_-GU§();
      }
      
      public static function §_-UR§() : Boolean
      {
         return §_-JS§;
      }
      
      public static function §_-KV§(param1:String) : void
      {
         §_-xG§.§_-M0§(param1).§_-Jr§(true);
      }
      
      public static function §use §(param1:String) : void
      {
         §_-xG§.§_-M0§(param1).§_-Jr§(false);
      }
      
      public static function §_-nY§() : String
      {
         return §_-LI§.§_-15§();
      }
      
      public static function §_-oH§() : Boolean
      {
         return §_-Ga§ != null;
      }
   }
}
