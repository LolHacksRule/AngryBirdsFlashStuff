package §_-HU§
{
   import §_-Iw§.b2Body;
   import §_-e3§.§_-54§;
   
   public class §_-gs§
   {
      
      public static const §_-9b§:int = 0;
      
      public static const §_-AZ§:int = b2Body.b2_staticBody;
      
      public static const §_-a1§:int = b2Body.b2_kinematicBody;
      
      public static const §_-Is§:int = b2Body.b2_dynamicBody;
      
      public static const §_-en§:int = 1;
      
      public static const §_-bc§:int = 2;
      
      public static const §_-4o§:int = 3;
      
      public static const §_-Zy§:int = 4;
      
      public static const §_-wQ§:int = 5;
      
      public static const §_-ki§:int = 6;
       
      
      public var mName:String;
      
      public var §_-qb§:Array;
      
      public var §_-Dy§:Array;
      
      public var §_-pO§:Array;
      
      public function §_-gs§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.§_-qb§ = new Array();
         this.§_-qb§[§_-9b§] = this.§_-yf§(param2);
         this.§_-qb§[§_-en§] = param3;
         this.§_-qb§[§_-bc§] = param4;
         this.§_-qb§[§_-4o§] = param5;
         this.§_-qb§[§_-Zy§] = param6;
         this.§_-qb§[§_-wQ§] = param7;
         this.§_-qb§[§_-ki§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.§_-qb§[param1];
      }
      
      private function §_-yf§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §_-a1§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §_-AZ§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §_-Is§;
         }
         §_-54§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §_-AZ§;
      }
      
      public function §_-IU§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§_-Dy§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§_-Dy§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §_-CB§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§_-pO§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§_-pO§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §_-QL§(param1:String) : Number
      {
         if(!this.§_-Dy§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§_-Dy§[param1])
         {
            return this.§_-Dy§[param1];
         }
         return 1;
      }
      
      public function §_-ek§(param1:String) : Number
      {
         if(!this.§_-pO§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§_-pO§[param1])
         {
            return this.§_-pO§[param1];
         }
         return 1;
      }
   }
}
