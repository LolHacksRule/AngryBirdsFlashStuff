package §9!%§
{
   import §!!B§.b2Body;
   import §-!6§.§>I§;
   
   public class §[!M§
   {
      
      public static const §0K§:int = 0;
      
      public static const §4!!§:int = b2Body.b2_staticBody;
      
      public static const §1w§:int = b2Body.b2_kinematicBody;
      
      public static const §[5§:int = b2Body.b2_dynamicBody;
      
      public static const §'4§:int = 1;
      
      public static const §[!L§:int = 2;
      
      public static const §0W§:int = 3;
      
      public static const §`!K§:int = 4;
      
      public static const §#;§:int = 5;
      
      public static const §'!4§:int = 6;
       
      
      public var mName:String;
      
      public var §^R§:Array;
      
      public var §6!Q§:Array;
      
      public var §4x§:Array;
      
      public function §[!M§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.§^R§ = new Array();
         this.§^R§[§0K§] = this.§#!4§(param2);
         this.§^R§[§'4§] = param3;
         this.§^R§[§[!L§] = param4;
         this.§^R§[§0W§] = param5;
         this.§^R§[§`!K§] = param6;
         this.§^R§[§#;§] = param7;
         this.§^R§[§'!4§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.§^R§[param1];
      }
      
      private function §#!4§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §1w§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §4!!§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §[5§;
         }
         §>I§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §4!!§;
      }
      
      public function § j§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§6!Q§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§6!Q§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §=!J§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§4x§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§4x§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function § 3§(param1:String) : Number
      {
         if(!this.§6!Q§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§6!Q§[param1])
         {
            return this.§6!Q§[param1];
         }
         return 1;
      }
      
      public function §"z§(param1:String) : Number
      {
         if(!this.§4x§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§4x§[param1])
         {
            return this.§4x§[param1];
         }
         return 1;
      }
   }
}
