package §_-tK§
{
   import §_-26§.*;
   import §_-dx§.*;
   import §_-iO§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §_-n6§:Vector.<b2Vec2>;
      
      public var §_-Xp§:int;
      
      public var §_-8z§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§_-AY§())
         {
            case b2Shape.§_-UU§:
               _loc2_ = param1 as b2CircleShape;
               this.§_-n6§ = new Vector.<b2Vec2>(1,true);
               this.§_-n6§[0] = _loc2_.§_-B1§;
               this.§_-Xp§ = 1;
               this.§_-8z§ = _loc2_.§_-8z§;
               break;
            case b2Shape.§_-fB§:
               _loc3_ = param1 as b2PolygonShape;
               this.§_-n6§ = _loc3_.§_-n6§;
               this.§_-Xp§ = _loc3_.§_-gy§;
               this.§_-8z§ = _loc3_.§_-8z§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §_-na§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§_-n6§[0].x * param1.x + this.§_-n6§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§_-Xp§)
         {
            if((_loc5_ = this.§_-n6§[_loc4_].x * param1.x + this.§_-n6§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §_-Tf§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§_-n6§[0].x * param1.x + this.§_-n6§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§_-Xp§)
         {
            if((_loc5_ = this.§_-n6§[_loc4_].x * param1.x + this.§_-n6§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§_-n6§[_loc2_];
      }
      
      public function §_-tH§() : int
      {
         return this.§_-Xp§;
      }
      
      public function §_-sZ§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§_-Xp§);
         return this.§_-n6§[param1];
      }
   }
}
