package §_-hR§
{
   import §_-ot§.§_-o6§;
   import §_-rg§.b2Body;
   
   public class §_-X9§
   {
      
      public static const §_-bx§:int = 0;
      
      public static const §_-bF§:int = b2Body.b2_staticBody;
      
      public static const §_-tp§:int = b2Body.b2_kinematicBody;
      
      public static const §_-fv§:int = b2Body.b2_dynamicBody;
      
      public static const §_-Qm§:int = 1;
      
      public static const §_-b1§:int = 2;
      
      public static const §_-Qg§:int = 3;
      
      public static const §_-aW§:int = 4;
      
      public static const §_-44§:int = 5;
      
      public static const §_-IC§:int = 6;
       
      
      public var mName:String;
      
      public var §_-76§:Array;
      
      public var §_-Hf§:Array;
      
      public var §_-P2§:Array;
      
      public function §_-X9§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.§_-76§ = new Array();
         this.§_-76§[§_-bx§] = this.§_-fo§(param2);
         this.§_-76§[§_-Qm§] = param3;
         this.§_-76§[§_-b1§] = param4;
         this.§_-76§[§_-Qg§] = param5;
         this.§_-76§[§_-aW§] = param6;
         this.§_-76§[§_-44§] = param7;
         this.§_-76§[§_-IC§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.§_-76§[param1];
      }
      
      private function §_-fo§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §_-tp§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §_-bF§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §_-fv§;
         }
         §_-o6§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §_-bF§;
      }
      
      public function §_-FY§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§_-Hf§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§_-Hf§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §_-GQ§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§_-P2§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§_-P2§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §_-uy§(param1:String) : Number
      {
         if(!this.§_-Hf§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§_-Hf§[param1])
         {
            return this.§_-Hf§[param1];
         }
         return 1;
      }
      
      public function §_-hM§(param1:String) : Number
      {
         if(!this.§_-P2§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§_-P2§[param1])
         {
            return this.§_-P2§[param1];
         }
         return 1;
      }
   }
}
