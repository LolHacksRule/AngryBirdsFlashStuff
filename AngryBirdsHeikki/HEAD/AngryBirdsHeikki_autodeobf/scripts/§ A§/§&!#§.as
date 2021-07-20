package § A§
{
   import §&!b§.§ c§;
   import §+d§.b2Body;
   
   public class §&!#§
   {
      
      public static const §]a§:int = 0;
      
      public static const §%5§:int = b2Body.b2_staticBody;
      
      public static const §>!D§:int = b2Body.b2_kinematicBody;
      
      public static const § !C§:int = b2Body.b2_dynamicBody;
      
      public static const §?R§:int = 1;
      
      public static const § 7§:int = 2;
      
      public static const §>t§:int = 3;
      
      public static const §@!S§:int = 4;
      
      public static const §6!?§:int = 5;
      
      public static const §7!4§:int = 6;
       
      
      public var mName:String;
      
      public var mValues:Array;
      
      public var §;!§:Array;
      
      public var §@!W§:Array;
      
      public function §&!#§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.mValues = new Array();
         this.mValues[§]a§] = this.§7!L§(param2);
         this.mValues[§?R§] = param3;
         this.mValues[§ 7§] = param4;
         this.mValues[§>t§] = param5;
         this.mValues[§@!S§] = param6;
         this.mValues[§6!?§] = param7;
         this.mValues[§7!4§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.mValues[param1];
      }
      
      private function §7!L§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §>!D§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §%5§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return § !C§;
         }
         § c§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §%5§;
      }
      
      public function §,`§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§;!§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§;!§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §@T§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§@!W§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§@!W§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function § U§(param1:String) : Number
      {
         if(!this.§;!§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§;!§[param1])
         {
            return this.§;!§[param1];
         }
         return 1;
      }
      
      public function §!!V§(param1:String) : Number
      {
         if(!this.§@!W§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§@!W§[param1])
         {
            return this.§@!W§[param1];
         }
         return 1;
      }
   }
}
