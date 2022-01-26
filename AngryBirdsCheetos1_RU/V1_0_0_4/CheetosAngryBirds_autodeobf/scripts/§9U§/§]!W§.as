package §9U§
{
   import §^!&§.§;C§;
   
   public class §]!W§
   {
      
      private static var §`"§:§4!K§;
      
      private static var §?0§:§59§;
      
      private static var §,!7§:Boolean = true;
      
      public static var §["§:String = "";
      
      public static var §?!?§:XML;
      
      public static var §!f§:XML;
      
      public static const §1!7§:Boolean = true;
       
      
      public function §]!W§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§?!?§ == null)
         {
            §;C§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §'!$§(param1,§?!?§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §'!$§(§?!?§.Default[0].toString(),§?!?§);
         }
         §;C§.log("Using connection profile:" + _loc2_.Id[0]);
         §!f§ = _loc2_;
         var _loc3_:Class = §5!E§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §+A§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §["§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §`"§ = new _loc3_(_loc6_,_loc5_);
         §?0§ = new _loc4_();
         §`"§.§@g§(§?0§.§`!E§,§?0§.§6! §);
      }
      
      public static function §'!$§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §?!?§.Connection)
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
      
      public static function §14§() : XML
      {
         if(§!f§ == null || !§!f§.Directories)
         {
            return null;
         }
         return §!f§.Directories[0];
      }
      
      public static function §?!J§(param1:String, param2:Function = null) : void
      {
         §?0§.§?!J§(param1,param2);
      }
      
      public static function §3;§(param1:String, param2:Function) : void
      {
         §?0§.§<K§(param1).addCallback(param2);
      }
      
      public static function §?7§(param1:String, param2:Function) : void
      {
         §?0§.§<K§(param1).§9!6§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§-4§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§,!7§)
         {
            if(§1!7§)
            {
               _loc4_ = "";
               §;C§.log("URL sending...");
               if(!§["§ || §["§ == "PHP")
               {
                  _loc4_ = §`"§.§-v§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §;C§.log(_loc4_);
               }
               else if(§["§ == "Google")
               {
                  _loc4_ = §`"§.§-v§() + param1;
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
                  §;C§.log(_loc4_);
               }
            }
            _loc3_ = §?0§.§<K§(param1);
            if(_loc3_.§=V§())
            {
               §`"§.sendRequest(param1,param2);
            }
            else
            {
               §;C§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §;C§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §%V§() : void
      {
         §,!7§ = true;
         §`"§.§4j§();
      }
      
      public static function §-X§() : void
      {
         §,!7§ = false;
         §`"§.§4A§();
      }
      
      public static function §[%§() : Boolean
      {
         return §,!7§;
      }
      
      public static function §@C§(param1:String) : void
      {
         §?0§.§<K§(param1).§%N§(true);
      }
      
      public static function §%!Q§(param1:String) : void
      {
         §?0§.§<K§(param1).§%N§(false);
      }
      
      public static function §,>§() : String
      {
         return §`"§.§-v§();
      }
      
      public static function §+D§() : Boolean
      {
         return §?!?§ != null;
      }
   }
}
