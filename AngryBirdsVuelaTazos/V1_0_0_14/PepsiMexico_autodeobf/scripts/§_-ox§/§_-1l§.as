package §_-ox§
{
   import §_-Eo§.§_-R4§;
   
   public class §_-1l§
   {
      
      private static var §_-LD§:§_-AE§;
      
      private static var §_-MI§:§_-8h§;
      
      private static var §_-AM§:Boolean = true;
      
      public static var §_-q7§:String = "";
      
      public static var §_-9A§:XML;
      
      public static var §break§:XML;
      
      public static const §_-PE§:Boolean = true;
       
      
      public function §_-1l§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§_-9A§ == null)
         {
            §_-R4§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §_-7B§(param1,§_-9A§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §_-7B§(§_-9A§.Default[0].toString(),§_-9A§);
         }
         §_-R4§.log("Using connection profile:" + _loc2_.Id[0]);
         §break§ = _loc2_;
         var _loc3_:Class = §_-Lh§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §_-G0§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §_-q7§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §_-LD§ = new _loc3_(_loc6_,_loc5_);
         §_-MI§ = new _loc4_();
         §_-LD§.§_-wC§(§_-MI§.§_-JI§,§_-MI§.§_-R2§);
      }
      
      public static function §_-7B§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §_-9A§.Connection)
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
      
      public static function §_-7g§() : XML
      {
         if(§break§ == null || !§break§.Directories)
         {
            return null;
         }
         return §break§.Directories[0];
      }
      
      public static function §_-Dz§(param1:String, param2:Function = null) : void
      {
         §_-MI§.§_-Dz§(param1,param2);
      }
      
      public static function §_-2M§(param1:String, param2:Function) : void
      {
         §_-MI§.§_-Mo§(param1).addCallback(param2);
      }
      
      public static function §_-zn§(param1:String, param2:Function) : void
      {
         §_-MI§.§_-Mo§(param1).§_-4U§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§_-VM§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§_-AM§)
         {
            if(§_-PE§)
            {
               _loc4_ = "";
               §_-R4§.log("URL sending...");
               if(!§_-q7§ || §_-q7§ == "PHP")
               {
                  _loc4_ = §_-LD§.§_-Vf§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §_-R4§.log(_loc4_);
               }
               else if(§_-q7§ == "Google")
               {
                  _loc4_ = §_-LD§.§_-Vf§() + param1;
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
                  §_-R4§.log(_loc4_);
               }
            }
            _loc3_ = §_-MI§.§_-Mo§(param1);
            if(_loc3_.§_-hQ§())
            {
               §_-LD§.sendRequest(param1,param2);
            }
            else
            {
               §_-R4§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §_-R4§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §_-cU§() : void
      {
         §_-AM§ = true;
         §_-LD§.§_-Gr§();
      }
      
      public static function §_-H2§() : void
      {
         §_-AM§ = false;
         §_-LD§.§_-Jc§();
      }
      
      public static function §_-vI§() : Boolean
      {
         return §_-AM§;
      }
      
      public static function §_-i3§(param1:String) : void
      {
         §_-MI§.§_-Mo§(param1).§_-IM§(true);
      }
      
      public static function §_-xm§(param1:String) : void
      {
         §_-MI§.§_-Mo§(param1).§_-IM§(false);
      }
      
      public static function §_-B2§() : String
      {
         return §_-LD§.§_-Vf§();
      }
      
      public static function §_-y8§() : Boolean
      {
         return §_-9A§ != null;
      }
   }
}
