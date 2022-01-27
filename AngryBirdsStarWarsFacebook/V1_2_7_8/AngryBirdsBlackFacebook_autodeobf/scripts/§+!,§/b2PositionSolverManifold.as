package §+!,§
{
   import §%!#§.*;
   import §1x§.*;
   import §9!s§.*;
   import §^>§.*;
   
   use namespace b2internal;
   
   class b2PositionSolverManifold
   {
      
      private static var §!x§:b2Vec2 = new b2Vec2();
      
      private static var §&!S§:b2Vec2 = new b2Vec2();
       
      
      public var §+"Y§:b2Vec2;
      
      public var §`Y§:Vector.<b2Vec2>;
      
      public var §@!9§:Vector.<Number>;
      
      function b2PositionSolverManifold()
      {
         super();
         this.§+"Y§ = new b2Vec2();
         this.§@!9§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         this.§`Y§ = new Vector.<b2Vec2>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§`Y§[_loc1_] = new b2Vec2();
            _loc1_++;
         }
      }
      
      public function §8!s§(param1:b2ContactConstraint) : void
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
         b2Settings.b2Assert(param1.§6!o§ > 0);
         switch(param1.type)
         {
            case b2Manifold.§!!L§:
               _loc5_ = param1.§!!x§.m_xf.R;
               _loc6_ = param1.localPoint;
               _loc9_ = param1.§!!x§.m_xf.position.x + (_loc5_.col1.x * _loc6_.x + _loc5_.col2.x * _loc6_.y);
               _loc10_ = param1.§!!x§.m_xf.position.y + (_loc5_.col1.y * _loc6_.x + _loc5_.col2.y * _loc6_.y);
               _loc5_ = param1.§%!x§.m_xf.R;
               _loc6_ = param1.§;Y§[0].localPoint;
               _loc11_ = param1.§%!x§.m_xf.position.x + (_loc5_.col1.x * _loc6_.x + _loc5_.col2.x * _loc6_.y);
               _loc12_ = param1.§%!x§.m_xf.position.y + (_loc5_.col1.y * _loc6_.x + _loc5_.col2.y * _loc6_.y);
               _loc13_ = _loc11_ - _loc9_;
               _loc14_ = _loc12_ - _loc10_;
               if((_loc15_ = _loc13_ * _loc13_ + _loc14_ * _loc14_) > Number.MIN_VALUE * Number.MIN_VALUE)
               {
                  _loc16_ = Math.sqrt(_loc15_);
                  this.§+"Y§.x = _loc13_ / _loc16_;
                  this.§+"Y§.y = _loc14_ / _loc16_;
               }
               else
               {
                  this.§+"Y§.x = 1;
                  this.§+"Y§.y = 0;
               }
               this.§`Y§[0].x = 0.5 * (_loc9_ + _loc11_);
               this.§`Y§[0].y = 0.5 * (_loc10_ + _loc12_);
               this.§@!9§[0] = _loc13_ * this.§+"Y§.x + _loc14_ * this.§+"Y§.y - param1.radius;
               break;
            case b2Manifold.§;"d§:
               _loc5_ = param1.§!!x§.m_xf.R;
               _loc6_ = param1.§ =§;
               this.§+"Y§.x = _loc5_.col1.x * _loc6_.x + _loc5_.col2.x * _loc6_.y;
               this.§+"Y§.y = _loc5_.col1.y * _loc6_.x + _loc5_.col2.y * _loc6_.y;
               _loc5_ = param1.§!!x§.m_xf.R;
               _loc6_ = param1.localPoint;
               _loc7_ = param1.§!!x§.m_xf.position.x + (_loc5_.col1.x * _loc6_.x + _loc5_.col2.x * _loc6_.y);
               _loc8_ = param1.§!!x§.m_xf.position.y + (_loc5_.col1.y * _loc6_.x + _loc5_.col2.y * _loc6_.y);
               _loc5_ = param1.§%!x§.m_xf.R;
               _loc2_ = 0;
               while(_loc2_ < param1.§6!o§)
               {
                  _loc6_ = param1.§;Y§[_loc2_].localPoint;
                  _loc3_ = param1.§%!x§.m_xf.position.x + (_loc5_.col1.x * _loc6_.x + _loc5_.col2.x * _loc6_.y);
                  _loc4_ = param1.§%!x§.m_xf.position.y + (_loc5_.col1.y * _loc6_.x + _loc5_.col2.y * _loc6_.y);
                  this.§@!9§[_loc2_] = (_loc3_ - _loc7_) * this.§+"Y§.x + (_loc4_ - _loc8_) * this.§+"Y§.y - param1.radius;
                  this.§`Y§[_loc2_].x = _loc3_;
                  this.§`Y§[_loc2_].y = _loc4_;
                  _loc2_++;
               }
               break;
            case b2Manifold.§5"S§:
               _loc5_ = param1.§%!x§.m_xf.R;
               _loc6_ = param1.§ =§;
               this.§+"Y§.x = _loc5_.col1.x * _loc6_.x + _loc5_.col2.x * _loc6_.y;
               this.§+"Y§.y = _loc5_.col1.y * _loc6_.x + _loc5_.col2.y * _loc6_.y;
               _loc5_ = param1.§%!x§.m_xf.R;
               _loc6_ = param1.localPoint;
               _loc7_ = param1.§%!x§.m_xf.position.x + (_loc5_.col1.x * _loc6_.x + _loc5_.col2.x * _loc6_.y);
               _loc8_ = param1.§%!x§.m_xf.position.y + (_loc5_.col1.y * _loc6_.x + _loc5_.col2.y * _loc6_.y);
               _loc5_ = param1.§!!x§.m_xf.R;
               _loc2_ = 0;
               while(_loc2_ < param1.§6!o§)
               {
                  _loc6_ = param1.§;Y§[_loc2_].localPoint;
                  _loc3_ = param1.§!!x§.m_xf.position.x + (_loc5_.col1.x * _loc6_.x + _loc5_.col2.x * _loc6_.y);
                  _loc4_ = param1.§!!x§.m_xf.position.y + (_loc5_.col1.y * _loc6_.x + _loc5_.col2.y * _loc6_.y);
                  this.§@!9§[_loc2_] = (_loc3_ - _loc7_) * this.§+"Y§.x + (_loc4_ - _loc8_) * this.§+"Y§.y - param1.radius;
                  this.§`Y§[_loc2_].Set(_loc3_,_loc4_);
                  _loc2_++;
               }
               this.§+"Y§.x *= -1;
               this.§+"Y§.y *= -1;
         }
      }
   }
}
