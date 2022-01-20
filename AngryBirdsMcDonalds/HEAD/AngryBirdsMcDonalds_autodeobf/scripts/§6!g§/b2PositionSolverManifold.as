package §6!g§
{
   import §+S§.*;
   import §,!V§.*;
   import §8T§.*;
   import §?!n§.*;
   
   use namespace b2internal;
   
   class b2PositionSolverManifold
   {
      
      private static var §9B§:b2Vec2 = new b2Vec2();
      
      private static var §5D§:b2Vec2 = new b2Vec2();
       
      
      public var §<J§:b2Vec2;
      
      public var §[9§:Vector.<b2Vec2>;
      
      public var §5!N§:Vector.<Number>;
      
      function b2PositionSolverManifold()
      {
         super();
         this.§<J§ = new b2Vec2();
         this.§5!N§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         this.§[9§ = new Vector.<b2Vec2>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§[9§[_loc1_] = new b2Vec2();
            _loc1_++;
         }
      }
      
      public function §`!9§(param1:b2ContactConstraint) : void
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
         b2Settings.b2Assert(param1.§72§ > 0);
         switch(param1.type)
         {
            case b2Manifold.§0l§:
               _loc5_ = param1.§-i§.m_xf.R;
               _loc6_ = param1.localPoint;
               _loc9_ = param1.§-i§.m_xf.position.x + (_loc5_.col1.x * _loc6_.x + _loc5_.col2.x * _loc6_.y);
               _loc10_ = param1.§-i§.m_xf.position.y + (_loc5_.col1.y * _loc6_.x + _loc5_.col2.y * _loc6_.y);
               _loc5_ = param1.§0!F§.m_xf.R;
               _loc6_ = param1.§38§[0].localPoint;
               _loc11_ = param1.§0!F§.m_xf.position.x + (_loc5_.col1.x * _loc6_.x + _loc5_.col2.x * _loc6_.y);
               _loc12_ = param1.§0!F§.m_xf.position.y + (_loc5_.col1.y * _loc6_.x + _loc5_.col2.y * _loc6_.y);
               _loc13_ = _loc11_ - _loc9_;
               _loc14_ = _loc12_ - _loc10_;
               if((_loc15_ = _loc13_ * _loc13_ + _loc14_ * _loc14_) > Number.MIN_VALUE * Number.MIN_VALUE)
               {
                  _loc16_ = Math.sqrt(_loc15_);
                  this.§<J§.x = _loc13_ / _loc16_;
                  this.§<J§.y = _loc14_ / _loc16_;
               }
               else
               {
                  this.§<J§.x = 1;
                  this.§<J§.y = 0;
               }
               this.§[9§[0].x = 0.5 * (_loc9_ + _loc11_);
               this.§[9§[0].y = 0.5 * (_loc10_ + _loc12_);
               this.§5!N§[0] = _loc13_ * this.§<J§.x + _loc14_ * this.§<J§.y - param1.radius;
               break;
            case b2Manifold.§]]§:
               _loc5_ = param1.§-i§.m_xf.R;
               _loc6_ = param1.§#w§;
               this.§<J§.x = _loc5_.col1.x * _loc6_.x + _loc5_.col2.x * _loc6_.y;
               this.§<J§.y = _loc5_.col1.y * _loc6_.x + _loc5_.col2.y * _loc6_.y;
               _loc5_ = param1.§-i§.m_xf.R;
               _loc6_ = param1.localPoint;
               _loc7_ = param1.§-i§.m_xf.position.x + (_loc5_.col1.x * _loc6_.x + _loc5_.col2.x * _loc6_.y);
               _loc8_ = param1.§-i§.m_xf.position.y + (_loc5_.col1.y * _loc6_.x + _loc5_.col2.y * _loc6_.y);
               _loc5_ = param1.§0!F§.m_xf.R;
               _loc2_ = 0;
               while(_loc2_ < param1.§72§)
               {
                  _loc6_ = param1.§38§[_loc2_].localPoint;
                  _loc3_ = param1.§0!F§.m_xf.position.x + (_loc5_.col1.x * _loc6_.x + _loc5_.col2.x * _loc6_.y);
                  _loc4_ = param1.§0!F§.m_xf.position.y + (_loc5_.col1.y * _loc6_.x + _loc5_.col2.y * _loc6_.y);
                  this.§5!N§[_loc2_] = (_loc3_ - _loc7_) * this.§<J§.x + (_loc4_ - _loc8_) * this.§<J§.y - param1.radius;
                  this.§[9§[_loc2_].x = _loc3_;
                  this.§[9§[_loc2_].y = _loc4_;
                  _loc2_++;
               }
               break;
            case b2Manifold.§9!?§:
               _loc5_ = param1.§0!F§.m_xf.R;
               _loc6_ = param1.§#w§;
               this.§<J§.x = _loc5_.col1.x * _loc6_.x + _loc5_.col2.x * _loc6_.y;
               this.§<J§.y = _loc5_.col1.y * _loc6_.x + _loc5_.col2.y * _loc6_.y;
               _loc5_ = param1.§0!F§.m_xf.R;
               _loc6_ = param1.localPoint;
               _loc7_ = param1.§0!F§.m_xf.position.x + (_loc5_.col1.x * _loc6_.x + _loc5_.col2.x * _loc6_.y);
               _loc8_ = param1.§0!F§.m_xf.position.y + (_loc5_.col1.y * _loc6_.x + _loc5_.col2.y * _loc6_.y);
               _loc5_ = param1.§-i§.m_xf.R;
               _loc2_ = 0;
               while(_loc2_ < param1.§72§)
               {
                  _loc6_ = param1.§38§[_loc2_].localPoint;
                  _loc3_ = param1.§-i§.m_xf.position.x + (_loc5_.col1.x * _loc6_.x + _loc5_.col2.x * _loc6_.y);
                  _loc4_ = param1.§-i§.m_xf.position.y + (_loc5_.col1.y * _loc6_.x + _loc5_.col2.y * _loc6_.y);
                  this.§5!N§[_loc2_] = (_loc3_ - _loc7_) * this.§<J§.x + (_loc4_ - _loc8_) * this.§<J§.y - param1.radius;
                  this.§[9§[_loc2_].Set(_loc3_,_loc4_);
                  _loc2_++;
               }
               this.§<J§.x *= -1;
               this.§<J§.y *= -1;
         }
      }
   }
}
