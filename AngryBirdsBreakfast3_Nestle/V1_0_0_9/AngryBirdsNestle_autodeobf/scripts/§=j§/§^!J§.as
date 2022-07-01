package §=j§
{
   import §8!$§.§?p§;
   
   public class §^!J§
   {
      
      private static var §5w§:§9!Y§;
      
      private static var §8!N§:§<"4§;
      
      private static var §@"1§:Boolean = true;
      
      public static var §2R§:String = "";
      
      public static var §,"0§:XML;
      
      public static var §3"#§:XML;
      
      public static const §+w§:Boolean = true;
       
      
      public function §^!J§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§,"0§ == null)
         {
            §?p§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = § !,§(param1,§,"0§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = § !,§(§,"0§.Default[0].toString(),§,"0§);
         }
         §?p§.log("Using connection profile:" + _loc2_.Id[0]);
         §3"#§ = _loc2_;
         var _loc3_:Class = §#! §[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §2!=§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §2R§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §5w§ = new _loc3_(_loc6_,_loc5_);
         §8!N§ = new _loc4_();
         §5w§.§,?§(§8!N§.§@3§,§8!N§.§6&§);
      }
      
      public static function § !,§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §,"0§.Connection)
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
         if(§3"#§ == null || !§3"#§.Directories)
         {
            return null;
         }
         return §3"#§.Directories[0];
      }
      
      public static function §79§(param1:String, param2:Function = null) : void
      {
         §8!N§.§79§(param1,param2);
      }
      
      public static function §4!%§(param1:String, param2:Function) : void
      {
         §8!N§.§extends§(param1).addCallback(param2);
      }
      
      public static function §@8§(param1:String, param2:Function) : void
      {
         §8!N§.§extends§(param1).§`!?§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§5-§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§@"1§)
         {
            if(§+w§)
            {
               _loc4_ = "";
               §?p§.log("URL sending...");
               if(!§2R§ || §2R§ == "PHP")
               {
                  _loc4_ = §5w§.§6$§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §?p§.log(_loc4_);
               }
               else if(§2R§ == "Google")
               {
                  _loc4_ = §5w§.§6$§() + param1;
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
                  §?p§.log(_loc4_);
               }
            }
            _loc3_ = §8!N§.§extends§(param1);
            if(_loc3_.§<!=§())
            {
               §5w§.sendRequest(param1,param2);
            }
            else
            {
               §?p§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §?p§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function enable() : void
      {
         §@"1§ = true;
         §5w§.§#!%§();
      }
      
      public static function disable() : void
      {
         §@"1§ = false;
         §5w§.§7!u§();
      }
      
      public static function §]!T§() : Boolean
      {
         return §@"1§;
      }
      
      public static function §2!t§(param1:String) : void
      {
         §8!N§.§extends§(param1).§,c§(true);
      }
      
      public static function §7J§(param1:String) : void
      {
         §8!N§.§extends§(param1).§,c§(false);
      }
      
      public static function §0!e§() : String
      {
         return §5w§.§6$§();
      }
      
      public static function §!&§() : Boolean
      {
         return §,"0§ != null;
      }
   }
}
