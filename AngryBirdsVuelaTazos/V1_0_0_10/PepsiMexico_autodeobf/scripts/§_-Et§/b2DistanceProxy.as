package §_-Et§
{
   import §_-I2§.*;
   import §_-Zl§.*;
   import §_-uS§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §_-3A§:Vector.<b2Vec2>;
      
      public var §_-No§:int;
      
      public var §_-Bn§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§_-Iy§())
         {
            case b2Shape.§_-sH§:
               _loc2_ = param1 as b2CircleShape;
               this.§_-3A§ = new Vector.<b2Vec2>(1,true);
               this.§_-3A§[0] = _loc2_.§_-E4§;
               this.§_-No§ = 1;
               this.§_-Bn§ = _loc2_.§_-Bn§;
               break;
            case b2Shape.§_-Sw§:
               _loc3_ = param1 as b2PolygonShape;
               this.§_-3A§ = _loc3_.§_-3A§;
               this.§_-No§ = _loc3_.§_-om§;
               this.§_-Bn§ = _loc3_.§_-Bn§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §_-BW§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§_-3A§[0].x * param1.x + this.§_-3A§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§_-No§)
         {
            if((_loc5_ = this.§_-3A§[_loc4_].x * param1.x + this.§_-3A§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §_-vW§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§_-3A§[0].x * param1.x + this.§_-3A§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§_-No§)
         {
            if((_loc5_ = this.§_-3A§[_loc4_].x * param1.x + this.§_-3A§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§_-3A§[_loc2_];
      }
      
      public function §_-1d§() : int
      {
         return this.§_-No§;
      }
      
      public function §_-L3§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§_-No§);
         return this.§_-3A§[param1];
      }
   }
}
