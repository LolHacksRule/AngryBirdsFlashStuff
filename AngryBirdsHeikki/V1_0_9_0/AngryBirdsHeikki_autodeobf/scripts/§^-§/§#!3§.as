package §^-§
{
   import §0i§.§]_§;
   import §^!Z§.b2Body;
   
   public class §#!3§
   {
      
      public static const §<J§:int = 0;
      
      public static const §>I§:int = b2Body.b2_staticBody;
      
      public static const §==§:int = b2Body.b2_kinematicBody;
      
      public static const §@3§:int = b2Body.b2_dynamicBody;
      
      public static const §!H§:int = 1;
      
      public static const §-!X§:int = 2;
      
      public static const §@!$§:int = 3;
      
      public static const §;7§:int = 4;
      
      public static const §-!P§:int = 5;
      
      public static const § w§:int = 6;
       
      
      public var mName:String;
      
      public var §]w§:Array;
      
      public var §>+§:Array;
      
      public var §'!f§:Array;
      
      public function §#!3§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.§]w§ = new Array();
         this.§]w§[§<J§] = this.§8a§(param2);
         this.§]w§[§!H§] = param3;
         this.§]w§[§-!X§] = param4;
         this.§]w§[§@!$§] = param5;
         this.§]w§[§;7§] = param6;
         this.§]w§[§-!P§] = param7;
         this.§]w§[§ w§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.§]w§[param1];
      }
      
      private function §8a§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §==§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §>I§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §@3§;
         }
         §]_§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §>I§;
      }
      
      public function § each§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§>+§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§>+§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §6!d§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§'!f§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§'!f§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §[!G§(param1:String) : Number
      {
         if(!this.§>+§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§>+§[param1])
         {
            return this.§>+§[param1];
         }
         return 1;
      }
      
      public function §"+§(param1:String) : Number
      {
         if(!this.§'!f§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§'!f§[param1])
         {
            return this.§'!f§[param1];
         }
         return 1;
      }
   }
}
