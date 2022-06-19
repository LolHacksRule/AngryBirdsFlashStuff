package §_-yI§
{
   import §_-b4§.*;
   import §_-cG§.*;
   import §_-cP§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §_-x6§:Vector.<b2Vec2>;
      
      public var §_-Gi§:int;
      
      public var §_-EO§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§_-sl§())
         {
            case b2Shape.§_-RR§:
               _loc2_ = param1 as b2CircleShape;
               this.§_-x6§ = new Vector.<b2Vec2>(1,true);
               this.§_-x6§[0] = _loc2_.§_-Hd§;
               this.§_-Gi§ = 1;
               this.§_-EO§ = _loc2_.§_-EO§;
               break;
            case b2Shape.§_-fT§:
               _loc3_ = param1 as b2PolygonShape;
               this.§_-x6§ = _loc3_.§_-x6§;
               this.§_-Gi§ = _loc3_.§_-Si§;
               this.§_-EO§ = _loc3_.§_-EO§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §_-mL§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§_-x6§[0].x * param1.x + this.§_-x6§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§_-Gi§)
         {
            if((_loc5_ = this.§_-x6§[_loc4_].x * param1.x + this.§_-x6§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §_-pC§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§_-x6§[0].x * param1.x + this.§_-x6§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§_-Gi§)
         {
            if((_loc5_ = this.§_-x6§[_loc4_].x * param1.x + this.§_-x6§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§_-x6§[_loc2_];
      }
      
      public function §_-xY§() : int
      {
         return this.§_-Gi§;
      }
      
      public function §_-0-g§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§_-Gi§);
         return this.§_-x6§[param1];
      }
   }
}
