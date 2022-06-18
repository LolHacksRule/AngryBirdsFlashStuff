package §;!;§
{
   import §7!P§.§-3§;
   
   public class §4>§
   {
      
      private static var §'8§:§@G§;
      
      private static var §1!<§:§#!P§;
      
      private static var §2p§:Boolean = true;
      
      public static var § var§:String = "";
      
      public static var §4!5§:XML;
      
      public static var §>V§:XML;
      
      public static const §+!a§:Boolean = true;
       
      
      public function §4>§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§4!5§ == null)
         {
            §-3§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §9t§(param1,§4!5§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §9t§(§4!5§.Default[0].toString(),§4!5§);
         }
         §-3§.log("Using connection profile:" + _loc2_.Id[0]);
         §>V§ = _loc2_;
         var _loc3_:Class = §&V§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §+S§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            § var§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §'8§ = new _loc3_(_loc6_,_loc5_);
         §1!<§ = new _loc4_();
         §'8§.§9`§(§1!<§.§'v§,§1!<§.§=E§);
      }
      
      public static function §9t§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §4!5§.Connection)
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
      
      public static function §+k§() : XML
      {
         if(§>V§ == null || !§>V§.Directories)
         {
            return null;
         }
         return §>V§.Directories[0];
      }
      
      public static function §]y§(param1:String, param2:Function = null) : void
      {
         §1!<§.§]y§(param1,param2);
      }
      
      public static function §88§(param1:String, param2:Function) : void
      {
         §1!<§.§+!H§(param1).addCallback(param2);
      }
      
      public static function §?1§(param1:String, param2:Function) : void
      {
         §1!<§.§+!H§(param1).§#c§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§-]§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§2p§)
         {
            if(§+!a§)
            {
               _loc4_ = "";
               §-3§.log("URL sending...");
               if(!§ var§ || § var§ == "PHP")
               {
                  _loc4_ = §'8§.§7!K§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §-3§.log(_loc4_);
               }
               else if(§ var§ == "Google")
               {
                  _loc4_ = §'8§.§7!K§() + param1;
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
                  §-3§.log(_loc4_);
               }
            }
            _loc3_ = §1!<§.§+!H§(param1);
            if(_loc3_.§^x§())
            {
               §'8§.sendRequest(param1,param2);
            }
            else
            {
               §-3§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §-3§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §@!J§() : void
      {
         §2p§ = true;
         §'8§.§!W§();
      }
      
      public static function §=,§() : void
      {
         §2p§ = false;
         §'8§.§16§();
      }
      
      public static function §"!?§() : Boolean
      {
         return §2p§;
      }
      
      public static function §8&§(param1:String) : void
      {
         §1!<§.§+!H§(param1).§;E§(true);
      }
      
      public static function §,!3§(param1:String) : void
      {
         §1!<§.§+!H§(param1).§;E§(false);
      }
      
      public static function §8'§() : String
      {
         return §'8§.§7!K§();
      }
      
      public static function §`!%§() : Boolean
      {
         return §4!5§ != null;
      }
   }
}
