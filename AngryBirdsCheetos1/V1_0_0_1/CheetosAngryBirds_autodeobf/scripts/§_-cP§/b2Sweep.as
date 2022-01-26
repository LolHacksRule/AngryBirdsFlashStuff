package §_-cP§
{
   public class b2Sweep
   {
       
      
      public var localCenter:b2Vec2;
      
      public var c0:b2Vec2;
      
      public var §_-xQ§:b2Vec2;
      
      public var a0:Number;
      
      public var a:Number;
      
      public var §_-7z§:Number;
      
      public function b2Sweep()
      {
         this.localCenter = new b2Vec2();
         this.c0 = new b2Vec2();
         this.§_-xQ§ = new b2Vec2();
         super();
      }
      
      public function Set(param1:b2Sweep) : void
      {
         this.localCenter.SetV(param1.localCenter);
         this.c0.SetV(param1.c0);
         this.§_-xQ§.SetV(param1.§_-xQ§);
         this.a0 = param1.a0;
         this.a = param1.a;
         this.§_-7z§ = param1.§_-7z§;
      }
      
      public function Copy() : b2Sweep
      {
         var _loc1_:b2Sweep = new b2Sweep();
         _loc1_.localCenter.SetV(this.localCenter);
         _loc1_.c0.SetV(this.c0);
         _loc1_.§_-xQ§.SetV(this.§_-xQ§);
         _loc1_.a0 = this.a0;
         _loc1_.a = this.a;
         _loc1_.§_-7z§ = this.§_-7z§;
         return _loc1_;
      }
      
      public function §_-KR§(param1:b2Transform, param2:Number) : void
      {
         param1.position.x = (1 - param2) * this.c0.x + param2 * this.§_-xQ§.x;
         param1.position.y = (1 - param2) * this.c0.y + param2 * this.§_-xQ§.y;
         var _loc3_:Number = (1 - param2) * this.a0 + param2 * this.a;
         param1.R.Set(_loc3_);
         var _loc4_:b2Mat22 = param1.R;
         param1.position.x -= _loc4_.col1.x * this.localCenter.x + _loc4_.col2.x * this.localCenter.y;
         param1.position.y -= _loc4_.col1.y * this.localCenter.x + _loc4_.col2.y * this.localCenter.y;
      }
      
      public function §_-Bc§(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         if(this.§_-7z§ < param1 && 1 - this.§_-7z§ > Number.MIN_VALUE)
         {
            _loc2_ = (param1 - this.§_-7z§) / (1 - this.§_-7z§);
            this.c0.x = (1 - _loc2_) * this.c0.x + _loc2_ * this.§_-xQ§.x;
            this.c0.y = (1 - _loc2_) * this.c0.y + _loc2_ * this.§_-xQ§.y;
            this.a0 = (1 - _loc2_) * this.a0 + _loc2_ * this.a;
            this.§_-7z§ = param1;
         }
      }
   }
}
