package §_-X4§
{
   import §_-00B§.b2Body;
   import §_-r6§.§_-Oy§;
   
   public class §_-Fs§
   {
      
      public static const §_-mP§:int = 0;
      
      public static const §_-LE§:int = b2Body.b2_staticBody;
      
      public static const §_-7V§:int = b2Body.b2_kinematicBody;
      
      public static const §_-5R§:int = b2Body.b2_dynamicBody;
      
      public static const §_-Yn§:int = 1;
      
      public static const §_-y6§:int = 2;
      
      public static const §_-zb§:int = 3;
      
      public static const §_-FG§:int = 4;
      
      public static const §_-ed§:int = 5;
      
      public static const §_-p6§:int = 6;
       
      
      public var mName:String;
      
      public var §_-zO§:Array;
      
      public var §_-eJ§:Array;
      
      public var §_-ai§:Array;
      
      public function §_-Fs§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.§_-zO§ = new Array();
         this.§_-zO§[§_-mP§] = this.§_-bI§(param2);
         this.§_-zO§[§_-Yn§] = param3;
         this.§_-zO§[§_-y6§] = param4;
         this.§_-zO§[§_-zb§] = param5;
         this.§_-zO§[§_-FG§] = param6;
         this.§_-zO§[§_-ed§] = param7;
         this.§_-zO§[§_-p6§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.§_-zO§[param1];
      }
      
      private function §_-bI§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §_-7V§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §_-LE§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §_-5R§;
         }
         §_-Oy§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §_-LE§;
      }
      
      public function §_-5Z§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§_-eJ§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§_-eJ§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §_-eb§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§_-ai§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§_-ai§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §_-Mp§(param1:String) : Number
      {
         if(!this.§_-eJ§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§_-eJ§[param1])
         {
            return this.§_-eJ§[param1];
         }
         return 1;
      }
      
      public function §_-QZ§(param1:String) : Number
      {
         if(!this.§_-ai§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§_-ai§[param1])
         {
            return this.§_-ai§[param1];
         }
         return 1;
      }
   }
}
