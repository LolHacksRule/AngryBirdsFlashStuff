package § i§
{
   import §9!G§.§]!e§;
   
   public class §'V§
   {
      
      private static var §#X§:§,D§;
      
      private static var §@H§:§^!=§;
      
      private static var §1"+§:Boolean = true;
      
      public static var §^!7§:String = "";
      
      public static var §"!w§:XML;
      
      public static var §?z§:XML;
      
      public static const §@!8§:Boolean = true;
       
      
      public function §'V§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§"!w§ == null)
         {
            §]!e§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §"]§(param1,§"!w§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §"]§(§"!w§.Default[0].toString(),§"!w§);
         }
         §]!e§.log("Using connection profile:" + _loc2_.Id[0]);
         §?z§ = _loc2_;
         var _loc3_:Class = §;!d§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §+"3§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §^!7§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §#X§ = new _loc3_(_loc6_,_loc5_);
         §@H§ = new _loc4_();
         §#X§.§ !j§(§@H§.§=!2§,§@H§.§<@§);
      }
      
      public static function §"]§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §"!w§.Connection)
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
      
      public static function §#c§() : XML
      {
         if(§?z§ == null || !§?z§.Directories)
         {
            return null;
         }
         return §?z§.Directories[0];
      }
      
      public static function §-X§(param1:String, param2:Function = null) : void
      {
         §@H§.§-X§(param1,param2);
      }
      
      public static function §&8§(param1:String, param2:Function) : void
      {
         §@H§.§#"4§(param1).addCallback(param2);
      }
      
      public static function §9C§(param1:String, param2:Function) : void
      {
         §@H§.§#"4§(param1).§&n§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§#u§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§1"+§)
         {
            if(§@!8§)
            {
               _loc4_ = "";
               §]!e§.log("URL sending...");
               if(!§^!7§ || §^!7§ == "PHP")
               {
                  _loc4_ = §#X§.§<L§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §]!e§.log(_loc4_);
               }
               else if(§^!7§ == "Google")
               {
                  _loc4_ = §#X§.§<L§() + param1;
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
                  §]!e§.log(_loc4_);
               }
            }
            _loc3_ = §@H§.§#"4§(param1);
            if(_loc3_.§""4§())
            {
               §#X§.sendRequest(param1,param2);
            }
            else
            {
               §]!e§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §]!e§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function § "3§() : void
      {
         §1"+§ = true;
         §#X§.§+"&§();
      }
      
      public static function §+!$§() : void
      {
         §1"+§ = false;
         §#X§.§+A§();
      }
      
      public static function §;K§() : Boolean
      {
         return §1"+§;
      }
      
      public static function §>O§(param1:String) : void
      {
         §@H§.§#"4§(param1).§^!N§(true);
      }
      
      public static function §,"0§(param1:String) : void
      {
         §@H§.§#"4§(param1).§^!N§(false);
      }
      
      public static function §#k§() : String
      {
         return §#X§.§<L§();
      }
      
      public static function §=E§() : Boolean
      {
         return §"!w§ != null;
      }
   }
}
