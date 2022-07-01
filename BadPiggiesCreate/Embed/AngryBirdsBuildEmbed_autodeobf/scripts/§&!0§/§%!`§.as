package §&!0§
{
   import § !r§.§`![§;
   
   public class §%!`§
   {
      
      private static var §+1§:§2a§;
      
      private static var §,!h§:§%>§;
      
      private static var §[!1§:Boolean = true;
      
      public static var §87§:String = "";
      
      public static var §&!K§:XML;
      
      public static var §,!g§:XML;
      
      public static const §8s§:Boolean = true;
       
      
      public function §%!`§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§&!K§ == null)
         {
            §`![§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §8!M§(param1,§&!K§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §8!M§(§&!K§.Default[0].toString(),§&!K§);
         }
         §`![§.log("Using connection profile:" + _loc2_.Id[0]);
         §,!g§ = _loc2_;
         var _loc3_:Class = §&!k§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §1!t§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §87§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §+1§ = new _loc3_(_loc6_,_loc5_);
         §,!h§ = new _loc4_();
         §+1§.§&!,§(§,!h§.§<!p§,§,!h§.§=P§);
      }
      
      public static function §8!M§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §&!K§.Connection)
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
      
      public static function §[!6§() : XML
      {
         if(§,!g§ == null || !§,!g§.Directories)
         {
            return null;
         }
         return §,!g§.Directories[0];
      }
      
      public static function §7!E§(param1:String, param2:Function = null) : void
      {
         §,!h§.§7!E§(param1,param2);
      }
      
      public static function §>!?§(param1:String, param2:Function) : void
      {
         §,!h§.§50§(param1).addCallback(param2);
      }
      
      public static function §5h§(param1:String, param2:Function) : void
      {
         §,!h§.§50§(param1).§ s§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§?M§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§[!1§)
         {
            if(§8s§)
            {
               _loc4_ = "";
               §`![§.log("URL sending...");
               if(!§87§ || §87§ == "PHP")
               {
                  _loc4_ = §+1§.§'!k§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §`![§.log(_loc4_);
               }
               else if(§87§ == "Google")
               {
                  _loc4_ = §+1§.§'!k§() + param1;
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
                  §`![§.log(_loc4_);
               }
            }
            _loc3_ = §,!h§.§50§(param1);
            if(_loc3_.§=^§())
            {
               §+1§.sendRequest(param1,param2);
            }
            else
            {
               §`![§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §`![§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §1!"§() : void
      {
         §[!1§ = true;
         §+1§.§%t§();
      }
      
      public static function §,!"§() : void
      {
         §[!1§ = false;
         §+1§.§ for§();
      }
      
      public static function §4V§() : Boolean
      {
         return §[!1§;
      }
      
      public static function § !;§(param1:String) : void
      {
         §,!h§.§50§(param1).§6c§(true);
      }
      
      public static function §65§(param1:String) : void
      {
         §,!h§.§50§(param1).§6c§(false);
      }
      
      public static function §5?§() : String
      {
         return §+1§.§'!k§();
      }
      
      public static function § N§() : Boolean
      {
         return §&!K§ != null;
      }
   }
}
