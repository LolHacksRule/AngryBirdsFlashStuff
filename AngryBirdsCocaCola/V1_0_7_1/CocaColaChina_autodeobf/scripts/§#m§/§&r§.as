package §#m§
{
   import §4U§.b2Body;
   import §?@§.§"]§;
   
   public class §&r§
   {
      
      public static const §?+§:int = 0;
      
      public static const §4D§:int = b2Body.b2_staticBody;
      
      public static const §"^§:int = b2Body.b2_kinematicBody;
      
      public static const §8i§:int = b2Body.b2_dynamicBody;
      
      public static const §#$§:int = 1;
      
      public static const §4!8§:int = 2;
      
      public static const §;<§:int = 3;
      
      public static const §4! §:int = 4;
      
      public static const §4Q§:int = 5;
      
      public static const §%j§:int = 6;
       
      
      public var mName:String;
      
      public var mValues:Array;
      
      public var §0!N§:Array;
      
      public var §?!C§:Array;
      
      public function §&r§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.mValues = new Array();
         this.mValues[§?+§] = this.§5[§(param2);
         this.mValues[§#$§] = param3;
         this.mValues[§4!8§] = param4;
         this.mValues[§;<§] = param5;
         this.mValues[§4! §] = param6;
         this.mValues[§4Q§] = param7;
         this.mValues[§%j§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.mValues[param1];
      }
      
      private function §5[§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §"^§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §4D§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §8i§;
         }
         §"]§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §4D§;
      }
      
      public function §&!>§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§0!N§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§0!N§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §;!,§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§?!C§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§?!C§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §=!3§(param1:String) : Number
      {
         if(!this.§0!N§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§0!N§[param1])
         {
            return this.§0!N§[param1];
         }
         return 1;
      }
      
      public function §^!&§(param1:String) : Number
      {
         if(!this.§?!C§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§?!C§[param1])
         {
            return this.§?!C§[param1];
         }
         return 1;
      }
   }
}
