package §0S§
{
   import §#I§.b2Body;
   import §1!B§.§<m§;
   
   public class § L§
   {
      
      public static const §<"$§:int = 0;
      
      public static const §@8§:int = b2Body.b2_staticBody;
      
      public static const §<!b§:int = b2Body.b2_kinematicBody;
      
      public static const §[!C§:int = b2Body.b2_dynamicBody;
      
      public static const §@q§:int = 1;
      
      public static const §82§:int = 2;
      
      public static const §'!x§:int = 3;
      
      public static const §'n§:int = 4;
      
      public static const §?L§:int = 5;
      
      public static const §+>§:int = 6;
       
      
      public var mName:String;
      
      public var mValues:Array;
      
      public var §8!#§:Array;
      
      public var §#!r§:Array;
      
      public function § L§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.mValues = new Array();
         this.mValues[§<"$§] = this.§9;§(param2);
         this.mValues[§@q§] = param3;
         this.mValues[§82§] = param4;
         this.mValues[§'!x§] = param5;
         this.mValues[§'n§] = param6;
         this.mValues[§?L§] = param7;
         this.mValues[§+>§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.mValues[param1];
      }
      
      private function §9;§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §<!b§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §@8§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §[!C§;
         }
         §<m§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §@8§;
      }
      
      public function §4!Q§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§8!#§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§8!#§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §^!F§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§#!r§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§#!r§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §3G§(param1:String) : Number
      {
         if(!this.§8!#§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§8!#§[param1])
         {
            return this.§8!#§[param1];
         }
         return 1;
      }
      
      public function §%!+§(param1:String) : Number
      {
         if(!this.§#!r§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§#!r§[param1])
         {
            return this.§#!r§[param1];
         }
         return 1;
      }
   }
}
