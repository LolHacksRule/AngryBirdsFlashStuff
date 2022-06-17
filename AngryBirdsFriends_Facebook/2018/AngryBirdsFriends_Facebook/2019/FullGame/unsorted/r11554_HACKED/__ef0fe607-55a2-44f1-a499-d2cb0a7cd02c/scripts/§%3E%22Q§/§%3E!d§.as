package §>"Q§
{
   import §9#K§.§=#f§;
   
   public class §>!d§
   {
      
      private static var §@"y§:§>J§;
      
      private static var §`#G§:§;#s§;
      
      private static var §8$E§:Boolean = true;
      
      public static var §?"&§:String = "";
      
      public static var §2"x§:XML;
      
      public static var §+e§:XML;
      
      public static const §0#§:Boolean = true;
       
      
      public function §>!d§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§2"x§ == null)
         {
            §=#f§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §,#Y§(param1,§2"x§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §,#Y§(§2"x§.Default[0].toString(),§2"x§);
         }
         §=#f§.log("Using connection profile:" + _loc2_.Id[0]);
         §+e§ = _loc2_;
         var _loc3_:Class = §"_§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §0#n§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §?"&§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §@"y§ = new _loc3_(_loc6_,_loc5_);
         §`#G§ = new _loc4_();
         §@"y§.§["J§(§`#G§.§%S§,§`#G§.§,!d§);
      }
      
      public static function §,#Y§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §2"x§.Connection)
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
      
      public static function §5!9§() : XML
      {
         if(§+e§ == null || !§+e§.Directories)
         {
            return null;
         }
         return §+e§.Directories[0];
      }
      
      public static function §>!X§(param1:String, param2:Function = null) : void
      {
         §`#G§.§>!X§(param1,param2);
      }
      
      public static function §'#a§(param1:String, param2:Function) : void
      {
         §`#G§.§1!b§(param1).addCallback(param2);
      }
      
      public static function §'"B§(param1:String, param2:Function) : void
      {
         §`#G§.§1!b§(param1).§=F§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§1,§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§8$E§)
         {
            if(§0#§)
            {
               _loc4_ = "";
               §=#f§.log("URL sending...");
               if(!§?"&§ || §?"&§ == "PHP")
               {
                  _loc4_ = §@"y§.§<!0§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §=#f§.log(_loc4_);
               }
               else if(§?"&§ == "Google")
               {
                  _loc4_ = §@"y§.§<!0§() + param1;
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
                  §=#f§.log(_loc4_);
               }
            }
            _loc3_ = §`#G§.§1!b§(param1);
            if(_loc3_.§6$%§())
            {
               §@"y§.sendRequest(param1,param2);
            }
            else
            {
               §=#f§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §=#f§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function enable() : void
      {
         §8$E§ = true;
         §@"y§.§'"y§();
      }
      
      public static function disable() : void
      {
         §8$E§ = false;
         §@"y§.§4t§();
      }
      
      public static function §<<§() : Boolean
      {
         return §8$E§;
      }
      
      public static function §8#§(param1:String) : void
      {
         §`#G§.§1!b§(param1).§?C§(true);
      }
      
      public static function §&$6§(param1:String) : void
      {
         §`#G§.§1!b§(param1).§?C§(false);
      }
      
      public static function §?"I§() : String
      {
         return §@"y§.§<!0§();
      }
      
      public static function §0"o§() : Boolean
      {
         return §2"x§ != null;
      }
   }
}
