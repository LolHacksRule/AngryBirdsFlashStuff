package §]!A§
{
   import §`!W§.§2v§;
   
   public class §1!f§
   {
      
      private static var §&F§:§0!D§;
      
      private static var §?p§:§5!_§;
      
      private static var §%p§:Boolean = true;
      
      public static var §32§:String = "";
      
      public static var §%J§:XML;
      
      public static var §8!#§:XML;
      
      public static const §&>§:Boolean = true;
       
      
      public function §1!f§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§%J§ == null)
         {
            §2v§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §=q§(param1,§%J§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §=q§(§%J§.Default[0].toString(),§%J§);
         }
         §2v§.log("Using connection profile:" + _loc2_.Id[0]);
         §8!#§ = _loc2_;
         var _loc3_:Class = §9!%§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §#!+§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §32§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §&F§ = new _loc3_(_loc6_,_loc5_);
         §?p§ = new _loc4_();
         §&F§.§"![§(§?p§.§53§,§?p§.§-s§);
      }
      
      public static function §=q§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §%J§.Connection)
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
      
      public static function §#7§() : XML
      {
         if(§8!#§ == null || !§8!#§.Directories)
         {
            return null;
         }
         return §8!#§.Directories[0];
      }
      
      public static function §63§(param1:String, param2:Function = null) : void
      {
         §?p§.§63§(param1,param2);
      }
      
      public static function §5`§(param1:String, param2:Function) : void
      {
         §?p§.§&Z§(param1).addCallback(param2);
      }
      
      public static function §`"§(param1:String, param2:Function) : void
      {
         §?p§.§&Z§(param1).§<X§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§%L§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§%p§)
         {
            if(§&>§)
            {
               _loc4_ = "";
               §2v§.log("URL sending...");
               if(!§32§ || §32§ == "PHP")
               {
                  _loc4_ = §&F§.§[!W§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §2v§.log(_loc4_);
               }
               else if(§32§ == "Google")
               {
                  _loc4_ = §&F§.§[!W§() + param1;
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
                  §2v§.log(_loc4_);
               }
            }
            _loc3_ = §?p§.§&Z§(param1);
            if(_loc3_.§78§())
            {
               §&F§.sendRequest(param1,param2);
            }
            else
            {
               §2v§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §2v§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §[<§() : void
      {
         §%p§ = true;
         §&F§.§10§();
      }
      
      public static function §+b§() : void
      {
         §%p§ = false;
         §&F§.§?!V§();
      }
      
      public static function §%4§() : Boolean
      {
         return §%p§;
      }
      
      public static function §,!6§(param1:String) : void
      {
         §?p§.§&Z§(param1).§<=§(true);
      }
      
      public static function §--§(param1:String) : void
      {
         §?p§.§&Z§(param1).§<=§(false);
      }
      
      public static function §@!G§() : String
      {
         return §&F§.§[!W§();
      }
      
      public static function §&s§() : Boolean
      {
         return §%J§ != null;
      }
   }
}
