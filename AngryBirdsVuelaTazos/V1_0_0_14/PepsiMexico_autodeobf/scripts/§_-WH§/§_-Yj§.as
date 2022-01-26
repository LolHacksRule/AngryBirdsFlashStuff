package §_-WH§
{
   import §_-Eo§.§_-R4§;
   import §const§.b2Body;
   
   public class §_-Yj§
   {
      
      public static const §_-av§:int = 0;
      
      public static const §_-ta§:int = b2Body.b2_staticBody;
      
      public static const §_-U3§:int = b2Body.b2_kinematicBody;
      
      public static const §_-Wh§:int = b2Body.b2_dynamicBody;
      
      public static const §_-6p§:int = 1;
      
      public static const §_-wd§:int = 2;
      
      public static const §_-SZ§:int = 3;
      
      public static const §_-§:int = 4;
      
      public static const §_-cw§:int = 5;
      
      public static const §_-Vm§:int = 6;
       
      
      public var mName:String;
      
      public var §_-0i§:Array;
      
      public var §_-7D§:Array;
      
      public var §_-5o§:Array;
      
      public function §_-Yj§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.§_-0i§ = new Array();
         this.§_-0i§[§_-av§] = this.§_-XQ§(param2);
         this.§_-0i§[§_-6p§] = param3;
         this.§_-0i§[§_-wd§] = param4;
         this.§_-0i§[§_-SZ§] = param5;
         this.§_-0i§[§_-§] = param6;
         this.§_-0i§[§_-cw§] = param7;
         this.§_-0i§[§_-Vm§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.§_-0i§[param1];
      }
      
      private function §_-XQ§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §_-U3§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §_-ta§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §_-Wh§;
         }
         §_-R4§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §_-ta§;
      }
      
      public function §_-Cq§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§_-7D§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§_-7D§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §_-IC§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§_-5o§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§_-5o§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §_-vB§(param1:String) : Number
      {
         if(!this.§_-7D§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§_-7D§[param1])
         {
            return this.§_-7D§[param1];
         }
         return 1;
      }
      
      public function §_-f5§(param1:String) : Number
      {
         if(!this.§_-5o§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§_-5o§[param1])
         {
            return this.§_-5o§[param1];
         }
         return 1;
      }
   }
}
