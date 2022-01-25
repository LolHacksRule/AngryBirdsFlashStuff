package §[o§
{
   import §6!Q§.§7!7§;
   import §=!U§.b2Body;
   
   public class §@N§
   {
      
      public static const §"`§:int = 0;
      
      public static const §5`§:int = b2Body.b2_staticBody;
      
      public static const §1f§:int = b2Body.b2_kinematicBody;
      
      public static const §!0§:int = b2Body.b2_dynamicBody;
      
      public static const §5!F§:int = 1;
      
      public static const §"1§:int = 2;
      
      public static const §7S§:int = 3;
      
      public static const §;_§:int = 4;
      
      public static const §0>§:int = 5;
      
      public static const §7!,§:int = 6;
       
      
      public var mName:String;
      
      public var mValues:Array;
      
      public var §%o§:Array;
      
      public var §"!<§:Array;
      
      public function §@N§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.mValues = new Array();
         this.mValues[§"`§] = this.§-w§(param2);
         this.mValues[§5!F§] = param3;
         this.mValues[§"1§] = param4;
         this.mValues[§7S§] = param5;
         this.mValues[§;_§] = param6;
         this.mValues[§0>§] = param7;
         this.mValues[§7!,§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.mValues[param1];
      }
      
      private function §-w§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §1f§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §5`§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §!0§;
         }
         §7!7§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §5`§;
      }
      
      public function §[d§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§%o§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§%o§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §;x§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§"!<§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§"!<§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §0!&§(param1:String) : Number
      {
         if(!this.§%o§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§%o§[param1])
         {
            return this.§%o§[param1];
         }
         return 1;
      }
      
      public function § #§(param1:String) : Number
      {
         if(!this.§"!<§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§"!<§[param1])
         {
            return this.§"!<§[param1];
         }
         return 1;
      }
   }
}
