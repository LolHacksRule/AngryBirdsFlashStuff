package §!!e§
{
   import §1B§.b2Body;
   import §`!W§.§2v§;
   
   public class §,!§
   {
      
      public static const §^!7§:int = 0;
      
      public static const §@!0§:int = b2Body.b2_staticBody;
      
      public static const §"!I§:int = b2Body.b2_kinematicBody;
      
      public static const §5!&§:int = b2Body.b2_dynamicBody;
      
      public static const §9!3§:int = 1;
      
      public static const §;a§:int = 2;
      
      public static const §4!B§:int = 3;
      
      public static const §7!P§:int = 4;
      
      public static const §`§:int = 5;
      
      public static const §9!A§:int = 6;
       
      
      public var mName:String;
      
      public var §implements§:Array;
      
      public var §+!Y§:Array;
      
      public var §@?§:Array;
      
      public function §,!§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.§implements§ = new Array();
         this.§implements§[§^!7§] = this.§5!Q§(param2);
         this.§implements§[§9!3§] = param3;
         this.§implements§[§;a§] = param4;
         this.§implements§[§4!B§] = param5;
         this.§implements§[§7!P§] = param6;
         this.§implements§[§`§] = param7;
         this.§implements§[§9!A§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.§implements§[param1];
      }
      
      private function §5!Q§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §"!I§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §@!0§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §5!&§;
         }
         §2v§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §@!0§;
      }
      
      public function §9X§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§+!Y§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§+!Y§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §[u§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§@?§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§@?§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §9!@§(param1:String) : Number
      {
         if(!this.§+!Y§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§+!Y§[param1])
         {
            return this.§+!Y§[param1];
         }
         return 1;
      }
      
      public function §>I§(param1:String) : Number
      {
         if(!this.§@?§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§@?§[param1])
         {
            return this.§@?§[param1];
         }
         return 1;
      }
   }
}
