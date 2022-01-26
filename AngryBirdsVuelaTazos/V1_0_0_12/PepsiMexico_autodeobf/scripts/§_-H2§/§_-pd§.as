package §_-H2§
{
   import §_-EH§.b2Body;
   import §_-RG§.§_-HT§;
   
   public class §_-pd§
   {
      
      public static const §_-B2§:int = 0;
      
      public static const §_-dU§:int = b2Body.b2_staticBody;
      
      public static const §_-Pi§:int = b2Body.b2_kinematicBody;
      
      public static const §_-vP§:int = b2Body.b2_dynamicBody;
      
      public static const §_-hi§:int = 1;
      
      public static const §_-6V§:int = 2;
      
      public static const §_-bN§:int = 3;
      
      public static const §_-Va§:int = 4;
      
      public static const §_-Np§:int = 5;
      
      public static const §_-wh§:int = 6;
       
      
      public var mName:String;
      
      public var §_-Up§:Array;
      
      public var §_-Zr§:Array;
      
      public var §_-pm§:Array;
      
      public function §_-pd§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.§_-Up§ = new Array();
         this.§_-Up§[§_-B2§] = this.§_-TL§(param2);
         this.§_-Up§[§_-hi§] = param3;
         this.§_-Up§[§_-6V§] = param4;
         this.§_-Up§[§_-bN§] = param5;
         this.§_-Up§[§_-Va§] = param6;
         this.§_-Up§[§_-Np§] = param7;
         this.§_-Up§[§_-wh§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.§_-Up§[param1];
      }
      
      private function §_-TL§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §_-Pi§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §_-dU§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §_-vP§;
         }
         §_-HT§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §_-dU§;
      }
      
      public function §_-My§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§_-Zr§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§_-Zr§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §_-BH§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§_-pm§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§_-pm§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §_-Rc§(param1:String) : Number
      {
         if(!this.§_-Zr§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§_-Zr§[param1])
         {
            return this.§_-Zr§[param1];
         }
         return 1;
      }
      
      public function §_-2T§(param1:String) : Number
      {
         if(!this.§_-pm§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§_-pm§[param1])
         {
            return this.§_-pm§[param1];
         }
         return 1;
      }
   }
}
