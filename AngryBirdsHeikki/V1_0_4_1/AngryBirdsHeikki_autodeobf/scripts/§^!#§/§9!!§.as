package §^!#§
{
   import §%!$§.§[Z§;
   
   public class §9!!§
   {
      
      private static var §continue§:§6h§;
      
      private static var §extends§:§&!D§;
      
      private static var §8b§:Boolean = true;
      
      public static var §3!5§:String = "";
      
      public static var §0! §:XML;
      
      public static var §2o§:XML;
      
      public static const §`!H§:Boolean = true;
       
      
      public function §9!!§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§0! § == null)
         {
            §[Z§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §5![§(param1,§0! §);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §5![§(§0! §.Default[0].toString(),§0! §);
         }
         §[Z§.log("Using connection profile:" + _loc2_.Id[0]);
         §2o§ = _loc2_;
         var _loc3_:Class = §0g§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §1r§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §3!5§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §continue§ = new _loc3_(_loc6_,_loc5_);
         §extends§ = new _loc4_();
         §continue§.§-N§(§extends§.§;O§,§extends§.§5'§);
      }
      
      public static function §5![§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §0! §.Connection)
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
      
      public static function §54§() : XML
      {
         if(§2o§ == null || !§2o§.Directories)
         {
            return null;
         }
         return §2o§.Directories[0];
      }
      
      public static function §-!S§(param1:String, param2:Function = null) : void
      {
         §extends§.§-!S§(param1,param2);
      }
      
      public static function §>!7§(param1:String, param2:Function) : void
      {
         §extends§.§<!@§(param1).addCallback(param2);
      }
      
      public static function §?!R§(param1:String, param2:Function) : void
      {
         §extends§.§<!@§(param1).§1<§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§`!]§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§8b§)
         {
            if(§`!H§)
            {
               _loc4_ = "";
               §[Z§.log("URL sending...");
               if(!§3!5§ || §3!5§ == "PHP")
               {
                  _loc4_ = §continue§.§%!J§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §[Z§.log(_loc4_);
               }
               else if(§3!5§ == "Google")
               {
                  _loc4_ = §continue§.§%!J§() + param1;
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
                  §[Z§.log(_loc4_);
               }
            }
            _loc3_ = §extends§.§<!@§(param1);
            if(_loc3_.§-K§())
            {
               §continue§.sendRequest(param1,param2);
            }
            else
            {
               §[Z§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §[Z§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function §<!S§() : void
      {
         §8b§ = true;
         §continue§.§[C§();
      }
      
      public static function §3u§() : void
      {
         §8b§ = false;
         §continue§.§%!K§();
      }
      
      public static function §else §() : Boolean
      {
         return §8b§;
      }
      
      public static function §1X§(param1:String) : void
      {
         §extends§.§<!@§(param1).§>!"§(true);
      }
      
      public static function §1e§(param1:String) : void
      {
         §extends§.§<!@§(param1).§>!"§(false);
      }
      
      public static function §0F§() : String
      {
         return §continue§.§%!J§();
      }
      
      public static function §@h§() : Boolean
      {
         return §0! § != null;
      }
   }
}
