package §^p§
{
   import §'!G§.§1C§;
   import §3f§.b2Body;
   
   public class §=!3§
   {
      
      public static const §;<§:int = 0;
      
      public static const §4! §:int = b2Body.b2_staticBody;
      
      public static const §4Q§:int = b2Body.b2_kinematicBody;
      
      public static const §%j§:int = b2Body.b2_dynamicBody;
      
      public static const §'!P§:int = 1;
      
      public static const §8!#§:int = 2;
      
      public static const §'>§:int = 3;
      
      public static const §;!_§:int = 4;
      
      public static const §'y§:int = 5;
      
      public static const §2k§:int = 6;
       
      
      public var mName:String;
      
      public var mValues:Array;
      
      public var §^!&§:Array;
      
      public var §?+§:Array;
      
      public function §=!3§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.mValues = new Array();
         this.mValues[§;<§] = this.§4D§(param2);
         this.mValues[§'!P§] = param3;
         this.mValues[§8!#§] = param4;
         this.mValues[§'>§] = param5;
         this.mValues[§;!_§] = param6;
         this.mValues[§'y§] = param7;
         this.mValues[§2k§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.mValues[param1];
      }
      
      private function §4D§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §4Q§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §4! §;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §%j§;
         }
         §1C§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §4! §;
      }
      
      public function §"^§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§^!&§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§^!&§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §8i§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§?+§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§?+§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §#$§(param1:String) : Number
      {
         if(!this.§^!&§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§^!&§[param1])
         {
            return this.§^!&§[param1];
         }
         return 1;
      }
      
      public function §4!8§(param1:String) : Number
      {
         if(!this.§?+§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§?+§[param1])
         {
            return this.§?+§[param1];
         }
         return 1;
      }
   }
}
