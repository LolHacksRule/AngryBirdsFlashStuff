package §5m§
{
   import §>K§.§9X§;
   
   public class §2!&§
   {
      
      private static var §&!§:§0"§;
      
      private static var §8n§:§1[§;
      
      private static var §0!-§:Boolean = true;
      
      public static var §2"§:String = "";
      
      public static var §^F§:XML;
      
      public static var § var§:XML;
      
      public static const §16§:Boolean = true;
       
      
      public function §2!&§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§^F§ == null)
         {
            §9X§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §^!A§(param1,§^F§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §^!A§(§^F§.Default[0].toString(),§^F§);
         }
         §9X§.log("Using connection profile:" + _loc2_.Id[0]);
         § var§ = _loc2_;
         var _loc3_:Class = §9T§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §]!7§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §2"§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §&!§ = new _loc3_(_loc6_,_loc5_);
         §8n§ = new _loc4_();
         §&!§.§!R§(§8n§.§1X§,§8n§.§ do§);
      }
      
      public static function §^!A§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §^F§.Connection)
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
      
      public static function §5O§() : XML
      {
         if(§ var§ == null || !§ var§.Directories)
         {
            return null;
         }
         return § var§.Directories[0];
      }
      
      public static function §]K§(param1:String, param2:Function = null) : void
      {
         §8n§.§]K§(param1,param2);
      }
      
      public static function §;4§(param1:String, param2:Function) : void
      {
         §8n§.§`k§(param1).addCallback(param2);
      }
      
      public static function §8;§(param1:String, param2:Function) : void
      {
         §8n§.§`k§(param1).§"!!§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§=!G§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§0!-§)
         {
            if(§16§)
            {
               _loc4_ = "";
               §9X§.log("URL sending...");
               if(!§2"§ || §2"§ == "PHP")
               {
                  _loc4_ = §&!§.§0j§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §9X§.log(_loc4_);
               }
               else if(§2"§ == "Google")
               {
                  _loc4_ = §&!§.§0j§() + param1;
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
                  §9X§.log(_loc4_);
               }
            }
            _loc3_ = §8n§.§`k§(param1);
            if(_loc3_.§"M§())
            {
               §&!§.sendRequest(param1,param2);
            }
            else
            {
               §9X§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §9X§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §-!8§() : void
      {
         §0!-§ = true;
         §&!§.§8!0§();
      }
      
      public static function §>x§() : void
      {
         §0!-§ = false;
         §&!§.§<D§();
      }
      
      public static function §@U§() : Boolean
      {
         return §0!-§;
      }
      
      public static function §#!@§(param1:String) : void
      {
         §8n§.§`k§(param1).§[u§(true);
      }
      
      public static function §+L§(param1:String) : void
      {
         §8n§.§`k§(param1).§[u§(false);
      }
      
      public static function §="§() : String
      {
         return §&!§.§0j§();
      }
      
      public static function §^U§() : Boolean
      {
         return §^F§ != null;
      }
   }
}
