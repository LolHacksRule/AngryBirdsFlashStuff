package §_-wZ§
{
   import §_-8i§.*;
   import §_-SM§.*;
   import §var§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §_-zV§:Vector.<b2Vec2>;
      
      public var §_-Cj§:int;
      
      public var §_-uG§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§_-kK§())
         {
            case b2Shape.§_-LV§:
               _loc2_ = param1 as b2CircleShape;
               this.§_-zV§ = new Vector.<b2Vec2>(1,true);
               this.§_-zV§[0] = _loc2_.§_-SG§;
               this.§_-Cj§ = 1;
               this.§_-uG§ = _loc2_.§_-uG§;
               break;
            case b2Shape.§_-Bp§:
               _loc3_ = param1 as b2PolygonShape;
               this.§_-zV§ = _loc3_.§_-zV§;
               this.§_-Cj§ = _loc3_.§_-n5§;
               this.§_-uG§ = _loc3_.§_-uG§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §_-lz§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§_-zV§[0].x * param1.x + this.§_-zV§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§_-Cj§)
         {
            if((_loc5_ = this.§_-zV§[_loc4_].x * param1.x + this.§_-zV§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §_-YG§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§_-zV§[0].x * param1.x + this.§_-zV§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§_-Cj§)
         {
            if((_loc5_ = this.§_-zV§[_loc4_].x * param1.x + this.§_-zV§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§_-zV§[_loc2_];
      }
      
      public function §_-R5§() : int
      {
         return this.§_-Cj§;
      }
      
      public function §_-br§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§_-Cj§);
         return this.§_-zV§[param1];
      }
   }
}
