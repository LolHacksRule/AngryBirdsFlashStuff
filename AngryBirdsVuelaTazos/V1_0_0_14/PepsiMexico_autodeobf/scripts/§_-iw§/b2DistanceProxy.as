package §_-iw§
{
   import §_-4n§.*;
   import §_-bW§.*;
   import §_-yJ§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §_-dR§:Vector.<b2Vec2>;
      
      public var §_-XS§:int;
      
      public var §_-9H§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§_-hZ§())
         {
            case b2Shape.§_-x7§:
               _loc2_ = param1 as b2CircleShape;
               this.§_-dR§ = new Vector.<b2Vec2>(1,true);
               this.§_-dR§[0] = _loc2_.§_-11§;
               this.§_-XS§ = 1;
               this.§_-9H§ = _loc2_.§_-9H§;
               break;
            case b2Shape.§_-yl§:
               _loc3_ = param1 as b2PolygonShape;
               this.§_-dR§ = _loc3_.§_-dR§;
               this.§_-XS§ = _loc3_.§_-xp§;
               this.§_-9H§ = _loc3_.§_-9H§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §_-ex§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§_-dR§[0].x * param1.x + this.§_-dR§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§_-XS§)
         {
            if((_loc5_ = this.§_-dR§[_loc4_].x * param1.x + this.§_-dR§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §_-3N§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§_-dR§[0].x * param1.x + this.§_-dR§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§_-XS§)
         {
            if((_loc5_ = this.§_-dR§[_loc4_].x * param1.x + this.§_-dR§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§_-dR§[_loc2_];
      }
      
      public function §_-IZ§() : int
      {
         return this.§_-XS§;
      }
      
      public function §_-a7§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§_-XS§);
         return this.§_-dR§[param1];
      }
   }
}
