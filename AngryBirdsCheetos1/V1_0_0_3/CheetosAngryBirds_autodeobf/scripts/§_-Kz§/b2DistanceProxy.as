package §_-Kz§
{
   import §_-Jf§.*;
   import §_-OY§.*;
   import §_-Vn§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §_-ja§:Vector.<b2Vec2>;
      
      public var §_-xi§:int;
      
      public var §_-EG§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§_-n§())
         {
            case b2Shape.§_-b9§:
               _loc2_ = param1 as b2CircleShape;
               this.§_-ja§ = new Vector.<b2Vec2>(1,true);
               this.§_-ja§[0] = _loc2_.§_-QL§;
               this.§_-xi§ = 1;
               this.§_-EG§ = _loc2_.§_-EG§;
               break;
            case b2Shape.§_-8u§:
               _loc3_ = param1 as b2PolygonShape;
               this.§_-ja§ = _loc3_.§_-ja§;
               this.§_-xi§ = _loc3_.§_-Ta§;
               this.§_-EG§ = _loc3_.§_-EG§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §_-Bv§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§_-ja§[0].x * param1.x + this.§_-ja§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§_-xi§)
         {
            if((_loc5_ = this.§_-ja§[_loc4_].x * param1.x + this.§_-ja§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §_-cf§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§_-ja§[0].x * param1.x + this.§_-ja§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§_-xi§)
         {
            if((_loc5_ = this.§_-ja§[_loc4_].x * param1.x + this.§_-ja§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§_-ja§[_loc2_];
      }
      
      public function §_-kB§() : int
      {
         return this.§_-xi§;
      }
      
      public function §_-QB§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§_-xi§);
         return this.§_-ja§[param1];
      }
   }
}
