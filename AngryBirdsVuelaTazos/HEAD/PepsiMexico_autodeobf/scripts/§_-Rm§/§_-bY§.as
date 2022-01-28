package §_-Rm§
{
   import §_-gM§.§_-yj§;
   import §_-vk§.b2Body;
   
   public class §_-bY§
   {
      
      public static const §_-s5§:int = 0;
      
      public static const §_-Hl§:int = b2Body.b2_staticBody;
      
      public static const §_-i§:int = b2Body.b2_kinematicBody;
      
      public static const §_-2l§:int = b2Body.b2_dynamicBody;
      
      public static const §_-h7§:int = 1;
      
      public static const §_-Gi§:int = 2;
      
      public static const §_-9O§:int = 3;
      
      public static const §_-96§:int = 4;
      
      public static const §_-Ab§:int = 5;
      
      public static const §_-ft§:int = 6;
       
      
      public var mName:String;
      
      public var §_-m8§:Array;
      
      public var §_-Kk§:Array;
      
      public var §_-9J§:Array;
      
      public function §_-bY§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.§_-m8§ = new Array();
         this.§_-m8§[§_-s5§] = this.§_-TW§(param2);
         this.§_-m8§[§_-h7§] = param3;
         this.§_-m8§[§_-Gi§] = param4;
         this.§_-m8§[§_-9O§] = param5;
         this.§_-m8§[§_-96§] = param6;
         this.§_-m8§[§_-Ab§] = param7;
         this.§_-m8§[§_-ft§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.§_-m8§[param1];
      }
      
      private function §_-TW§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §_-i§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §_-Hl§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §_-2l§;
         }
         §_-yj§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §_-Hl§;
      }
      
      public function §_-YN§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§_-Kk§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§_-Kk§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §_-rX§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§_-9J§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§_-9J§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §_-t2§(param1:String) : Number
      {
         if(!this.§_-Kk§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§_-Kk§[param1])
         {
            return this.§_-Kk§[param1];
         }
         return 1;
      }
      
      public function §_-Ne§(param1:String) : Number
      {
         if(!this.§_-9J§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§_-9J§[param1])
         {
            return this.§_-9J§[param1];
         }
         return 1;
      }
   }
}
