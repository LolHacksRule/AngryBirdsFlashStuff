package §_-qg§
{
   import §_-Ja§.*;
   import §_-Kt§.*;
   import §_-lh§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §_-Ui§:Vector.<b2Vec2>;
      
      public var §_-01§:int;
      
      public var §_-Q2§:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.§_-ww§())
         {
            case b2Shape.§_-n7§:
               _loc2_ = param1 as b2CircleShape;
               this.§_-Ui§ = new Vector.<b2Vec2>(1,true);
               this.§_-Ui§[0] = _loc2_.§_-Ga§;
               this.§_-01§ = 1;
               this.§_-Q2§ = _loc2_.§_-Q2§;
               break;
            case b2Shape.§_-6T§:
               _loc3_ = param1 as b2PolygonShape;
               this.§_-Ui§ = _loc3_.§_-Ui§;
               this.§_-01§ = _loc3_.§_-Wz§;
               this.§_-Q2§ = _loc3_.§_-Q2§;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §_-xy§(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§_-Ui§[0].x * param1.x + this.§_-Ui§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§_-01§)
         {
            if((_loc5_ = this.§_-Ui§[_loc4_].x * param1.x + this.§_-Ui§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §_-cH§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§_-Ui§[0].x * param1.x + this.§_-Ui§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§_-01§)
         {
            if((_loc5_ = this.§_-Ui§[_loc4_].x * param1.x + this.§_-Ui§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§_-Ui§[_loc2_];
      }
      
      public function §_-m9§() : int
      {
         return this.§_-01§;
      }
      
      public function §_-Su§(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this.§_-01§);
         return this.§_-Ui§[param1];
      }
   }
}
