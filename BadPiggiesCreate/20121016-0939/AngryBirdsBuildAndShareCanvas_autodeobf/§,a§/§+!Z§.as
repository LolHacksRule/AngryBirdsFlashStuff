package §,a§
{
   import §+S§.b2Body;
   import §=!M§.§9!P§;
   
   public class §+!Z§
   {
      
      public static const §-!#§:int = 0;
      
      public static const §>$§:int = b2Body.b2_staticBody;
      
      public static const § !D§:int = b2Body.b2_kinematicBody;
      
      public static const §#!&§:int = b2Body.b2_dynamicBody;
      
      public static const §8";§:int = 1;
      
      public static const §,!>§:int = 2;
      
      public static const §9",§:int = 3;
      
      public static const §@!T§:int = 4;
      
      public static const §%"'§:int = 5;
      
      public static const §,A§:int = 6;
       
      
      public var mName:String;
      
      public var mValues:Array;
      
      public var § p§:Array;
      
      public var §<!J§:Array;
      
      public function §+!Z§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.mValues = new Array();
         this.mValues[§-!#§] = this.§=!=§(param2);
         this.mValues[§8";§] = param3;
         this.mValues[§,!>§] = param4;
         this.mValues[§9",§] = param5;
         this.mValues[§@!T§] = param6;
         this.mValues[§%"'§] = param7;
         this.mValues[§,A§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.mValues[param1];
      }
      
      private function §=!=§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return § !D§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §>$§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §#!&§;
         }
         §9!P§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §>$§;
      }
      
      public function §9"#§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§ p§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§ p§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §<!x§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§<!J§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§<!J§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §!!&§(param1:String) : Number
      {
         if(!this.§ p§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§ p§[param1])
         {
            return this.§ p§[param1];
         }
         return 1;
      }
      
      public function §]N§(param1:String) : Number
      {
         if(!this.§<!J§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§<!J§[param1])
         {
            return this.§<!J§[param1];
         }
         return 1;
      }
   }
}
