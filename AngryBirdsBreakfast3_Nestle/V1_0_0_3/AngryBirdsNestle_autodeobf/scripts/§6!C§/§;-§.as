package §6!C§
{
   import §=!7§.§1!7§;
   
   public class §;-§
   {
      
      private static var §]!m§:§,!B§;
      
      private static var §^!H§:§1"+§;
      
      private static var §69§:Boolean = true;
      
      public static var §=a§:String = "";
      
      public static var §,!E§:XML;
      
      public static var §^t§:XML;
      
      public static const §&!a§:Boolean = true;
       
      
      public function §;-§()
      {
         super();
      }
      
      public static function init(param1:String = null) : void
      {
         if(§,!E§ == null)
         {
            §1!7§.log("Server configuration not avaialble");
            return;
         }
         var _loc2_:XML = null;
         if(param1 != null)
         {
            _loc2_ = §?!!§(param1,§,!E§);
         }
         if(_loc2_ == null)
         {
            _loc2_ = §?!!§(§,!E§.Default[0].toString(),§,!E§);
         }
         §1!7§.log("Using connection profile:" + _loc2_.Id[0]);
         §^t§ = _loc2_;
         var _loc3_:Class = §<"$§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §]!i§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(_loc2_.ServerType[0] != null)
         {
            §=a§ = _loc2_.ServerType[0].toString();
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         §]!m§ = new _loc3_(_loc6_,_loc5_);
         §^!H§ = new _loc4_();
         §]!m§.§1!T§(§^!H§.§5!;§,§^!H§.§?!W§);
      }
      
      public static function §?!!§(param1:String, param2:XML) : XML
      {
         var _loc3_:XML = null;
         if(param1 != null)
         {
            for each(_loc3_ in §,!E§.Connection)
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
      
      public static function §1!O§() : XML
      {
         if(§^t§ == null || !§^t§.Directories)
         {
            return null;
         }
         return §^t§.Directories[0];
      }
      
      public static function §"t§(param1:String, param2:Function = null) : void
      {
         §^!H§.§"t§(param1,param2);
      }
      
      public static function §>f§(param1:String, param2:Function) : void
      {
         §^!H§.§>!A§(param1).addCallback(param2);
      }
      
      public static function §]!1§(param1:String, param2:Function) : void
      {
         §^!H§.§>!A§(param1).§4n§(param2);
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc3_:§`g§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(§69§)
         {
            if(§&!a§)
            {
               _loc4_ = "";
               §1!7§.log("URL sending...");
               if(!§=a§ || §=a§ == "PHP")
               {
                  _loc4_ = §]!m§.§09§() + "?C=" + param1;
                  for(_loc5_ in param2)
                  {
                     _loc4_ += "&" + _loc5_ + "=" + param2[_loc5_];
                  }
                  §1!7§.log(_loc4_);
               }
               else if(§=a§ == "Google")
               {
                  _loc4_ = §]!m§.§09§() + param1;
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
                  §1!7§.log(_loc4_);
               }
            }
            _loc3_ = §^!H§.§>!A§(param1);
            if(_loc3_.§@J§())
            {
               §]!m§.sendRequest(param1,param2);
            }
            else
            {
               §1!7§.log("[Server] WARNING: Trying to send request using a disabled command");
            }
         }
         else
         {
            §1!7§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
         }
      }
      
      public static function enable() : void
      {
         §69§ = true;
         §]!m§.§1!l§();
      }
      
      public static function disable() : void
      {
         §69§ = false;
         §]!m§.§]!&§();
      }
      
      public static function §9"4§() : Boolean
      {
         return §69§;
      }
      
      public static function §^-§(param1:String) : void
      {
         §^!H§.§>!A§(param1).§9!?§(true);
      }
      
      public static function §2x§(param1:String) : void
      {
         §^!H§.§>!A§(param1).§9!?§(false);
      }
      
      public static function §=! §() : String
      {
         return §]!m§.§09§();
      }
      
      public static function §!3§() : Boolean
      {
         return §,!E§ != null;
      }
   }
}
