package §>6§
{
   import §'!a§.*;
   import §4!W§.b2Shape;
   import §6!n§.*;
   import §9!K§.*;
   import §;!Z§.*;
   
   use namespace b2internal;
   
   public class b2ContactSolver
   {
      
      private static var §0g§:b2WorldManifold = new b2WorldManifold();
      
      private static var §5p§:b2PositionSolverManifold = new b2PositionSolverManifold();
       
      
      private var §@!f§:b2TimeStep;
      
      private var §8"0§;
      
      b2internal var §<E§:Vector.<b2ContactConstraint>;
      
      private var §7w§:int;
      
      public function b2ContactSolver()
      {
         this.§@!f§ = new b2TimeStep();
         this.§<E§ = new Vector.<b2ContactConstraint>();
         super();
      }
      
      public function §break§(param1:b2TimeStep, param2:Vector.<b2Contact>, param3:int, param4:*) : void
      {
         var _loc5_:b2Contact = null;
         var _loc6_:int = 0;
         var _loc9_:b2Fixture = null;
         var _loc10_:b2Fixture = null;
         var _loc11_:b2Shape = null;
         var _loc12_:b2Shape = null;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:b2Body = null;
         var _loc16_:b2Body = null;
         var _loc17_:b2Manifold = null;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc28_:b2ContactConstraint = null;
         var _loc29_:uint = 0;
         var _loc30_:b2ManifoldPoint = null;
         var _loc31_:b2ContactConstraintPoint = null;
         var _loc32_:Number = NaN;
         var _loc33_:Number = NaN;
         var _loc34_:Number = NaN;
         var _loc35_:Number = NaN;
         var _loc36_:Number = NaN;
         var _loc37_:Number = NaN;
         var _loc38_:Number = NaN;
         var _loc39_:Number = NaN;
         var _loc40_:Number = NaN;
         var _loc41_:Number = NaN;
         var _loc42_:Number = NaN;
         var _loc43_:Number = NaN;
         var _loc44_:Number = NaN;
         var _loc45_:Number = NaN;
         var _loc46_:Number = NaN;
         var _loc47_:b2ContactConstraintPoint = null;
         var _loc48_:b2ContactConstraintPoint = null;
         var _loc49_:Number = NaN;
         var _loc50_:Number = NaN;
         var _loc51_:Number = NaN;
         var _loc52_:Number = NaN;
         var _loc53_:Number = NaN;
         var _loc54_:Number = NaN;
         var _loc55_:Number = NaN;
         var _loc56_:Number = NaN;
         var _loc57_:Number = NaN;
         var _loc58_:Number = NaN;
         var _loc59_:Number = NaN;
         var _loc60_:Number = NaN;
         this.§@!f§.Set(param1);
         this.§8"0§ = param4;
         this.§7w§ = param3;
         while(this.§<E§.length < this.§7w§)
         {
            this.§<E§[this.§<E§.length] = new b2ContactConstraint();
         }
         _loc6_ = 0;
         while(_loc6_ < param3)
         {
            _loc9_ = (_loc5_ = param2[_loc6_]).§1!g§;
            _loc10_ = _loc5_.§@4§;
            _loc11_ = _loc9_.§^!F§;
            _loc12_ = _loc10_.§^!F§;
            _loc13_ = _loc11_.§!!l§;
            _loc14_ = _loc12_.§!!l§;
            _loc15_ = _loc9_.m_body;
            _loc16_ = _loc10_.m_body;
            _loc17_ = _loc5_.§"!n§();
            _loc18_ = b2Settings.b2MixFriction(_loc9_.§+""§(),_loc10_.§+""§());
            _loc19_ = b2Settings.b2MixRestitution(_loc9_.§3!s§(),_loc10_.§3!s§());
            _loc20_ = _loc15_.§9e§.x;
            _loc21_ = _loc15_.§9e§.y;
            _loc22_ = _loc16_.§9e§.x;
            _loc23_ = _loc16_.§9e§.y;
            _loc24_ = _loc15_.m_angularVelocity;
            _loc25_ = _loc16_.m_angularVelocity;
            b2Settings.b2Assert(_loc17_.§&!G§ > 0);
            §0g§.§break§(_loc17_,_loc15_.m_xf,_loc13_,_loc16_.m_xf,_loc14_);
            _loc26_ = §0g§.§while§.x;
            _loc27_ = §0g§.§while§.y;
            (_loc28_ = this.§<E§[_loc6_]).§0f§ = _loc15_;
            _loc28_.§>F§ = _loc16_;
            _loc28_.§=!=§ = _loc17_;
            _loc28_.normal.x = _loc26_;
            _loc28_.normal.y = _loc27_;
            _loc28_.§7!Z§ = _loc17_.§&!G§;
            _loc28_.friction = _loc18_;
            _loc28_.restitution = _loc19_;
            _loc28_.§,-§.x = _loc17_.§5d§.x;
            _loc28_.§,-§.y = _loc17_.§5d§.y;
            _loc28_.localPoint.x = _loc17_.m_localPoint.x;
            _loc28_.localPoint.y = _loc17_.m_localPoint.y;
            _loc28_.radius = _loc13_ + _loc14_;
            _loc28_.type = _loc17_.§`K§;
            _loc29_ = 0;
            while(_loc29_ < _loc28_.§7!Z§)
            {
               _loc30_ = _loc17_.§63§[_loc29_];
               (_loc31_ = _loc28_.§'"2§[_loc29_]).normalImpulse = _loc30_.§"a§;
               _loc31_.tangentImpulse = _loc30_.§`Q§;
               _loc31_.localPoint.SetV(_loc30_.m_localPoint);
               _loc32_ = _loc31_.§!f§.x = §0g§.§63§[_loc29_].x - _loc15_.m_sweep.c.x;
               _loc33_ = _loc31_.§!f§.y = §0g§.§63§[_loc29_].y - _loc15_.m_sweep.c.y;
               _loc34_ = _loc31_.§ !=§.x = §0g§.§63§[_loc29_].x - _loc16_.m_sweep.c.x;
               _loc35_ = _loc31_.§ !=§.y = §0g§.§63§[_loc29_].y - _loc16_.m_sweep.c.y;
               _loc36_ = _loc32_ * _loc27_ - _loc33_ * _loc26_;
               _loc37_ = _loc34_ * _loc27_ - _loc35_ * _loc26_;
               _loc36_ *= _loc36_;
               _loc37_ *= _loc37_;
               if((_loc38_ = _loc15_.§var § + _loc16_.§var § + _loc15_.§,"!§ * _loc36_ + _loc16_.§,"!§ * _loc37_) > 0)
               {
                  _loc31_.§5w§ = 1 / _loc38_;
               }
               else
               {
                  _loc31_.§5w§ = 0;
               }
               _loc31_.§-!§ = _loc31_.§5w§;
               _loc39_ = _loc27_;
               _loc40_ = -_loc26_;
               _loc41_ = _loc32_ * _loc40_ - _loc33_ * _loc39_;
               _loc42_ = _loc34_ * _loc40_ - _loc35_ * _loc39_;
               _loc41_ *= _loc41_;
               _loc42_ *= _loc42_;
               if((_loc43_ = _loc15_.§var § + _loc16_.§var § + _loc15_.§,"!§ * _loc41_ + _loc16_.§,"!§ * _loc42_) > 0)
               {
                  _loc31_.§]!=§ = 1 / _loc43_;
               }
               else
               {
                  _loc31_.§]!=§ = 0;
               }
               _loc31_.§9!g§ = 0;
               _loc44_ = _loc22_ + -_loc25_ * _loc35_ - _loc20_ - -_loc24_ * _loc33_;
               _loc45_ = _loc23_ + _loc25_ * _loc34_ - _loc21_ - _loc24_ * _loc32_;
               if((_loc46_ = _loc28_.normal.x * _loc44_ + _loc28_.normal.y * _loc45_) < -b2Settings.b2_velocityThreshold)
               {
                  _loc31_.§9!g§ = -_loc28_.restitution * _loc46_;
               }
               _loc29_++;
            }
            if(_loc28_.§7!Z§ == 2)
            {
               _loc47_ = _loc28_.§'"2§[0];
               _loc48_ = _loc28_.§'"2§[1];
               _loc49_ = _loc15_.§var §;
               _loc50_ = _loc15_.§,"!§;
               _loc51_ = _loc16_.§var §;
               _loc52_ = _loc16_.§,"!§;
               _loc53_ = _loc47_.§!f§.x * _loc27_ - _loc47_.§!f§.y * _loc26_;
               _loc54_ = _loc47_.§ !=§.x * _loc27_ - _loc47_.§ !=§.y * _loc26_;
               _loc55_ = _loc48_.§!f§.x * _loc27_ - _loc48_.§!f§.y * _loc26_;
               _loc56_ = _loc48_.§ !=§.x * _loc27_ - _loc48_.§ !=§.y * _loc26_;
               _loc57_ = _loc49_ + _loc51_ + _loc50_ * _loc53_ * _loc53_ + _loc52_ * _loc54_ * _loc54_;
               _loc58_ = _loc49_ + _loc51_ + _loc50_ * _loc55_ * _loc55_ + _loc52_ * _loc56_ * _loc56_;
               _loc59_ = _loc49_ + _loc51_ + _loc50_ * _loc53_ * _loc55_ + _loc52_ * _loc54_ * _loc56_;
               _loc60_ = 100;
               if(_loc57_ * _loc57_ < _loc60_ * (_loc57_ * _loc58_ - _loc59_ * _loc59_))
               {
                  _loc28_.K.col1.Set(_loc57_,_loc59_);
                  _loc28_.K.col2.Set(_loc59_,_loc58_);
                  _loc28_.K.§@"F§(_loc28_.§5w§);
               }
               else
               {
                  _loc28_.§7!Z§ = 1;
               }
            }
            _loc6_++;
         }
      }
      
      public function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc6_:b2ContactConstraint = null;
         var _loc7_:b2Body = null;
         var _loc8_:b2Body = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:int = 0;
         var _loc19_:int = 0;
         var _loc20_:b2ContactConstraintPoint = null;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:b2ContactConstraintPoint = null;
         var _loc5_:int = 0;
         while(_loc5_ < this.§7w§)
         {
            _loc7_ = (_loc6_ = this.§<E§[_loc5_]).§0f§;
            _loc8_ = _loc6_.§>F§;
            _loc9_ = _loc7_.§var §;
            _loc10_ = _loc7_.§,"!§;
            _loc11_ = _loc8_.§var §;
            _loc12_ = _loc8_.§,"!§;
            _loc13_ = _loc6_.normal.x;
            _loc15_ = _loc14_ = _loc6_.normal.y;
            _loc16_ = -_loc13_;
            if(param1.§'!t§)
            {
               _loc19_ = _loc6_.§7!Z§;
               _loc18_ = 0;
               while(_loc18_ < _loc19_)
               {
                  _loc20_ = _loc6_.§'"2§[_loc18_];
                  _loc20_.normalImpulse *= param1.§?!$§;
                  _loc20_.tangentImpulse *= param1.§?!$§;
                  _loc21_ = _loc20_.normalImpulse * _loc13_ + _loc20_.tangentImpulse * _loc15_;
                  _loc22_ = _loc20_.normalImpulse * _loc14_ + _loc20_.tangentImpulse * _loc16_;
                  _loc7_.m_angularVelocity -= _loc10_ * (_loc20_.§!f§.x * _loc22_ - _loc20_.§!f§.y * _loc21_);
                  _loc7_.§9e§.x -= _loc9_ * _loc21_;
                  _loc7_.§9e§.y -= _loc9_ * _loc22_;
                  _loc8_.m_angularVelocity += _loc12_ * (_loc20_.§ !=§.x * _loc22_ - _loc20_.§ !=§.y * _loc21_);
                  _loc8_.§9e§.x += _loc11_ * _loc21_;
                  _loc8_.§9e§.y += _loc11_ * _loc22_;
                  _loc18_++;
               }
            }
            else
            {
               _loc19_ = _loc6_.§7!Z§;
               _loc18_ = 0;
               while(_loc18_ < _loc19_)
               {
                  (_loc23_ = _loc6_.§'"2§[_loc18_]).normalImpulse = 0;
                  _loc23_.tangentImpulse = 0;
                  _loc18_++;
               }
            }
            _loc5_++;
         }
      }
      
      public function SolveVelocityConstraints() : void
      {
         var _loc1_:int = 0;
         var _loc2_:b2ContactConstraintPoint = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
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
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:b2Mat22 = null;
         var _loc25_:b2ContactConstraint = null;
         var _loc26_:b2Body = null;
         var _loc27_:b2Body = null;
         var _loc28_:Number = NaN;
         var _loc29_:Number = NaN;
         var _loc30_:b2Vec2 = null;
         var _loc31_:b2Vec2 = null;
         var _loc32_:Number = NaN;
         var _loc33_:Number = NaN;
         var _loc34_:Number = NaN;
         var _loc35_:Number = NaN;
         var _loc36_:Number = NaN;
         var _loc37_:Number = NaN;
         var _loc38_:Number = NaN;
         var _loc39_:Number = NaN;
         var _loc40_:Number = NaN;
         var _loc41_:Number = NaN;
         var _loc42_:int = 0;
         var _loc43_:b2ContactConstraintPoint = null;
         var _loc44_:b2ContactConstraintPoint = null;
         var _loc45_:Number = NaN;
         var _loc46_:Number = NaN;
         var _loc47_:Number = NaN;
         var _loc48_:Number = NaN;
         var _loc49_:Number = NaN;
         var _loc50_:Number = NaN;
         var _loc51_:Number = NaN;
         var _loc52_:Number = NaN;
         var _loc53_:Number = NaN;
         var _loc54_:Number = NaN;
         var _loc55_:Number = NaN;
         var _loc56_:Number = NaN;
         var _loc57_:Number = NaN;
         var _loc24_:int = 0;
         while(_loc24_ < this.§7w§)
         {
            _loc26_ = (_loc25_ = this.§<E§[_loc24_]).§0f§;
            _loc27_ = _loc25_.§>F§;
            _loc28_ = _loc26_.m_angularVelocity;
            _loc29_ = _loc27_.m_angularVelocity;
            _loc30_ = _loc26_.§9e§;
            _loc31_ = _loc27_.§9e§;
            _loc32_ = _loc26_.§var §;
            _loc33_ = _loc26_.§,"!§;
            _loc34_ = _loc27_.§var §;
            _loc35_ = _loc27_.§,"!§;
            _loc36_ = _loc25_.normal.x;
            _loc38_ = _loc37_ = _loc25_.normal.y;
            _loc39_ = -_loc36_;
            _loc40_ = _loc25_.friction;
            _loc1_ = 0;
            while(_loc1_ < _loc25_.§7!Z§)
            {
               _loc2_ = _loc25_.§'"2§[_loc1_];
               _loc7_ = _loc31_.x - _loc29_ * _loc2_.§ !=§.y - _loc30_.x + _loc28_ * _loc2_.§!f§.y;
               _loc8_ = _loc31_.y + _loc29_ * _loc2_.§ !=§.x - _loc30_.y - _loc28_ * _loc2_.§!f§.x;
               _loc10_ = _loc7_ * _loc38_ + _loc8_ * _loc39_;
               _loc11_ = _loc2_.§]!=§ * -_loc10_;
               _loc12_ = _loc40_ * _loc2_.normalImpulse;
               _loc14_ = (_loc11_ = (_loc13_ = b2Math.§5!^§(_loc2_.tangentImpulse + _loc11_,-_loc12_,_loc12_)) - _loc2_.tangentImpulse) * _loc38_;
               _loc15_ = _loc11_ * _loc39_;
               _loc30_.x -= _loc32_ * _loc14_;
               _loc30_.y -= _loc32_ * _loc15_;
               _loc28_ -= _loc33_ * (_loc2_.§!f§.x * _loc15_ - _loc2_.§!f§.y * _loc14_);
               _loc31_.x += _loc34_ * _loc14_;
               _loc31_.y += _loc34_ * _loc15_;
               _loc29_ += _loc35_ * (_loc2_.§ !=§.x * _loc15_ - _loc2_.§ !=§.y * _loc14_);
               _loc2_.tangentImpulse = _loc13_;
               _loc1_++;
            }
            _loc42_ = _loc25_.§7!Z§;
            if(_loc25_.§7!Z§ == 1)
            {
               _loc2_ = _loc25_.§'"2§[0];
               _loc7_ = _loc31_.x + -_loc29_ * _loc2_.§ !=§.y - _loc30_.x - -_loc28_ * _loc2_.§!f§.y;
               _loc8_ = _loc31_.y + _loc29_ * _loc2_.§ !=§.x - _loc30_.y - _loc28_ * _loc2_.§!f§.x;
               _loc9_ = _loc7_ * _loc36_ + _loc8_ * _loc37_;
               _loc11_ = -_loc2_.§5w§ * (_loc9_ - _loc2_.§9!g§);
               _loc14_ = (_loc11_ = (_loc13_ = (_loc13_ = _loc2_.normalImpulse + _loc11_) > 0 ? Number(_loc13_) : Number(0)) - _loc2_.normalImpulse) * _loc36_;
               _loc15_ = _loc11_ * _loc37_;
               _loc30_.x -= _loc32_ * _loc14_;
               _loc30_.y -= _loc32_ * _loc15_;
               _loc28_ -= _loc33_ * (_loc2_.§!f§.x * _loc15_ - _loc2_.§!f§.y * _loc14_);
               _loc31_.x += _loc34_ * _loc14_;
               _loc31_.y += _loc34_ * _loc15_;
               _loc29_ += _loc35_ * (_loc2_.§ !=§.x * _loc15_ - _loc2_.§ !=§.y * _loc14_);
               _loc2_.normalImpulse = _loc13_;
            }
            else
            {
               _loc43_ = _loc25_.§'"2§[0];
               _loc44_ = _loc25_.§'"2§[1];
               _loc45_ = _loc43_.normalImpulse;
               _loc46_ = _loc44_.normalImpulse;
               _loc47_ = _loc31_.x - _loc29_ * _loc43_.§ !=§.y - _loc30_.x + _loc28_ * _loc43_.§!f§.y;
               _loc48_ = _loc31_.y + _loc29_ * _loc43_.§ !=§.x - _loc30_.y - _loc28_ * _loc43_.§!f§.x;
               _loc49_ = _loc31_.x - _loc29_ * _loc44_.§ !=§.y - _loc30_.x + _loc28_ * _loc44_.§!f§.y;
               _loc50_ = _loc31_.y + _loc29_ * _loc44_.§ !=§.x - _loc30_.y - _loc28_ * _loc44_.§!f§.x;
               _loc51_ = _loc47_ * _loc36_ + _loc48_ * _loc37_;
               _loc52_ = _loc49_ * _loc36_ + _loc50_ * _loc37_;
               _loc53_ = _loc51_ - _loc43_.§9!g§;
               _loc54_ = _loc52_ - _loc44_.§9!g§;
               _loc22_ = _loc25_.K;
               _loc53_ -= _loc22_.col1.x * _loc45_ + _loc22_.col2.x * _loc46_;
               _loc54_ -= _loc22_.col1.y * _loc45_ + _loc22_.col2.y * _loc46_;
               _loc55_ = 0.001;
               _loc56_ = -((_loc22_ = _loc25_.§5w§).col1.x * _loc53_ + _loc22_.col2.x * _loc54_);
               _loc57_ = -(_loc22_.col1.y * _loc53_ + _loc22_.col2.y * _loc54_);
               if(_loc56_ >= 0 && _loc57_ >= 0)
               {
                  _loc16_ = _loc56_ - _loc45_;
                  _loc17_ = _loc57_ - _loc46_;
                  _loc18_ = _loc16_ * _loc36_;
                  _loc19_ = _loc16_ * _loc37_;
                  _loc20_ = _loc17_ * _loc36_;
                  _loc21_ = _loc17_ * _loc37_;
                  _loc30_.x -= _loc32_ * (_loc18_ + _loc20_);
                  _loc30_.y -= _loc32_ * (_loc19_ + _loc21_);
                  _loc28_ -= _loc33_ * (_loc43_.§!f§.x * _loc19_ - _loc43_.§!f§.y * _loc18_ + _loc44_.§!f§.x * _loc21_ - _loc44_.§!f§.y * _loc20_);
                  _loc31_.x += _loc34_ * (_loc18_ + _loc20_);
                  _loc31_.y += _loc34_ * (_loc19_ + _loc21_);
                  _loc29_ += _loc35_ * (_loc43_.§ !=§.x * _loc19_ - _loc43_.§ !=§.y * _loc18_ + _loc44_.§ !=§.x * _loc21_ - _loc44_.§ !=§.y * _loc20_);
                  _loc43_.normalImpulse = _loc56_;
                  _loc44_.normalImpulse = _loc57_;
               }
               else
               {
                  _loc56_ = -_loc43_.§5w§ * _loc53_;
                  _loc57_ = 0;
                  _loc51_ = 0;
                  _loc52_ = _loc25_.K.col1.y * _loc56_ + _loc54_;
                  if(_loc56_ >= 0 && _loc52_ >= 0)
                  {
                     _loc16_ = _loc56_ - _loc45_;
                     _loc17_ = _loc57_ - _loc46_;
                     _loc18_ = _loc16_ * _loc36_;
                     _loc19_ = _loc16_ * _loc37_;
                     _loc20_ = _loc17_ * _loc36_;
                     _loc21_ = _loc17_ * _loc37_;
                     _loc30_.x -= _loc32_ * (_loc18_ + _loc20_);
                     _loc30_.y -= _loc32_ * (_loc19_ + _loc21_);
                     _loc28_ -= _loc33_ * (_loc43_.§!f§.x * _loc19_ - _loc43_.§!f§.y * _loc18_ + _loc44_.§!f§.x * _loc21_ - _loc44_.§!f§.y * _loc20_);
                     _loc31_.x += _loc34_ * (_loc18_ + _loc20_);
                     _loc31_.y += _loc34_ * (_loc19_ + _loc21_);
                     _loc29_ += _loc35_ * (_loc43_.§ !=§.x * _loc19_ - _loc43_.§ !=§.y * _loc18_ + _loc44_.§ !=§.x * _loc21_ - _loc44_.§ !=§.y * _loc20_);
                     _loc43_.normalImpulse = _loc56_;
                     _loc44_.normalImpulse = _loc57_;
                  }
                  else
                  {
                     _loc56_ = 0;
                     _loc57_ = -_loc44_.§5w§ * _loc54_;
                     _loc51_ = _loc25_.K.col2.x * _loc57_ + _loc53_;
                     _loc52_ = 0;
                     if(_loc57_ >= 0 && _loc51_ >= 0)
                     {
                        _loc16_ = _loc56_ - _loc45_;
                        _loc17_ = _loc57_ - _loc46_;
                        _loc18_ = _loc16_ * _loc36_;
                        _loc19_ = _loc16_ * _loc37_;
                        _loc20_ = _loc17_ * _loc36_;
                        _loc21_ = _loc17_ * _loc37_;
                        _loc30_.x -= _loc32_ * (_loc18_ + _loc20_);
                        _loc30_.y -= _loc32_ * (_loc19_ + _loc21_);
                        _loc28_ -= _loc33_ * (_loc43_.§!f§.x * _loc19_ - _loc43_.§!f§.y * _loc18_ + _loc44_.§!f§.x * _loc21_ - _loc44_.§!f§.y * _loc20_);
                        _loc31_.x += _loc34_ * (_loc18_ + _loc20_);
                        _loc31_.y += _loc34_ * (_loc19_ + _loc21_);
                        _loc29_ += _loc35_ * (_loc43_.§ !=§.x * _loc19_ - _loc43_.§ !=§.y * _loc18_ + _loc44_.§ !=§.x * _loc21_ - _loc44_.§ !=§.y * _loc20_);
                        _loc43_.normalImpulse = _loc56_;
                        _loc44_.normalImpulse = _loc57_;
                     }
                     else
                     {
                        _loc56_ = 0;
                        _loc57_ = 0;
                        _loc51_ = _loc53_;
                        _loc52_ = _loc54_;
                        if(_loc51_ >= 0 && _loc52_ >= 0)
                        {
                           _loc16_ = _loc56_ - _loc45_;
                           _loc17_ = _loc57_ - _loc46_;
                           _loc18_ = _loc16_ * _loc36_;
                           _loc19_ = _loc16_ * _loc37_;
                           _loc20_ = _loc17_ * _loc36_;
                           _loc21_ = _loc17_ * _loc37_;
                           _loc30_.x -= _loc32_ * (_loc18_ + _loc20_);
                           _loc30_.y -= _loc32_ * (_loc19_ + _loc21_);
                           _loc28_ -= _loc33_ * (_loc43_.§!f§.x * _loc19_ - _loc43_.§!f§.y * _loc18_ + _loc44_.§!f§.x * _loc21_ - _loc44_.§!f§.y * _loc20_);
                           _loc31_.x += _loc34_ * (_loc18_ + _loc20_);
                           _loc31_.y += _loc34_ * (_loc19_ + _loc21_);
                           _loc29_ += _loc35_ * (_loc43_.§ !=§.x * _loc19_ - _loc43_.§ !=§.y * _loc18_ + _loc44_.§ !=§.x * _loc21_ - _loc44_.§ !=§.y * _loc20_);
                           _loc43_.normalImpulse = _loc56_;
                           _loc44_.normalImpulse = _loc57_;
                        }
                     }
                  }
               }
            }
            _loc26_.m_angularVelocity = _loc28_;
            _loc27_.m_angularVelocity = _loc29_;
            _loc24_++;
         }
      }
      
      public function §<!C§() : void
      {
         var _loc2_:b2ContactConstraint = null;
         var _loc3_:b2Manifold = null;
         var _loc4_:int = 0;
         var _loc5_:b2ManifoldPoint = null;
         var _loc6_:b2ContactConstraintPoint = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§7w§)
         {
            _loc2_ = this.§<E§[_loc1_];
            _loc3_ = _loc2_.§=!=§;
            _loc4_ = 0;
            while(_loc4_ < _loc2_.§7!Z§)
            {
               _loc5_ = _loc3_.§63§[_loc4_];
               _loc6_ = _loc2_.§'"2§[_loc4_];
               _loc5_.§"a§ = _loc6_.normalImpulse;
               _loc5_.§`Q§ = _loc6_.tangentImpulse;
               _loc4_++;
            }
            _loc1_++;
         }
      }
      
      public function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:b2Body = null;
         var _loc6_:b2Body = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:b2Vec2 = null;
         var _loc12_:int = 0;
         var _loc13_:b2ContactConstraintPoint = null;
         var _loc14_:b2Vec2 = null;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc2_:Number = 0;
         var _loc3_:int = 0;
         while(_loc3_ < this.§7w§)
         {
            _loc5_ = (_loc4_ = this.§<E§[_loc3_]).§0f§;
            _loc6_ = _loc4_.§>F§;
            _loc7_ = _loc5_.§var §;
            _loc8_ = _loc5_.§,"!§;
            _loc9_ = _loc6_.§var §;
            _loc10_ = _loc6_.§,"!§;
            §5p§.§break§(_loc4_);
            _loc11_ = §5p§.§while§;
            _loc12_ = 0;
            while(_loc12_ < _loc4_.§7!Z§)
            {
               _loc13_ = _loc4_.§'"2§[_loc12_];
               _loc14_ = §5p§.§63§[_loc12_];
               _loc15_ = §5p§.§;[§[_loc12_];
               _loc16_ = _loc14_.x - _loc5_.m_sweep.c.x;
               _loc17_ = _loc14_.y - _loc5_.m_sweep.c.y;
               _loc18_ = _loc14_.x - _loc6_.m_sweep.c.x;
               _loc19_ = _loc14_.y - _loc6_.m_sweep.c.y;
               _loc2_ = _loc2_ < _loc15_ ? Number(_loc2_) : Number(_loc15_);
               _loc20_ = b2Math.§5!^§(param1 * (_loc15_ + b2Settings.b2_linearSlop),-b2Settings.b2_maxLinearCorrection,0);
               _loc22_ = (_loc21_ = -_loc13_.§-!§ * _loc20_) * _loc11_.x;
               _loc23_ = _loc21_ * _loc11_.y;
               _loc5_.m_sweep.c.x -= _loc7_ * _loc22_;
               _loc5_.m_sweep.c.y -= _loc7_ * _loc23_;
               _loc5_.m_sweep.a -= _loc8_ * (_loc16_ * _loc23_ - _loc17_ * _loc22_);
               _loc5_.§>!b§();
               _loc6_.m_sweep.c.x += _loc9_ * _loc22_;
               _loc6_.m_sweep.c.y += _loc9_ * _loc23_;
               _loc6_.m_sweep.a += _loc10_ * (_loc18_ * _loc23_ - _loc19_ * _loc22_);
               _loc6_.§>!b§();
               _loc12_++;
            }
            _loc3_++;
         }
         return _loc2_ > -1.5 * b2Settings.b2_linearSlop;
      }
   }
}
