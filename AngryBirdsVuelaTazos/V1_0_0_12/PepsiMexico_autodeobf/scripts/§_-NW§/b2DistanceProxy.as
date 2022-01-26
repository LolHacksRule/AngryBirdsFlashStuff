package §_-Nw§
{
   import §_-9z§.*;
   import §_-Bt§.*;
   import §_-sU§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §_-2M§:Vector.<b2Vec2>;
      
      public var §_-KJ§:int;
      
      public var §_-uB§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§_-7L§())
         {
            case b2Shape.§_-1M§:
               _loc2_ = param1 as b2CircleShape;
               this.§_-2M§ = new Vector.<b2Vec2>(1,true);
               this.§_-2M§[0] = _loc2_.§_-c1§;
               this.§_-KJ§ = 1;
               this.§_-uB§ = _loc2_.§_-uB§;
               break;
            case b2Shape.§_-Tn§:
               _loc3_ = param1 as b2PolygonShape;
               this.§_-2M§ = _loc3_.§_-2M§;
               this.§_-KJ§ = _loc3_.§_-fy§;
               this.§_-uB§ = _loc3_.§_-uB§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §_-uK§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§_-2M§[0].x * param1.x + this.§_-2M§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§_-KJ§)
         {
            if((_loc5_ = this.§_-2M§[_loc4_].x * param1.x + this.§_-2M§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §_-pO§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§_-2M§[0].x * param1.x + this.§_-2M§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§_-KJ§)
         {
            if((_loc5_ = this.§_-2M§[_loc4_].x * param1.x + this.§_-2M§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§_-2M§[_loc2_];
      }
      
      public function §_-Kn§() : int
      {
         return this.§_-KJ§;
      }
      
      public function §false§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§_-KJ§);
         return this.§_-2M§[param1];
      }
   }
}
