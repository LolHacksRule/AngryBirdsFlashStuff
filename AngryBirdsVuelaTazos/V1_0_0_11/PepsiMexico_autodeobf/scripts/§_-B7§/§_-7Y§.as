package §_-B7§
{
   import §_-WW§.b2Body;
   import §_-ZG§.§_-Ne§;
   
   public class §_-7Y§
   {
      
      public static const §_-kX§:int = 0;
      
      public static const §_-Pm§:int = b2Body.b2_staticBody;
      
      public static const §_-wO§:int = b2Body.b2_kinematicBody;
      
      public static const §_-q6§:int = b2Body.b2_dynamicBody;
      
      public static const §_-8m§:int = 1;
      
      public static const §_-Bj§:int = 2;
      
      public static const §_-Ru§:int = 3;
      
      public static const §_-7h§:int = 4;
      
      public static const §_-CZ§:int = 5;
      
      public static const §_-cc§:int = 6;
       
      
      public var mName:String;
      
      public var §_-pO§:Array;
      
      public var §_-7E§:Array;
      
      public var §_-5g§:Array;
      
      public function §_-7Y§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.§_-pO§ = new Array();
         this.§_-pO§[§_-kX§] = this.§_-Pu§(param2);
         this.§_-pO§[§_-8m§] = param3;
         this.§_-pO§[§_-Bj§] = param4;
         this.§_-pO§[§_-Ru§] = param5;
         this.§_-pO§[§_-7h§] = param6;
         this.§_-pO§[§_-CZ§] = param7;
         this.§_-pO§[§_-cc§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.§_-pO§[param1];
      }
      
      private function §_-Pu§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §_-wO§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §_-Pm§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §_-q6§;
         }
         §_-Ne§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §_-Pm§;
      }
      
      public function §_-me§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§_-7E§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§_-7E§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §_-TF§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§_-5g§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§_-5g§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §_-6e§(param1:String) : Number
      {
         if(!this.§_-7E§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§_-7E§[param1])
         {
            return this.§_-7E§[param1];
         }
         return 1;
      }
      
      public function §_-kS§(param1:String) : Number
      {
         if(!this.§_-5g§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§_-5g§[param1])
         {
            return this.§_-5g§[param1];
         }
         return 1;
      }
   }
}
