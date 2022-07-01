package §#?§
{
   import §"p§.§@8§;
   import §&!M§.b2Body;
   
   public class §8!§
   {
      
      public static const §<F§:int = 0;
      
      public static const §9!$§:int = b2Body.b2_staticBody;
      
      public static const §=g§:int = b2Body.b2_kinematicBody;
      
      public static const §?%§:int = b2Body.b2_dynamicBody;
      
      public static const §+S§:int = 1;
      
      public static const §`t§:int = 2;
      
      public static const §-"'§:int = 3;
      
      public static const §54§:int = 4;
      
      public static const §`!D§:int = 5;
      
      public static const §#!Q§:int = 6;
       
      
      public var mName:String;
      
      public var mValues:Array;
      
      public var §9%§:Array;
      
      public var §0D§:Array;
      
      public function §8!§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.mValues = new Array();
         this.mValues[§<F§] = this.§-"=§(param2);
         this.mValues[§+S§] = param3;
         this.mValues[§`t§] = param4;
         this.mValues[§-"'§] = param5;
         this.mValues[§54§] = param6;
         this.mValues[§`!D§] = param7;
         this.mValues[§#!Q§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.mValues[param1];
      }
      
      private function §-"=§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §=g§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §9!$§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §?%§;
         }
         §@8§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §9!$§;
      }
      
      public function §6!k§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§9%§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§9%§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §"-§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§0D§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§0D§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §`!B§(param1:String) : Number
      {
         if(!this.§9%§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§9%§[param1])
         {
            return this.§9%§[param1];
         }
         return 1;
      }
      
      public function §[6§(param1:String) : Number
      {
         if(!this.§0D§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§0D§[param1])
         {
            return this.§0D§[param1];
         }
         return 1;
      }
   }
}
