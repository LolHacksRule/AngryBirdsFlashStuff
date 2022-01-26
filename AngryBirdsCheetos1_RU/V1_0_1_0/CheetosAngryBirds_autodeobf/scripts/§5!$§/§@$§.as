package §5!$§
{
   import §%t§.§@!%§;
   import §[x§.b2Body;
   
   public class §@$§
   {
      
      public static const §%P§:int = 0;
      
      public static const §"!&§:int = b2Body.b2_staticBody;
      
      public static const §%!U§:int = b2Body.b2_kinematicBody;
      
      public static const §`2§:int = b2Body.b2_dynamicBody;
      
      public static const § i§:int = 1;
      
      public static const §^§:int = 2;
      
      public static const §%Y§:int = 3;
      
      public static const §]!_§:int = 4;
      
      public static const §4!4§:int = 5;
      
      public static const §<!V§:int = 6;
       
      
      public var mName:String;
      
      public var §`!7§:Array;
      
      public var §var §:Array;
      
      public var §]V§:Array;
      
      public function §@$§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.§`!7§ = new Array();
         this.§`!7§[§%P§] = this.§51§(param2);
         this.§`!7§[§ i§] = param3;
         this.§`!7§[§^§] = param4;
         this.§`!7§[§%Y§] = param5;
         this.§`!7§[§]!_§] = param6;
         this.§`!7§[§4!4§] = param7;
         this.§`!7§[§<!V§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.§`!7§[param1];
      }
      
      private function §51§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §%!U§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §"!&§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §`2§;
         }
         §@!%§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §"!&§;
      }
      
      public function §#!U§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§var § = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§var §[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §3!<§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§]V§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§]V§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §#!7§(param1:String) : Number
      {
         if(!this.§var §)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§var §[param1])
         {
            return this.§var §[param1];
         }
         return 1;
      }
      
      public function §>Z§(param1:String) : Number
      {
         if(!this.§]V§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§]V§[param1])
         {
            return this.§]V§[param1];
         }
         return 1;
      }
   }
}
