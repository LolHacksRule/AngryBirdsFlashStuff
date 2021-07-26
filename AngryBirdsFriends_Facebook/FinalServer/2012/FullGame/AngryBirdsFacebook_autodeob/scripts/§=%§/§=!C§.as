package §=%§
{
   import §&!Y§.b2Body;
   import §[x§.§%3§;
   
   public class §=!C§
   {
      
      public static const §,N§:int = 0;
      
      public static const §"J§:int = b2Body.b2_staticBody;
      
      public static const §&1§:int = b2Body.b2_kinematicBody;
      
      public static const §7!i§:int = b2Body.b2_dynamicBody;
      
      public static const §"T§:int = 1;
      
      public static const §[,§:int = 2;
      
      public static const §1"$§:int = 3;
      
      public static const §#"D§:int = 4;
      
      public static const § !L§:int = 5;
      
      public static const §1,§:int = 6;
       
      
      public var mName:String;
      
      public var mValues:Array;
      
      public var §@X§:Array;
      
      public var §!!F§:Array;
      
      public function §=!C§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.mValues = new Array();
         this.mValues[§,N§] = this.§+!+§(param2);
         this.mValues[§"T§] = param3;
         this.mValues[§[,§] = param4;
         this.mValues[§1"$§] = param5;
         this.mValues[§#"D§] = param6;
         this.mValues[§ !L§] = param7;
         this.mValues[§1,§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.mValues[param1];
      }
      
      private function §+!+§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §&1§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §"J§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §7!i§;
         }
         §%3§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §"J§;
      }
      
      public function §#!;§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§@X§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§@X§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §4r§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§!!F§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§!!F§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §^"J§(param1:String) : Number
      {
         if(!this.§@X§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§@X§[param1])
         {
            return this.§@X§[param1];
         }
         return 1;
      }
      
      public function §!k§(param1:String) : Number
      {
         if(!this.§!!F§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§!!F§[param1])
         {
            return this.§!!F§[param1];
         }
         return 1;
      }
   }
}
