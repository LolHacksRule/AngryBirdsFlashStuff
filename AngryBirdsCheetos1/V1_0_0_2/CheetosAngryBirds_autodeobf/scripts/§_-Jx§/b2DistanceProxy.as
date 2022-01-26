package §_-Jx§
{
   import § if§.*;
   import §_-F2§.*;
   import §_-d6§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §_-0F§:Vector.<b2Vec2>;
      
      public var §_-yf§:int;
      
      public var §_-KL§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§_-cT§())
         {
            case b2Shape.§_-4p§:
               _loc2_ = param1 as b2CircleShape;
               this.§_-0F§ = new Vector.<b2Vec2>(1,true);
               this.§_-0F§[0] = _loc2_.§_-SA§;
               this.§_-yf§ = 1;
               this.§_-KL§ = _loc2_.§_-KL§;
               break;
            case b2Shape.§_-Wf§:
               _loc3_ = param1 as b2PolygonShape;
               this.§_-0F§ = _loc3_.§_-0F§;
               this.§_-yf§ = _loc3_.§_-gw§;
               this.§_-KL§ = _loc3_.§_-KL§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §_-EM§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§_-0F§[0].x * param1.x + this.§_-0F§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§_-yf§)
         {
            if((_loc5_ = this.§_-0F§[_loc4_].x * param1.x + this.§_-0F§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §_-y8§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§_-0F§[0].x * param1.x + this.§_-0F§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§_-yf§)
         {
            if((_loc5_ = this.§_-0F§[_loc4_].x * param1.x + this.§_-0F§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§_-0F§[_loc2_];
      }
      
      public function §_-Vk§() : int
      {
         return this.§_-yf§;
      }
      
      public function §_-p5§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§_-yf§);
         return this.§_-0F§[param1];
      }
   }
}
