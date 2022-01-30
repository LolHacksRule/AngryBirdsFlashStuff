package §]!5§
{
   import §;4§.§]!%§;
   
   public class §^""§
   {
      
      private static var §[!f§:§1!i§;
      
      private static var §"!y§:§ !§;
      
      private static var §2n§:Boolean = true;
      
      public static var §0!F§:String = "";
      
      public static var §%"%§:XML;
      
      public static var §6!H§:XML;
      
      public static const §-e§:Boolean = true;
       
      
      public function §^""§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§%"%§ == null)
         {
            §]!%§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §99§(param1,§%"%§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §99§(§%"%§.Default[0].toString(),§%"%§);
         }
         §]!%§.log("Using connection profile:" + _loc2_.Id[0]);
         §6!H§ = _loc2_;
         var _loc3_:Class = §]1§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §!!7§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §0!F§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §[!f§ = new _loc3_(_loc6_,_loc5_);
         §"!y§ = new _loc4_();
         §[!f§.§]"§(§"!y§.§[![§,§"!y§.§?G§);
      }
      
      public static function §99§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §%"%§.Connection)
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
      
      public static function §%W§() : XML
      {
         if(§6!H§ == null || !§6!H§.Directories)
         {
            return null;
         }
         return §6!H§.Directories[0];
      }
      
      public static function §function§(param1:String, param2:Function = null) : void
      {
         §"!y§.§function§(param1,param2);
      }
      
      public static function §?!B§(param1:String, param2:Function) : void
      {
         §"!y§.§6!7§(param1).addCallback(param2);
      }
      
      public static function §!&§(param1:String, param2:Function) : void
      {
         §"!y§.§6!7§(param1).§!M§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§"!N§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§2n§)
         {
            if(§-e§)
            {
               _loc4_ = "";
               §]!%§.log("URL sending...");
               if(!§0!F§ || §0!F§ == "PHP")
               {
                  _loc4_ = §[!f§.§>!$§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §]!%§.log(_loc4_);
               }
               else if(§0!F§ == "Google")
               {
                  _loc4_ = §[!f§.§>!$§() + param1;
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
                  §]!%§.log(_loc4_);
               }
            }
            _loc3_ = §"!y§.§6!7§(param1);
            if(_loc3_.§44§())
            {
               §[!f§.sendRequest(param1,param2);
            }
            else
            {
               §]!%§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §]!%§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function enable() : void
      {
         §2n§ = true;
         §[!f§.§]!c§();
      }
      
      public static function disable() : void
      {
         §2n§ = false;
         §[!f§.§1§();
      }
      
      public static function §@!;§() : Boolean
      {
         return §2n§;
      }
      
      public static function §-"+§(param1:String) : void
      {
         §"!y§.§6!7§(param1).§[!1§(true);
      }
      
      public static function §;X§(param1:String) : void
      {
         §"!y§.§6!7§(param1).§[!1§(false);
      }
      
      public static function §;p§() : String
      {
         return §[!f§.§>!$§();
      }
      
      public static function §]![§() : Boolean
      {
         return §%"%§ != null;
      }
   }
}
