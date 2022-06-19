package §_-ZX§
{
   import §_-43§.*;
   import §_-F2§.*;
   import §_-Jx§.*;
   import §_-d6§.*;
   
   use namespace b2internal;
   
   class b2PositionSolverManifold
   {
      
      private static var §_-iA§:b2Vec2 = new b2Vec2();
      
      private static var §_-LD§:b2Vec2 = new b2Vec2();
       
      
      public var §_-D6§:b2Vec2;
      
      public var §_-wz§:Vector.<b2Vec2>;
      
      public var §_-MJ§:Vector.<Number>;
      
      function b2PositionSolverManifold()
      {
         super();
         this.§_-D6§ = new b2Vec2();
         this.§_-MJ§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         this.§_-wz§ = new Vector.<b2Vec2>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§_-wz§[_loc1_] = new b2Vec2();
            _loc1_++;
         }
      }
      
      public function §_-M0§(param1:b2ContactConstraint) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:b2Mat22 = null;
         var _loc6_:b2Vec2 = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         b2Settings.b2Assert(param1.§_-r0§ > 0);
         switch(param1.type)
         {
            case b2Manifold.§_-O8§:
               _loc5_ = param1.§_-4f§.m_xf.R;
               _loc6_ = param1.localPoint;
               _loc9_ = param1.§_-4f§.m_xf.position.x + (_loc5_.col1.x * _loc6_.x + _loc5_.col2.x * _loc6_.y);
               _loc10_ = param1.§_-4f§.m_xf.position.y + (_loc5_.col1.y * _loc6_.x + _loc5_.col2.y * _loc6_.y);
               _loc5_ = param1.§_-FU§.m_xf.R;
               _loc6_ = param1.§_-yP§[0].localPoint;
               _loc11_ = param1.§_-FU§.m_xf.position.x + (_loc5_.col1.x * _loc6_.x + _loc5_.col2.x * _loc6_.y);
               _loc12_ = param1.§_-FU§.m_xf.position.y + (_loc5_.col1.y * _loc6_.x + _loc5_.col2.y * _loc6_.y);
               _loc13_ = _loc11_ - _loc9_;
               _loc14_ = _loc12_ - _loc10_;
               if((_loc15_ = _loc13_ * _loc13_ + _loc14_ * _loc14_) > Number.MIN_VALUE * Number.MIN_VALUE)
               {
                  _loc16_ = Math.sqrt(_loc15_);
                  this.§_-D6§.x = _loc13_ / _loc16_;
                  this.§_-D6§.y = _loc14_ / _loc16_;
               }
               else
               {
                  this.§_-D6§.x = 1;
                  this.§_-D6§.y = 0;
               }
               this.§_-wz§[0].x = 0.5 * (_loc9_ + _loc11_);
               this.§_-wz§[0].y = 0.5 * (_loc10_ + _loc12_);
               this.§_-MJ§[0] = _loc13_ * this.§_-D6§.x + _loc14_ * this.§_-D6§.y - param1.radius;
               break;
            case b2Manifold.§_-IX§:
               _loc5_ = param1.§_-4f§.m_xf.R;
               _loc6_ = param1.§_-ay§;
               this.§_-D6§.x = _loc5_.col1.x * _loc6_.x + _loc5_.col2.x * _loc6_.y;
               this.§_-D6§.y = _loc5_.col1.y * _loc6_.x + _loc5_.col2.y * _loc6_.y;
               _loc5_ = param1.§_-4f§.m_xf.R;
               _loc6_ = param1.localPoint;
               _loc7_ = param1.§_-4f§.m_xf.position.x + (_loc5_.col1.x * _loc6_.x + _loc5_.col2.x * _loc6_.y);
               _loc8_ = param1.§_-4f§.m_xf.position.y + (_loc5_.col1.y * _loc6_.x + _loc5_.col2.y * _loc6_.y);
               _loc5_ = param1.§_-FU§.m_xf.R;
               _loc2_ = 0;
               while(_loc2_ < param1.§_-r0§)
               {
                  _loc6_ = param1.§_-yP§[_loc2_].localPoint;
                  _loc3_ = param1.§_-FU§.m_xf.position.x + (_loc5_.col1.x * _loc6_.x + _loc5_.col2.x * _loc6_.y);
                  _loc4_ = param1.§_-FU§.m_xf.position.y + (_loc5_.col1.y * _loc6_.x + _loc5_.col2.y * _loc6_.y);
                  this.§_-MJ§[_loc2_] = (_loc3_ - _loc7_) * this.§_-D6§.x + (_loc4_ - _loc8_) * this.§_-D6§.y - param1.radius;
                  this.§_-wz§[_loc2_].x = _loc3_;
                  this.§_-wz§[_loc2_].y = _loc4_;
                  _loc2_++;
               }
               break;
            case b2Manifold.§_-vC§:
               _loc5_ = param1.§_-FU§.m_xf.R;
               _loc6_ = param1.§_-ay§;
               this.§_-D6§.x = _loc5_.col1.x * _loc6_.x + _loc5_.col2.x * _loc6_.y;
               this.§_-D6§.y = _loc5_.col1.y * _loc6_.x + _loc5_.col2.y * _loc6_.y;
               _loc5_ = param1.§_-FU§.m_xf.R;
               _loc6_ = param1.localPoint;
               _loc7_ = param1.§_-FU§.m_xf.position.x + (_loc5_.col1.x * _loc6_.x + _loc5_.col2.x * _loc6_.y);
               _loc8_ = param1.§_-FU§.m_xf.position.y + (_loc5_.col1.y * _loc6_.x + _loc5_.col2.y * _loc6_.y);
               _loc5_ = param1.§_-4f§.m_xf.R;
               _loc2_ = 0;
               while(_loc2_ < param1.§_-r0§)
               {
                  _loc6_ = param1.§_-yP§[_loc2_].localPoint;
                  _loc3_ = param1.§_-4f§.m_xf.position.x + (_loc5_.col1.x * _loc6_.x + _loc5_.col2.x * _loc6_.y);
                  _loc4_ = param1.§_-4f§.m_xf.position.y + (_loc5_.col1.y * _loc6_.x + _loc5_.col2.y * _loc6_.y);
                  this.§_-MJ§[_loc2_] = (_loc3_ - _loc7_) * this.§_-D6§.x + (_loc4_ - _loc8_) * this.§_-D6§.y - param1.radius;
                  this.§_-wz§[_loc2_].Set(_loc3_,_loc4_);
                  _loc2_++;
               }
               this.§_-D6§.x *= -1;
               this.§_-D6§.y *= -1;
         }
      }
   }
}
