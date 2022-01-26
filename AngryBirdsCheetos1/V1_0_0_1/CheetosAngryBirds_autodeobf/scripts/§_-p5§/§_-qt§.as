package §_-p5§
{
   import §_-U0§.§_-tF§;
   import §try§.b2Body;
   
   public class §_-qt§
   {
      
      public static const §_-sf§:int = 0;
      
      public static const §_-YF§:int = b2Body.b2_staticBody;
      
      public static const §_-Vf§:int = b2Body.b2_kinematicBody;
      
      public static const §_-O8§:int = b2Body.b2_dynamicBody;
      
      public static const §_-hY§:int = 1;
      
      public static const §_-CA§:int = 2;
      
      public static const §_-RB§:int = 3;
      
      public static const §_-Oq§:int = 4;
      
      public static const §_-yL§:int = 5;
      
      public static const §_-Ds§:int = 6;
       
      
      public var mName:String;
      
      public var §_-sF§:Array;
      
      public var §_-FO§:Array;
      
      public var §_-dy§:Array;
      
      public function §_-qt§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.§_-sF§ = new Array();
         this.§_-sF§[§_-sf§] = this.§_-YQ§(param2);
         this.§_-sF§[§_-hY§] = param3;
         this.§_-sF§[§_-CA§] = param4;
         this.§_-sF§[§_-RB§] = param5;
         this.§_-sF§[§_-Oq§] = param6;
         this.§_-sF§[§_-yL§] = param7;
         this.§_-sF§[§_-Ds§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.§_-sF§[param1];
      }
      
      private function §_-YQ§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §_-Vf§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §_-YF§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §_-O8§;
         }
         §_-tF§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §_-YF§;
      }
      
      public function §_-fr§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§_-FO§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§_-FO§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §_-8W§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§_-dy§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§_-dy§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §_-cw§(param1:String) : Number
      {
         if(!this.§_-FO§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§_-FO§[param1])
         {
            return this.§_-FO§[param1];
         }
         return 1;
      }
      
      public function §_-7X§(param1:String) : Number
      {
         if(!this.§_-dy§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§_-dy§[param1])
         {
            return this.§_-dy§[param1];
         }
         return 1;
      }
   }
}
