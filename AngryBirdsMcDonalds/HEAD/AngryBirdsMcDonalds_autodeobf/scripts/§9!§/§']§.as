package §9!§
{
   import §'+§.§1u§;
   import §8T§.b2Body;
   
   public class §']§
   {
      
      public static const §^Z§:int = 0;
      
      public static const §5!U§:int = b2Body.b2_staticBody;
      
      public static const §@E§:int = b2Body.b2_kinematicBody;
      
      public static const §8L§:int = b2Body.b2_dynamicBody;
      
      public static const §<F§:int = 1;
      
      public static const §'>§:int = 2;
      
      public static const §4!§:int = 3;
      
      public static const §?!^§:int = 4;
      
      public static const §=!'§:int = 5;
      
      public static const §"+§:int = 6;
       
      
      public var mName:String;
      
      public var mValues:Array;
      
      public var §>v§:Array;
      
      public var §;!L§:Array;
      
      public function §']§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.mValues = new Array();
         this.mValues[§^Z§] = this.§&y§(param2);
         this.mValues[§<F§] = param3;
         this.mValues[§'>§] = param4;
         this.mValues[§4!§] = param5;
         this.mValues[§?!^§] = param6;
         this.mValues[§=!'§] = param7;
         this.mValues[§"+§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.mValues[param1];
      }
      
      private function §&y§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §@E§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §5!U§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §8L§;
         }
         §1u§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §5!U§;
      }
      
      public function §3!o§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§>v§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§>v§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §=W§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§;!L§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§;!L§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §%!F§(param1:String) : Number
      {
         if(!this.§>v§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§>v§[param1])
         {
            return this.§>v§[param1];
         }
         return 1;
      }
      
      public function §41§(param1:String) : Number
      {
         if(!this.§;!L§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§;!L§[param1])
         {
            return this.§;!L§[param1];
         }
         return 1;
      }
   }
}
