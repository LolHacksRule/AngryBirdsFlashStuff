package §`§
{
   import §&!n§.*;
   import §8,§.*;
   import §9v§.*;
   import §?!E§.*;
   
   use namespace b2internal;
   
   class b2PositionSolverManifold
   {
      
      private static var §"k§:b2Vec2 = new b2Vec2();
      
      private static var §0",§:b2Vec2 = new b2Vec2();
       
      
      public var §5N§:b2Vec2;
      
      public var §'!N§:Vector.<b2Vec2>;
      
      public var §2m§:Vector.<Number>;
      
      function b2PositionSolverManifold()
      {
         super();
         this.§5N§ = new b2Vec2();
         this.§2m§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         this.§'!N§ = new Vector.<b2Vec2>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this.§'!N§[_loc1_] = new b2Vec2();
            _loc1_++;
         }
      }
      
      public function §`!&§(param1:b2ContactConstraint) : void
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
         b2Settings.b2Assert(param1.§5+§ > 0);
         switch(param1.type)
         {
            case b2Manifold.§5![§:
               _loc5_ = param1.§["%§.m_xf.R;
               _loc6_ = param1.localPoint;
               _loc9_ = param1.§["%§.m_xf.position.x + (_loc5_.col1.x * _loc6_.x + _loc5_.col2.x * _loc6_.y);
               _loc10_ = param1.§["%§.m_xf.position.y + (_loc5_.col1.y * _loc6_.x + _loc5_.col2.y * _loc6_.y);
               _loc5_ = param1.§`!<§.m_xf.R;
               _loc6_ = param1.§,_§[0].localPoint;
               _loc11_ = param1.§`!<§.m_xf.position.x + (_loc5_.col1.x * _loc6_.x + _loc5_.col2.x * _loc6_.y);
               _loc12_ = param1.§`!<§.m_xf.position.y + (_loc5_.col1.y * _loc6_.x + _loc5_.col2.y * _loc6_.y);
               _loc13_ = _loc11_ - _loc9_;
               _loc14_ = _loc12_ - _loc10_;
               if((_loc15_ = _loc13_ * _loc13_ + _loc14_ * _loc14_) > Number.MIN_VALUE * Number.MIN_VALUE)
               {
                  _loc16_ = Math.sqrt(_loc15_);
                  this.§5N§.x = _loc13_ / _loc16_;
                  this.§5N§.y = _loc14_ / _loc16_;
               }
               else
               {
                  this.§5N§.x = 1;
                  this.§5N§.y = 0;
               }
               this.§'!N§[0].x = 0.5 * (_loc9_ + _loc11_);
               this.§'!N§[0].y = 0.5 * (_loc10_ + _loc12_);
               this.§2m§[0] = _loc13_ * this.§5N§.x + _loc14_ * this.§5N§.y - param1.radius;
               break;
            case b2Manifold.§ !b§:
               _loc5_ = param1.§["%§.m_xf.R;
               _loc6_ = param1.§@!+§;
               this.§5N§.x = _loc5_.col1.x * _loc6_.x + _loc5_.col2.x * _loc6_.y;
               this.§5N§.y = _loc5_.col1.y * _loc6_.x + _loc5_.col2.y * _loc6_.y;
               _loc5_ = param1.§["%§.m_xf.R;
               _loc6_ = param1.localPoint;
               _loc7_ = param1.§["%§.m_xf.position.x + (_loc5_.col1.x * _loc6_.x + _loc5_.col2.x * _loc6_.y);
               _loc8_ = param1.§["%§.m_xf.position.y + (_loc5_.col1.y * _loc6_.x + _loc5_.col2.y * _loc6_.y);
               _loc5_ = param1.§`!<§.m_xf.R;
               _loc2_ = 0;
               while(_loc2_ < param1.§5+§)
               {
                  _loc6_ = param1.§,_§[_loc2_].localPoint;
                  _loc3_ = param1.§`!<§.m_xf.position.x + (_loc5_.col1.x * _loc6_.x + _loc5_.col2.x * _loc6_.y);
                  _loc4_ = param1.§`!<§.m_xf.position.y + (_loc5_.col1.y * _loc6_.x + _loc5_.col2.y * _loc6_.y);
                  this.§2m§[_loc2_] = (_loc3_ - _loc7_) * this.§5N§.x + (_loc4_ - _loc8_) * this.§5N§.y - param1.radius;
                  this.§'!N§[_loc2_].x = _loc3_;
                  this.§'!N§[_loc2_].y = _loc4_;
                  _loc2_++;
               }
               break;
            case b2Manifold.§;!4§:
               _loc5_ = param1.§`!<§.m_xf.R;
               _loc6_ = param1.§@!+§;
               this.§5N§.x = _loc5_.col1.x * _loc6_.x + _loc5_.col2.x * _loc6_.y;
               this.§5N§.y = _loc5_.col1.y * _loc6_.x + _loc5_.col2.y * _loc6_.y;
               _loc5_ = param1.§`!<§.m_xf.R;
               _loc6_ = param1.localPoint;
               _loc7_ = param1.§`!<§.m_xf.position.x + (_loc5_.col1.x * _loc6_.x + _loc5_.col2.x * _loc6_.y);
               _loc8_ = param1.§`!<§.m_xf.position.y + (_loc5_.col1.y * _loc6_.x + _loc5_.col2.y * _loc6_.y);
               _loc5_ = param1.§["%§.m_xf.R;
               _loc2_ = 0;
               while(_loc2_ < param1.§5+§)
               {
                  _loc6_ = param1.§,_§[_loc2_].localPoint;
                  _loc3_ = param1.§["%§.m_xf.position.x + (_loc5_.col1.x * _loc6_.x + _loc5_.col2.x * _loc6_.y);
                  _loc4_ = param1.§["%§.m_xf.position.y + (_loc5_.col1.y * _loc6_.x + _loc5_.col2.y * _loc6_.y);
                  this.§2m§[_loc2_] = (_loc3_ - _loc7_) * this.§5N§.x + (_loc4_ - _loc8_) * this.§5N§.y - param1.radius;
                  this.§'!N§[_loc2_].Set(_loc3_,_loc4_);
                  _loc2_++;
               }
               this.§5N§.x *= -1;
               this.§5N§.y *= -1;
         }
      }
   }
}
