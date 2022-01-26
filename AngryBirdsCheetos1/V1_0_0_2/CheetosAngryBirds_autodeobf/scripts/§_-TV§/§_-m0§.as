package §_-TV§
{
   import §_-43§.b2Body;
   import §_-aA§.§_-I0§;
   
   public class §_-m0§
   {
      
      public static const §_-Dl§:int = 0;
      
      public static const §_-2g§:int = b2Body.b2_staticBody;
      
      public static const §_-3y§:int = b2Body.b2_kinematicBody;
      
      public static const §_-0T§:int = b2Body.b2_dynamicBody;
      
      public static const §_-aJ§:int = 1;
      
      public static const §_-av§:int = 2;
      
      public static const §_-uQ§:int = 3;
      
      public static const §_-vD§:int = 4;
      
      public static const §_-qo§:int = 5;
      
      public static const §_-EP§:int = 6;
       
      
      public var mName:String;
      
      public var §_-a6§:Array;
      
      public var §_-tl§:Array;
      
      public var §_-l7§:Array;
      
      public function §_-m0§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.§_-a6§ = new Array();
         this.§_-a6§[§_-Dl§] = this.§_-sU§(param2);
         this.§_-a6§[§_-aJ§] = param3;
         this.§_-a6§[§_-av§] = param4;
         this.§_-a6§[§_-uQ§] = param5;
         this.§_-a6§[§_-vD§] = param6;
         this.§_-a6§[§_-qo§] = param7;
         this.§_-a6§[§_-EP§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.§_-a6§[param1];
      }
      
      private function §_-sU§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §_-3y§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §_-2g§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §_-0T§;
         }
         §_-I0§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §_-2g§;
      }
      
      public function §_-z2§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§_-tl§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§_-tl§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §_-YG§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§_-l7§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§_-l7§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §_-xE§(param1:String) : Number
      {
         if(!this.§_-tl§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§_-tl§[param1])
         {
            return this.§_-tl§[param1];
         }
         return 1;
      }
      
      public function §_-Nt§(param1:String) : Number
      {
         if(!this.§_-l7§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§_-l7§[param1])
         {
            return this.§_-l7§[param1];
         }
         return 1;
      }
   }
}
