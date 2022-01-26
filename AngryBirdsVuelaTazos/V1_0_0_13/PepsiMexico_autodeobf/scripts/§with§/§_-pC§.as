package §with§
{
   import §_-ex§.§_-mR§;
   import §_-qW§.b2Body;
   
   public class §_-pC§
   {
      
      public static const §_-RP§:int = 0;
      
      public static const §_-lg§:int = b2Body.b2_staticBody;
      
      public static const §_-mz§:int = b2Body.b2_kinematicBody;
      
      public static const §_-zB§:int = b2Body.b2_dynamicBody;
      
      public static const §_-Xa§:int = 1;
      
      public static const §_-OP§:int = 2;
      
      public static const §_-4x§:int = 3;
      
      public static const §_-tR§:int = 4;
      
      public static const §_-6Z§:int = 5;
      
      public static const §_-dk§:int = 6;
       
      
      public var mName:String;
      
      public var §_-lS§:Array;
      
      public var §_-Ml§:Array;
      
      public var §_-8L§:Array;
      
      public function §_-pC§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.§_-lS§ = new Array();
         this.§_-lS§[§_-RP§] = this.§_-OW§(param2);
         this.§_-lS§[§_-Xa§] = param3;
         this.§_-lS§[§_-OP§] = param4;
         this.§_-lS§[§_-4x§] = param5;
         this.§_-lS§[§_-tR§] = param6;
         this.§_-lS§[§_-6Z§] = param7;
         this.§_-lS§[§_-dk§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.§_-lS§[param1];
      }
      
      private function §_-OW§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §_-mz§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §_-lg§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §_-zB§;
         }
         §_-mR§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §_-lg§;
      }
      
      public function §_-ch§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§_-Ml§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§_-Ml§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §_-Hd§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§_-8L§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§_-8L§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §_-yr§(param1:String) : Number
      {
         if(!this.§_-Ml§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§_-Ml§[param1])
         {
            return this.§_-Ml§[param1];
         }
         return 1;
      }
      
      public function §_-de§(param1:String) : Number
      {
         if(!this.§_-8L§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§_-8L§[param1])
         {
            return this.§_-8L§[param1];
         }
         return 1;
      }
   }
}
