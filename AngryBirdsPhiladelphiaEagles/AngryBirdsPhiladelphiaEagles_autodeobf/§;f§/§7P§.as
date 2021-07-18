package §;f§
{
   import §`K§.§ L§;
   
   public class §7P§
   {
      
      private static var § in§:§00§;
      
      private static var §",§:§1p§;
      
      private static var §9!@§:Boolean = true;
      
      public static var §7v§:String = "";
      
      public static var §6C§:XML;
      
      public static var §1G§:XML;
      
      public static const §;C§:Boolean = true;
       
      
      public function §7P§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§6C§ == null)
         {
            § L§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §;!?§(param1,§6C§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §;!?§(§6C§.Default[0].toString(),§6C§);
         }
         § L§.log("Using connection profile:" + _loc2_.Id[0]);
         §1G§ = _loc2_;
         var _loc3_:Class = §2!A§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §5!3§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §7v§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         § in§ = new _loc3_(_loc6_,_loc5_);
         §",§ = new _loc4_();
         § in§.§ 8§(§",§.§!T§,§",§.§>§);
      }
      
      public static function §;!?§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §6C§.Connection)
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
      
      public static function §'g§() : XML
      {
         if(§1G§ == null || !§1G§.Directories)
         {
            return null;
         }
         return §1G§.Directories[0];
      }
      
      public static function §-e§(param1:String, param2:Function = null) : void
      {
         §",§.§-e§(param1,param2);
      }
      
      public static function §#!5§(param1:String, param2:Function) : void
      {
         §",§.§1!P§(param1).addCallback(param2);
      }
      
      public static function §6G§(param1:String, param2:Function) : void
      {
         §",§.§1!P§(param1).§=&§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§+!@§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§9!@§)
         {
            if(§;C§)
            {
               _loc4_ = "";
               § L§.log("URL sending...");
               if(!§7v§ || §7v§ == "PHP")
               {
                  _loc4_ = § in§.§`P§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  § L§.log(_loc4_);
               }
               else if(§7v§ == "Google")
               {
                  _loc4_ = § in§.§`P§() + param1;
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
                  § L§.log(_loc4_);
               }
            }
            _loc3_ = §",§.§1!P§(param1);
            if(_loc3_.§%-§())
            {
               § in§.sendRequest(param1,param2);
            }
            else
            {
               § L§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            § L§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §5u§() : void
      {
         §9!@§ = true;
         § in§.§2C§();
      }
      
      public static function §@X§() : void
      {
         §9!@§ = false;
         § in§.§`h§();
      }
      
      public static function §!"§() : Boolean
      {
         return §9!@§;
      }
      
      public static function §&!#§(param1:String) : void
      {
         §",§.§1!P§(param1).§8>§(true);
      }
      
      public static function §'f§(param1:String) : void
      {
         §",§.§1!P§(param1).§8>§(false);
      }
      
      public static function §?%§() : String
      {
         return § in§.§`P§();
      }
      
      public static function §3#§() : Boolean
      {
         return §6C§ != null;
      }
   }
}
