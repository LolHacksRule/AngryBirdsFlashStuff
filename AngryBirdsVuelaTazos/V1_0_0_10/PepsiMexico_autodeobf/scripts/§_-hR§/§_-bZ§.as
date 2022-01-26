package §_-hR§
{
   import §_-I2§.b2CircleShape;
   import §_-I2§.b2PolygonShape;
   import §_-I2§.b2Shape;
   import §_-Zl§.b2Vec2;
   import §_-ot§.§_-o6§;
   
   public class §_-bZ§
   {
      
      public static const §_-c0§:int = 0;
      
      public static const §_-S6§:int = 1;
      
      public static const §_-M8§:int = 2;
      
      public static const §_-o7§:int = 3;
      
      public static const §_-Wy§:int = 4;
      
      public static const §_-WL§:int = 5;
       
      
      public var mName:String;
      
      public var §_-DD§:int;
      
      public var §_-NR§:Number;
      
      public var §_-F0§:Number;
      
      public var §_-ON§:Number;
      
      public var §_-Mj§:Array = null;
      
      public function §_-bZ§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§_-DD§ = this.§_-L6§(param2);
         this.§_-NR§ = param3;
         this.§_-F0§ = param4;
         this.§_-ON§ = param5;
      }
      
      public function §_-lk§() : int
      {
         return this.§_-DD§;
      }
      
      public function §_-Mw§() : Number
      {
         return this.§_-NR§;
      }
      
      public function §_-PD§() : int
      {
         return this.§_-F0§;
      }
      
      private function §_-L6§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §_-o7§;
         }
         if(param1 == "CIRCLE")
         {
            return §_-Wy§;
         }
         if(param1 == "POLYGON")
         {
            return §_-WL§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §_-c0§;
         }
         if(param1 == "Image_Polygon")
         {
            return §_-S6§;
         }
         if(param1 == "Image_Circle")
         {
            return §_-M8§;
         }
         §_-o6§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §_-o7§;
      }
      
      public function §_-f7§() : Array
      {
         return this.§_-Mj§;
      }
      
      public function §_-3g§(param1:Array) : void
      {
         this.§_-Mj§ = param1;
      }
      
      public function §_-G9§() : void
      {
         var _loc1_:Array = this.§_-Dl§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§_-NR§ = _loc3_.x - _loc2_.x;
         this.§_-F0§ = _loc3_.y - _loc2_.y;
      }
      
      public function §_-Dl§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§_-Mj§)
         {
            if(_loc5_)
            {
               _loc1_ = _loc3_ = _loc6_.x;
               _loc2_ = _loc4_ = _loc6_.y;
               _loc5_ = false;
            }
            else
            {
               if(_loc6_.x < _loc1_)
               {
                  _loc1_ = _loc6_.x;
               }
               if(_loc6_.x > _loc3_)
               {
                  _loc3_ = _loc6_.x;
               }
               if(_loc6_.y < _loc2_)
               {
                  _loc2_ = _loc6_.y;
               }
               if(_loc6_.y > _loc4_)
               {
                  _loc4_ = _loc6_.y;
               }
            }
         }
         return [new b2Vec2(_loc1_,_loc2_),new b2Vec2(_loc3_,_loc4_)];
      }
      
      public function §_-Vg§() : b2Shape
      {
         var _loc1_:b2CircleShape = null;
         var _loc2_:Array = null;
         var _loc3_:b2PolygonShape = null;
         switch(this.§_-DD§)
         {
            case §_-Wy§:
               _loc1_ = new b2CircleShape();
               _loc1_.§_-Q4§(this.§_-NR§);
               return _loc1_;
            case §_-WL§:
               _loc2_ = this.§_-f7§();
               _loc3_ = new b2PolygonShape();
               _loc3_.§_-Vf§(_loc2_,_loc2_.length);
               return _loc3_;
            default:
               return null;
         }
      }
   }
}
