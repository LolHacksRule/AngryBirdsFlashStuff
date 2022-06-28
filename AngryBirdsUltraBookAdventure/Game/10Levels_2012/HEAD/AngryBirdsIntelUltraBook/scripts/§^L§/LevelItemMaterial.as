package §^L§
{
   import §'N§.Log;
   import §1%§.b2Body;
   
   public class LevelItemMaterial
   {
      
      public static const §?!3§:int = 0;
      
      public static const §>Z§:int = b2Body.b2_staticBody;
      
      public static const §?@§:int = b2Body.b2_kinematicBody;
      
      public static const §#]§:int = b2Body.b2_dynamicBody;
      
      public static const §"!@§:int = 1;
      
      public static const §?!A§:int = 2;
      
      public static const §=!e§:int = 3;
      
      public static const §9!j§:int = 4;
      
      public static const §73§:int = 5;
      
      public static const §4!_§:int = 6;
       
      
      public var mName:String;
      
      public var §%j§:Array;
      
      public var §;p§:Array;
      
      public var §0p§:Array;
      
      public function LevelItemMaterial(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.§%j§ = new Array();
         this.§%j§[§?!3§] = this.§?s§(param2);
         this.§%j§[§"!@§] = param3;
         this.§%j§[§?!A§] = param4;
         this.§%j§[§=!e§] = param5;
         this.§%j§[§9!j§] = param6;
         this.§%j§[§73§] = param7;
         this.§%j§[§4!_§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.§%j§[param1];
      }
      
      private function §?s§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §?@§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §>Z§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §#]§;
         }
         Log.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §>Z§;
      }
      
      public function §4v§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§;p§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§;p§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §=R§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§0p§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§0p§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §]!_§(param1:String) : Number
      {
         if(!this.§;p§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§;p§[param1])
         {
            return this.§;p§[param1];
         }
         return 1;
      }
      
      public function §,!A§(param1:String) : Number
      {
         if(!this.§0p§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§0p§[param1])
         {
            return this.§0p§[param1];
         }
         return 1;
      }
   }
}
