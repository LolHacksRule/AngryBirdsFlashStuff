package §^!m§
{
   import §6]§.§,"0§;
   
   public class §6§
   {
      
      private static var §4!l§:§5+§;
      
      private static var §>"-§:§]s§;
      
      private static var §!2§:Boolean = true;
      
      public static var §&!2§:String = "";
      
      public static var §"M§:XML;
      
      public static var §-"4§:XML;
      
      public static const §<!;§:Boolean = true;
       
      
      public function §6§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§"M§ == null)
         {
            §,"0§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §"a§(param1,§"M§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §"a§(§"M§.Default[0].toString(),§"M§);
         }
         §,"0§.log("Using connection profile:" + _loc2_.Id[0]);
         §-"4§ = _loc2_;
         var _loc3_:Class = §7!-§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §`!S§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §&!2§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §4!l§ = new _loc3_(_loc6_,_loc5_);
         §>"-§ = new _loc4_();
         §4!l§.§[6§(§>"-§.§ _§,§>"-§.§;!t§);
      }
      
      public static function §"a§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §"M§.Connection)
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
      
      public static function §25§() : XML
      {
         if(§-"4§ == null || !§-"4§.Directories)
         {
            return null;
         }
         return §-"4§.Directories[0];
      }
      
      public static function §#q§(param1:String, param2:Function = null) : void
      {
         §>"-§.§#q§(param1,param2);
      }
      
      public static function §>j§(param1:String, param2:Function) : void
      {
         §>"-§.§;B§(param1).addCallback(param2);
      }
      
      public static function §,!m§(param1:String, param2:Function) : void
      {
         §>"-§.§;B§(param1).§#"%§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§!b§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§!2§)
         {
            if(§<!;§)
            {
               _loc4_ = "";
               §,"0§.log("URL sending...");
               if(!§&!2§ || §&!2§ == "PHP")
               {
                  _loc4_ = §4!l§.§8"&§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §,"0§.log(_loc4_);
               }
               else if(§&!2§ == "Google")
               {
                  _loc4_ = §4!l§.§8"&§() + param1;
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
                  §,"0§.log(_loc4_);
               }
            }
            _loc3_ = §>"-§.§;B§(param1);
            if(_loc3_.§!9§())
            {
               §4!l§.sendRequest(param1,param2);
            }
            else
            {
               §,"0§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §,"0§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §<!+§() : void
      {
         §!2§ = true;
         §4!l§.§[F§();
      }
      
      public static function §8!v§() : void
      {
         §!2§ = false;
         §4!l§.§5!K§();
      }
      
      public static function §9y§() : Boolean
      {
         return §!2§;
      }
      
      public static function §&K§(param1:String) : void
      {
         §>"-§.§;B§(param1).§5!T§(true);
      }
      
      public static function §`!T§(param1:String) : void
      {
         §>"-§.§;B§(param1).§5!T§(false);
      }
      
      public static function §<"=§() : String
      {
         return §4!l§.§8"&§();
      }
      
      public static function §^J§() : Boolean
      {
         return §"M§ != null;
      }
   }
}
