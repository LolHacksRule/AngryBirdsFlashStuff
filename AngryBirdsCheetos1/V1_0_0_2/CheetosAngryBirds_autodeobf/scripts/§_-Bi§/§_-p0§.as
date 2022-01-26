package §_-Bi§
{
   import §_-aA§.§_-I0§;
   
   public class §_-p0§
   {
      
      private static var §_-5G§:§_-Cp§;
      
      private static var §_-9U§:§_-Cj§;
      
      private static var §_-3t§:Boolean = true;
      
      public static var §_-tQ§:String = "";
      
      public static var §_-NY§:XML;
      
      public static var §_-Ls§:XML;
      
      public static const §_-8v§:Boolean = true;
       
      
      public function §_-p0§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§_-NY§ == null)
         {
            §_-I0§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §_-AF§(param1,§_-NY§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §_-AF§(§_-NY§.Default[0].toString(),§_-NY§);
         }
         §_-I0§.log("Using connection profile:" + _loc2_.Id[0]);
         §_-Ls§ = _loc2_;
         var _loc3_:Class = §_-7r§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §_-T6§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §_-tQ§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §_-5G§ = new _loc3_(_loc6_,_loc5_);
         §_-9U§ = new _loc4_();
         §_-5G§.§_-A1§(§_-9U§.§_-iL§,§_-9U§.§_-Le§);
      }
      
      public static function §_-AF§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §_-NY§.Connection)
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
      
      public static function §_-zI§() : XML
      {
         if(§_-Ls§ == null || !§_-Ls§.Directories)
         {
            return null;
         }
         return §_-Ls§.Directories[0];
      }
      
      public static function §_-SY§(param1:String, param2:Function = null) : void
      {
         §_-9U§.§_-SY§(param1,param2);
      }
      
      public static function §_-rS§(param1:String, param2:Function) : void
      {
         §_-9U§.§_-Wq§(param1).addCallback(param2);
      }
      
      public static function §_-M1§(param1:String, param2:Function) : void
      {
         §_-9U§.§_-Wq§(param1).§_-p2§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§_-xr§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§_-3t§)
         {
            if(§_-8v§)
            {
               _loc4_ = "";
               §_-I0§.log("URL sending...");
               if(!§_-tQ§ || §_-tQ§ == "PHP")
               {
                  _loc4_ = §_-5G§.§_-Xl§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §_-I0§.log(_loc4_);
               }
               else if(§_-tQ§ == "Google")
               {
                  _loc4_ = §_-5G§.§_-Xl§() + param1;
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
                  §_-I0§.log(_loc4_);
               }
            }
            _loc3_ = §_-9U§.§_-Wq§(param1);
            if(_loc3_.§_-jR§())
            {
               §_-5G§.sendRequest(param1,param2);
            }
            else
            {
               §_-I0§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §_-I0§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §_-jr§() : void
      {
         §_-3t§ = true;
         §_-5G§.§_-TS§();
      }
      
      public static function §_-Kb§() : void
      {
         §_-3t§ = false;
         §_-5G§.§_-oh§();
      }
      
      public static function §_-l2§() : Boolean
      {
         return §_-3t§;
      }
      
      public static function §_-AZ§(param1:String) : void
      {
         §_-9U§.§_-Wq§(param1).§_-cx§(true);
      }
      
      public static function §_-HB§(param1:String) : void
      {
         §_-9U§.§_-Wq§(param1).§_-cx§(false);
      }
      
      public static function §_-0Q§() : String
      {
         return §_-5G§.§_-Xl§();
      }
      
      public static function §_-0M§() : Boolean
      {
         return §_-NY§ != null;
      }
   }
}
