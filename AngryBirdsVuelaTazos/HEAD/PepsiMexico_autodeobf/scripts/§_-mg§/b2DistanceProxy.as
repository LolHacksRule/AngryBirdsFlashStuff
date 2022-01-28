package §_-mg§
{
   import §_-Pu§.*;
   import §_-bA§.*;
   import §_-rz§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §_-4p§:Vector.<b2Vec2>;
      
      public var §_-0m§:int;
      
      public var §_-Cv§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§_-Wx§())
         {
            case b2Shape.§_-Pk§:
               _loc2_ = param1 as b2CircleShape;
               this.§_-4p§ = new Vector.<b2Vec2>(1,true);
               this.§_-4p§[0] = _loc2_.§_-cE§;
               this.§_-0m§ = 1;
               this.§_-Cv§ = _loc2_.§_-Cv§;
               break;
            case b2Shape.§_-u-§:
               _loc3_ = param1 as b2PolygonShape;
               this.§_-4p§ = _loc3_.§_-4p§;
               this.§_-0m§ = _loc3_.§_-aU§;
               this.§_-Cv§ = _loc3_.§_-Cv§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §_-0F§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§_-4p§[0].x * param1.x + this.§_-4p§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§_-0m§)
         {
            if((_loc5_ = this.§_-4p§[_loc4_].x * param1.x + this.§_-4p§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §_-Ns§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§_-4p§[0].x * param1.x + this.§_-4p§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§_-0m§)
         {
            if((_loc5_ = this.§_-4p§[_loc4_].x * param1.x + this.§_-4p§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§_-4p§[_loc2_];
      }
      
      public function §_-5B§() : int
      {
         return this.§_-0m§;
      }
      
      public function §_-rZ§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§_-0m§);
         return this.§_-4p§[param1];
      }
   }
}
