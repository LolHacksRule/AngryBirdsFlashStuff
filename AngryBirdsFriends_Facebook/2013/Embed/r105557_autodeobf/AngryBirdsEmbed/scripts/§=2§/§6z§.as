package §=2§
{
   import §?!8§.§2>§;
   
   public class §6z§
   {
      
      private static var §=K§:§]!2§;
      
      private static var §%%§:§^H§;
      
      private static var §]!6§:Boolean = true;
      
      public static var §!v§:String = "";
      
      public static var §--§:XML;
      
      public static var §8O§:XML;
      
      public static const §#K§:Boolean = true;
       
      
      public function §6z§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§--§ == null)
         {
            §2>§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §&9§(param1,§--§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §&9§(§--§.Default[0].toString(),§--§);
         }
         §2>§.log("Using connection profile:" + _loc2_.Id[0]);
         §8O§ = _loc2_;
         var _loc3_:Class = §%!!§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §,B§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §!v§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §=K§ = new _loc3_(_loc6_,_loc5_);
         §%%§ = new _loc4_();
         §=K§.§%3§(§%%§.§0l§,§%%§.§=!J§);
      }
      
      public static function §&9§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §--§.Connection)
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
      
      public static function §<F§() : XML
      {
         if(§8O§ == null || !§8O§.Directories)
         {
            return null;
         }
         return §8O§.Directories[0];
      }
      
      public static function §2d§(param1:String, param2:Function = null) : void
      {
         §%%§.§2d§(param1,param2);
      }
      
      public static function §4D§(param1:String, param2:Function) : void
      {
         §%%§.§?L§(param1).addCallback(param2);
      }
      
      public static function §`<§(param1:String, param2:Function) : void
      {
         §%%§.§?L§(param1).§8G§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§9!E§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§]!6§)
         {
            if(§#K§)
            {
               _loc4_ = "";
               §2>§.log("URL sending...");
               if(!§!v§ || §!v§ == "PHP")
               {
                  _loc4_ = §=K§.§4!J§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §2>§.log(_loc4_);
               }
               else if(§!v§ == "Google")
               {
                  _loc4_ = §=K§.§4!J§() + param1;
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
                  §2>§.log(_loc4_);
               }
            }
            _loc3_ = §%%§.§?L§(param1);
            if(_loc3_.§8$§())
            {
               §=K§.sendRequest(param1,param2);
            }
            else
            {
               §2>§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §2>§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §1,§() : void
      {
         §]!6§ = true;
         §=K§.§!!G§();
      }
      
      public static function §?T§() : void
      {
         §]!6§ = false;
         §=K§.§"+§();
      }
      
      public static function §"i§() : Boolean
      {
         return §]!6§;
      }
      
      public static function §+I§(param1:String) : void
      {
         §%%§.§?L§(param1).§%!"§(true);
      }
      
      public static function §5@§(param1:String) : void
      {
         §%%§.§?L§(param1).§%!"§(false);
      }
      
      public static function §9C§() : String
      {
         return §=K§.§4!J§();
      }
      
      public static function §>8§() : Boolean
      {
         return §--§ != null;
      }
   }
}
