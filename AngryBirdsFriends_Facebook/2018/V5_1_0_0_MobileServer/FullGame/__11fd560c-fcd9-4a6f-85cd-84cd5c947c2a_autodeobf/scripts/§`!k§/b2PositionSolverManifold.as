package §`!k§
{
   import § "%§.*;
   import §'"$§.*;
   import §,!s§.*;
   import §4"O§.*;
   
   use namespace b2internal;
   
   class b2PositionSolverManifold
   {
      
      private static var §^!$§:b2Vec2 = new b2Vec2();
      
      private static var §&"D§:b2Vec2 = new b2Vec2();
       
      
      public var §=u§:b2Vec2;
      
      public var §"!e§:Vector.<b2Vec2>;
      
      public var §8!<§:Vector.<Number>;
      
      function b2PositionSolverManifold()
      {
         super();
         this.§=u§ = new b2Vec2();
         this.§8!<§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         this.§"!e§ = new Vector.<b2Vec2>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§"!e§[_loc1_] = new b2Vec2();
            _loc1_++;
         }
      }
      
      public function §?#W§(param1:b2ContactConstraint) : void
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
         b2Settings.b2Assert(param1.§7!$§ > 0);
         switch(param1.type)
         {
            case b2Manifold.§@!1§:
               _loc5_ = param1.§'§.m_xf.R;
               _loc6_ = param1.localPoint;
               _loc9_ = param1.§'§.m_xf.position.x + (_loc5_.col1.x * _loc6_.x + _loc5_.col2.x * _loc6_.y);
               _loc10_ = param1.§'§.m_xf.position.y + (_loc5_.col1.y * _loc6_.x + _loc5_.col2.y * _loc6_.y);
               _loc5_ = param1.§>!2§.m_xf.R;
               _loc6_ = param1.§;$$§[0].localPoint;
               _loc11_ = param1.§>!2§.m_xf.position.x + (_loc5_.col1.x * _loc6_.x + _loc5_.col2.x * _loc6_.y);
               _loc12_ = param1.§>!2§.m_xf.position.y + (_loc5_.col1.y * _loc6_.x + _loc5_.col2.y * _loc6_.y);
               _loc13_ = _loc11_ - _loc9_;
               _loc14_ = _loc12_ - _loc10_;
               if((_loc15_ = _loc13_ * _loc13_ + _loc14_ * _loc14_) > Number.MIN_VALUE * Number.MIN_VALUE)
               {
                  _loc16_ = Math.sqrt(_loc15_);
                  this.§=u§.x = _loc13_ / _loc16_;
                  this.§=u§.y = _loc14_ / _loc16_;
               }
               else
               {
                  this.§=u§.x = 1;
                  this.§=u§.y = 0;
               }
               this.§"!e§[0].x = 0.5 * (_loc9_ + _loc11_);
               this.§"!e§[0].y = 0.5 * (_loc10_ + _loc12_);
               this.§8!<§[0] = _loc13_ * this.§=u§.x + _loc14_ * this.§=u§.y - param1.radius;
               break;
            case b2Manifold.§"# §:
               _loc5_ = param1.§'§.m_xf.R;
               _loc6_ = param1.§>#R§;
               this.§=u§.x = _loc5_.col1.x * _loc6_.x + _loc5_.col2.x * _loc6_.y;
               this.§=u§.y = _loc5_.col1.y * _loc6_.x + _loc5_.col2.y * _loc6_.y;
               _loc5_ = param1.§'§.m_xf.R;
               _loc6_ = param1.localPoint;
               _loc7_ = param1.§'§.m_xf.position.x + (_loc5_.col1.x * _loc6_.x + _loc5_.col2.x * _loc6_.y);
               _loc8_ = param1.§'§.m_xf.position.y + (_loc5_.col1.y * _loc6_.x + _loc5_.col2.y * _loc6_.y);
               _loc5_ = param1.§>!2§.m_xf.R;
               _loc2_ = 0;
               while(_loc2_ < param1.§7!$§)
               {
                  _loc6_ = param1.§;$$§[_loc2_].localPoint;
                  _loc3_ = param1.§>!2§.m_xf.position.x + (_loc5_.col1.x * _loc6_.x + _loc5_.col2.x * _loc6_.y);
                  _loc4_ = param1.§>!2§.m_xf.position.y + (_loc5_.col1.y * _loc6_.x + _loc5_.col2.y * _loc6_.y);
                  this.§8!<§[_loc2_] = (_loc3_ - _loc7_) * this.§=u§.x + (_loc4_ - _loc8_) * this.§=u§.y - param1.radius;
                  this.§"!e§[_loc2_].x = _loc3_;
                  this.§"!e§[_loc2_].y = _loc4_;
                  _loc2_++;
               }
               break;
            case b2Manifold.§,!P§:
               _loc5_ = param1.§>!2§.m_xf.R;
               _loc6_ = param1.§>#R§;
               this.§=u§.x = _loc5_.col1.x * _loc6_.x + _loc5_.col2.x * _loc6_.y;
               this.§=u§.y = _loc5_.col1.y * _loc6_.x + _loc5_.col2.y * _loc6_.y;
               _loc5_ = param1.§>!2§.m_xf.R;
               _loc6_ = param1.localPoint;
               _loc7_ = param1.§>!2§.m_xf.position.x + (_loc5_.col1.x * _loc6_.x + _loc5_.col2.x * _loc6_.y);
               _loc8_ = param1.§>!2§.m_xf.position.y + (_loc5_.col1.y * _loc6_.x + _loc5_.col2.y * _loc6_.y);
               _loc5_ = param1.§'§.m_xf.R;
               _loc2_ = 0;
               while(_loc2_ < param1.§7!$§)
               {
                  _loc6_ = param1.§;$$§[_loc2_].localPoint;
                  _loc3_ = param1.§'§.m_xf.position.x + (_loc5_.col1.x * _loc6_.x + _loc5_.col2.x * _loc6_.y);
                  _loc4_ = param1.§'§.m_xf.position.y + (_loc5_.col1.y * _loc6_.x + _loc5_.col2.y * _loc6_.y);
                  this.§8!<§[_loc2_] = (_loc3_ - _loc7_) * this.§=u§.x + (_loc4_ - _loc8_) * this.§=u§.y - param1.radius;
                  this.§"!e§[_loc2_].Set(_loc3_,_loc4_);
                  _loc2_++;
               }
               this.§=u§.x *= -1;
               this.§=u§.y *= -1;
         }
      }
   }
}
