package §_-ZV§
{
   import §_-RG§.§_-HT§;
   
   public class §_-6k§
   {
      
      private static var §_-XM§:§_-K6§;
      
      private static var §_-ss§:§_-pK§;
      
      private static var §_-vV§:Boolean = true;
      
      public static var §_-9K§:String = "";
      
      public static var §_-iG§:XML;
      
      public static var §_-iD§:XML;
      
      public static const §_-bh§:Boolean = true;
       
      
      public function §_-6k§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§_-iG§ == null)
         {
            §_-HT§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §_-6u§(param1,§_-iG§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §_-6u§(§_-iG§.Default[0].toString(),§_-iG§);
         }
         §_-HT§.log("Using connection profile:" + _loc2_.Id[0]);
         §_-iD§ = _loc2_;
         var _loc3_:Class = §_-HJ§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §_-jw§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §_-9K§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §_-XM§ = new _loc3_(_loc6_,_loc5_);
         §_-ss§ = new _loc4_();
         §_-XM§.§_-J1§(§_-ss§.§_-f6§,§_-ss§.§_-jx§);
      }
      
      public static function §_-6u§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §_-iG§.Connection)
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
      
      public static function §_-tx§() : XML
      {
         if(§_-iD§ == null || !§_-iD§.Directories)
         {
            return null;
         }
         return §_-iD§.Directories[0];
      }
      
      public static function §class§(param1:String, param2:Function = null) : void
      {
         §_-ss§.§class§(param1,param2);
      }
      
      public static function §for§(param1:String, param2:Function) : void
      {
         §_-ss§.§_-a7§(param1).addCallback(param2);
      }
      
      public static function §_-L-§(param1:String, param2:Function) : void
      {
         §_-ss§.§_-a7§(param1).§_-LE§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§_-5B§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§_-vV§)
         {
            if(§_-bh§)
            {
               _loc4_ = "";
               §_-HT§.log("URL sending...");
               if(!§_-9K§ || §_-9K§ == "PHP")
               {
                  _loc4_ = §_-XM§.§_-af§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §_-HT§.log(_loc4_);
               }
               else if(§_-9K§ == "Google")
               {
                  _loc4_ = §_-XM§.§_-af§() + param1;
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
                  §_-HT§.log(_loc4_);
               }
            }
            _loc3_ = §_-ss§.§_-a7§(param1);
            if(_loc3_.§_-uz§())
            {
               §_-XM§.sendRequest(param1,param2);
            }
            else
            {
               §_-HT§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §_-HT§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §_-AQ§() : void
      {
         §_-vV§ = true;
         §_-XM§.§_-uS§();
      }
      
      public static function §_-YV§() : void
      {
         §_-vV§ = false;
         §_-XM§.§_-cO§();
      }
      
      public static function §_-Jf§() : Boolean
      {
         return §_-vV§;
      }
      
      public static function §_-aC§(param1:String) : void
      {
         §_-ss§.§_-a7§(param1).§_-n7§(true);
      }
      
      public static function §_-iT§(param1:String) : void
      {
         §_-ss§.§_-a7§(param1).§_-n7§(false);
      }
      
      public static function §_-jg§() : String
      {
         return §_-XM§.§_-af§();
      }
      
      public static function §_-Y1§() : Boolean
      {
         return §_-iG§ != null;
      }
   }
}
