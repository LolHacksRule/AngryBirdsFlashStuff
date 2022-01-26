package §_-WH§
{
   import §_-4n§.b2Vec2;
   import §_-Eo§.§_-R4§;
   import §_-yJ§.b2CircleShape;
   import §_-yJ§.b2PolygonShape;
   import §_-yJ§.b2Shape;
   
   public class §_-ce§
   {
      
      public static const §_-M7§:int = 0;
      
      public static const §_-6R§:int = 1;
      
      public static const §_-E7§:int = 2;
      
      public static const §_-Rw§:int = 3;
      
      public static const §_-kD§:int = 4;
      
      public static const §_-73§:int = 5;
       
      
      public var mName:String;
      
      public var §_-jG§:int;
      
      public var §_-U0§:Number;
      
      public var §_-bN§:Number;
      
      public var §_-4t§:Number;
      
      public var §_-YI§:Array = null;
      
      public function §_-ce§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§_-jG§ = this.§_-RS§(param2);
         this.§_-U0§ = param3;
         this.§_-bN§ = param4;
         this.§_-4t§ = param5;
      }
      
      public function §_-im§() : int
      {
         return this.§_-jG§;
      }
      
      public function §_-aj§() : Number
      {
         return this.§_-U0§;
      }
      
      public function §_-vb§() : int
      {
         return this.§_-bN§;
      }
      
      private function §_-RS§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §_-Rw§;
         }
         if(param1 == "CIRCLE")
         {
            return §_-kD§;
         }
         if(param1 == "POLYGON")
         {
            return §_-73§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §_-M7§;
         }
         if(param1 == "Image_Polygon")
         {
            return §_-6R§;
         }
         if(param1 == "Image_Circle")
         {
            return §_-E7§;
         }
         §_-R4§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §_-Rw§;
      }
      
      public function §_-ag§() : Array
      {
         return this.§_-YI§;
      }
      
      public function §_-UT§(param1:Array) : void
      {
         this.§_-YI§ = param1;
      }
      
      public function §_-Sc§() : void
      {
         var _loc1_:Array = this.§_-Uk§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§_-U0§ = _loc3_.x - _loc2_.x;
         this.§_-bN§ = _loc3_.y - _loc2_.y;
      }
      
      public function §_-Uk§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§_-YI§)
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
      
      public function §_-TC§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§_-jG§)
         {
            case §_-kD§:
               _loc2_ = new b2CircleShape();
               _loc2_.§_-Dk§(this.§_-U0§ * param1);
               return _loc2_;
            case §_-73§:
               _loc3_ = this.§_-ag§();
               (_loc4_ = new b2PolygonShape()).§_-Qd§(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.§_-N5§();
               for each(_loc6_ in _loc5_)
               {
                  _loc6_.x *= param1;
                  _loc6_.y *= param1;
               }
               return _loc4_;
            default:
               return null;
         }
      }
   }
}
