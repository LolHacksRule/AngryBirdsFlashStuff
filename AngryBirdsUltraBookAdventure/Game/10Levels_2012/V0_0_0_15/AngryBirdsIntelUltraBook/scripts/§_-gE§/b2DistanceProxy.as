package §_-gE§
{
   import §_-03n§.*;
   import §_-5§.*;
   import §_-Yp§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §_-09U§:Vector.<b2Vec2>;
      
      public var §_-ru§:int;
      
      public var §_-0CZ§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§_-oF§())
         {
            case b2Shape.§_-rv§:
               _loc2_ = param1 as b2CircleShape;
               this.§_-09U§ = new Vector.<b2Vec2>(1,true);
               this.§_-09U§[0] = _loc2_.§_-bq§;
               this.§_-ru§ = 1;
               this.§_-0CZ§ = _loc2_.§_-0CZ§;
               break;
            case b2Shape.§_-04L§:
               _loc3_ = param1 as b2PolygonShape;
               this.§_-09U§ = _loc3_.§_-09U§;
               this.§_-ru§ = _loc3_.§_-OS§;
               this.§_-0CZ§ = _loc3_.§_-0CZ§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §_-02l§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§_-09U§[0].x * param1.x + this.§_-09U§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§_-ru§)
         {
            if((_loc5_ = this.§_-09U§[_loc4_].x * param1.x + this.§_-09U§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §_-01c§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§_-09U§[0].x * param1.x + this.§_-09U§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§_-ru§)
         {
            if((_loc5_ = this.§_-09U§[_loc4_].x * param1.x + this.§_-09U§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§_-09U§[_loc2_];
      }
      
      public function §_-y3§() : int
      {
         return this.§_-ru§;
      }
      
      public function §_-0-e§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§_-ru§);
         return this.§_-09U§[param1];
      }
   }
}
