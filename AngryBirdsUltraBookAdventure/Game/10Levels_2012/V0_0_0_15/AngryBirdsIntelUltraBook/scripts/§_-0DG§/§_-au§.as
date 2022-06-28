package §_-0DG§
{
   import §_-0BH§.§_-FK§;
   import §_-aU§.b2Body;
   
   public class §_-au§
   {
      
      public static const §_-dp§:int = 0;
      
      public static const §_-cU§:int = b2Body.b2_staticBody;
      
      public static const §_-05r§:int = b2Body.b2_kinematicBody;
      
      public static const §_-a0§:int = b2Body.b2_dynamicBody;
      
      public static const §_-Tu§:int = 1;
      
      public static const §_-kd§:int = 2;
      
      public static const §_-lN§:int = 3;
      
      public static const §_-078§:int = 4;
      
      public static const §_-Ro§:int = 5;
      
      public static const §_-9§:int = 6;
       
      
      public var mName:String;
      
      public var §_-zN§:Array;
      
      public var §_-Zi§:Array;
      
      public var §_-AB§:Array;
      
      public function §_-au§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.§_-zN§ = new Array();
         this.§_-zN§[§_-dp§] = this.§implements§(param2);
         this.§_-zN§[§_-Tu§] = param3;
         this.§_-zN§[§_-kd§] = param4;
         this.§_-zN§[§_-lN§] = param5;
         this.§_-zN§[§_-078§] = param6;
         this.§_-zN§[§_-Ro§] = param7;
         this.§_-zN§[§_-9§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.§_-zN§[param1];
      }
      
      private function §implements§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §_-05r§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §_-cU§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §_-a0§;
         }
         §_-FK§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §_-cU§;
      }
      
      public function §return§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§_-Zi§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§_-Zi§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §_-hA§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§_-AB§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§_-AB§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §_-Ht§(param1:String) : Number
      {
         if(!this.§_-Zi§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§_-Zi§[param1])
         {
            return this.§_-Zi§[param1];
         }
         return 1;
      }
      
      public function §_-Zm§(param1:String) : Number
      {
         if(!this.§_-AB§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§_-AB§[param1])
         {
            return this.§_-AB§[param1];
         }
         return 1;
      }
   }
}
