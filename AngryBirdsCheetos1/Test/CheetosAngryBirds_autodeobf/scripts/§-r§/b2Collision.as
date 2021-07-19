package §-r§
{
   import §"0§.*;
   import §6!H§.*;
   import §]!S§.*;
   
   use namespace b2internal;
   
   public class b2Collision
   {
      
      public static const b2_nullFeature:uint = 255;
      
      private static var §3!f§:Vector.<§<#§> = §;w§();
      
      private static var s_clipPoints1:Vector.<§<#§> = §;w§();
      
      private static var s_clipPoints2:Vector.<§<#§> = §;w§();
      
      private static var §??§:Vector.<int> = new Vector.<int>(1);
      
      private static var §>!?§:Vector.<int> = new Vector.<int>(1);
      
      private static var §14§:b2Vec2 = new b2Vec2();
      
      private static var §^!4§:b2Vec2 = new b2Vec2();
      
      private static var §9_§:b2Vec2 = new b2Vec2();
      
      private static var §]!7§:b2Vec2 = new b2Vec2();
      
      private static var §0$§:b2Vec2 = new b2Vec2();
      
      private static var s_tangent2:b2Vec2 = new b2Vec2();
      
      private static var s_v11:b2Vec2 = new b2Vec2();
      
      private static var s_v12:b2Vec2 = new b2Vec2();
      
      private static var b2CollidePolyTempVec:b2Vec2 = new b2Vec2();
       
      
      public function b2Collision()
      {
         super();
      }
      
      public static function §8H§(param1:Vector.<§<#§>, param2:Vector.<§<#§>, param3:b2Vec2, param4:Number) : int
      {
         var _loc5_:§<#§ = null;
         var _loc6_:int = 0;
         var _loc7_:b2Vec2 = null;
         var _loc9_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:b2Vec2 = null;
         var _loc13_:§<#§ = null;
         _loc6_ = 0;
         _loc7_ = (_loc5_ = param2[0]).v;
         var _loc8_:b2Vec2 = (_loc5_ = param2[1]).v;
         _loc9_ = param3.x * _loc7_.x + param3.y * _loc7_.y - param4;
         var _loc10_:Number = param3.x * _loc8_.x + param3.y * _loc8_.y - param4;
         if(_loc9_ <= 0)
         {
            param1[_loc6_++].Set(param2[0]);
         }
         if(_loc10_ <= 0)
         {
            param1[_loc6_++].Set(param2[1]);
         }
         if(_loc9_ * _loc10_ < 0)
         {
            _loc11_ = _loc9_ / (_loc9_ - _loc10_);
            (_loc12_ = (_loc5_ = param1[_loc6_]).v).x = _loc7_.x + _loc11_ * (_loc8_.x - _loc7_.x);
            _loc12_.y = _loc7_.y + _loc11_ * (_loc8_.y - _loc7_.y);
            _loc5_ = param1[_loc6_];
            if(_loc9_ > 0)
            {
               _loc13_ = param2[0];
               _loc5_.id = _loc13_.id;
            }
            else
            {
               _loc13_ = param2[1];
               _loc5_.id = _loc13_.id;
            }
            _loc6_++;
         }
         return _loc6_;
      }
      
      public static function §>!5§(param1:b2PolygonShape, param2:b2Transform, param3:int, param4:b2PolygonShape, param5:b2Transform) : Number
      {
         var _loc11_:b2Mat22 = null;
         var _loc12_:b2Vec2 = null;
         var _loc25_:Number = NaN;
         var _loc6_:int = param1.§0S§;
         var _loc7_:Vector.<b2Vec2> = param1.§#1§;
         var _loc8_:Vector.<b2Vec2> = param1.§07§;
         var _loc9_:int = param4.§0S§;
         var _loc10_:Vector.<b2Vec2> = param4.§#1§;
         _loc11_ = param2.R;
         _loc12_ = _loc8_[param3];
         var _loc13_:Number = _loc11_.col1.x * _loc12_.x + _loc11_.col2.x * _loc12_.y;
         var _loc14_:Number = _loc11_.col1.y * _loc12_.x + _loc11_.col2.y * _loc12_.y;
         var _loc15_:Number = (_loc11_ = param5.R).col1.x * _loc13_ + _loc11_.col1.y * _loc14_;
         var _loc16_:Number = _loc11_.col2.x * _loc13_ + _loc11_.col2.y * _loc14_;
         var _loc17_:int = 0;
         var _loc18_:Number = Number.MAX_VALUE;
         var _loc19_:int = 0;
         while(_loc19_ < _loc9_)
         {
            if((_loc25_ = (_loc12_ = _loc10_[_loc19_]).x * _loc15_ + _loc12_.y * _loc16_) < _loc18_)
            {
               _loc18_ = _loc25_;
               _loc17_ = _loc19_;
            }
            _loc19_++;
         }
         _loc12_ = _loc7_[param3];
         _loc11_ = param2.R;
         var _loc20_:Number = param2.position.x + (_loc11_.col1.x * _loc12_.x + _loc11_.col2.x * _loc12_.y);
         var _loc21_:Number = param2.position.y + (_loc11_.col1.y * _loc12_.x + _loc11_.col2.y * _loc12_.y);
         _loc12_ = _loc10_[_loc17_];
         _loc11_ = param5.R;
         var _loc22_:Number = param5.position.x + (_loc11_.col1.x * _loc12_.x + _loc11_.col2.x * _loc12_.y);
         var _loc23_:Number = param5.position.y + (_loc11_.col1.y * _loc12_.x + _loc11_.col2.y * _loc12_.y);
         _loc22_ -= _loc20_;
         _loc23_ -= _loc21_;
         return Number(_loc22_ * _loc13_ + _loc23_ * _loc14_);
      }
      
      public static function §+!+§(param1:Vector.<int>, param2:b2PolygonShape, param3:b2Transform, param4:b2PolygonShape, param5:b2Transform) : Number
      {
         var _loc8_:b2Vec2 = null;
         var _loc9_:b2Mat22 = null;
         var _loc22_:int = 0;
         var _loc23_:Number = NaN;
         var _loc24_:int = 0;
         var _loc25_:Number = NaN;
         var _loc6_:int = param2.§0S§;
         var _loc7_:Vector.<b2Vec2> = param2.§07§;
         _loc9_ = param5.R;
         _loc8_ = param4.§<!@§;
         var _loc10_:Number = param5.position.x + (_loc9_.col1.x * _loc8_.x + _loc9_.col2.x * _loc8_.y);
         var _loc11_:Number = param5.position.y + (_loc9_.col1.y * _loc8_.x + _loc9_.col2.y * _loc8_.y);
         _loc9_ = param3.R;
         _loc8_ = param2.§<!@§;
         _loc10_ -= param3.position.x + (_loc9_.col1.x * _loc8_.x + _loc9_.col2.x * _loc8_.y);
         _loc11_ -= param3.position.y + (_loc9_.col1.y * _loc8_.x + _loc9_.col2.y * _loc8_.y);
         var _loc12_:Number = _loc10_ * param3.R.col1.x + _loc11_ * param3.R.col1.y;
         var _loc13_:Number = _loc10_ * param3.R.col2.x + _loc11_ * param3.R.col2.y;
         var _loc14_:int = 0;
         var _loc15_:Number = -Number.MAX_VALUE;
         var _loc16_:int = 0;
         while(_loc16_ < _loc6_)
         {
            if((_loc25_ = (_loc8_ = _loc7_[_loc16_]).x * _loc12_ + _loc8_.y * _loc13_) > _loc15_)
            {
               _loc15_ = _loc25_;
               _loc14_ = _loc16_;
            }
            _loc16_++;
         }
         var _loc17_:Number = §>!5§(param2,param3,_loc14_,param4,param5);
         var _loc18_:int = _loc14_ - 1 >= 0 ? int(_loc14_ - 1) : int(_loc6_ - 1);
         var _loc19_:Number = §>!5§(param2,param3,_loc18_,param4,param5);
         var _loc20_:int = _loc14_ + 1 < _loc6_ ? int(_loc14_ + 1) : 0;
         var _loc21_:Number = §>!5§(param2,param3,_loc20_,param4,param5);
         if(_loc19_ > _loc17_ && _loc19_ > _loc21_)
         {
            _loc24_ = -1;
            _loc22_ = _loc18_;
            _loc23_ = _loc19_;
         }
         else
         {
            if(_loc21_ <= _loc17_)
            {
               param1[0] = _loc14_;
               return _loc17_;
            }
            _loc24_ = 1;
            _loc22_ = _loc20_;
            _loc23_ = _loc21_;
         }
         while(true)
         {
            if(_loc24_ == -1)
            {
               _loc14_ = _loc22_ - 1 >= 0 ? int(_loc22_ - 1) : int(_loc6_ - 1);
            }
            else
            {
               _loc14_ = _loc22_ + 1 < _loc6_ ? int(_loc22_ + 1) : 0;
            }
            if((_loc17_ = §>!5§(param2,param3,_loc14_,param4,param5)) <= _loc23_)
            {
               break;
            }
            _loc22_ = _loc14_;
            _loc23_ = _loc17_;
         }
         param1[0] = _loc22_;
         return _loc23_;
      }
      
      public static function §@!§(param1:Vector.<§<#§>, param2:b2PolygonShape, param3:b2Transform, param4:int, param5:b2PolygonShape, param6:b2Transform) : void
      {
         var _loc12_:b2Mat22 = null;
         var _loc13_:b2Vec2 = null;
         var _loc20_:§<#§ = null;
         var _loc23_:Number = NaN;
         var _loc7_:int = param2.§0S§;
         var _loc8_:Vector.<b2Vec2> = param2.§07§;
         var _loc9_:int = param5.§0S§;
         var _loc10_:Vector.<b2Vec2> = param5.§#1§;
         var _loc11_:Vector.<b2Vec2> = param5.§07§;
         _loc12_ = param3.R;
         _loc13_ = _loc8_[param4];
         var _loc14_:Number = _loc12_.col1.x * _loc13_.x + _loc12_.col2.x * _loc13_.y;
         var _loc15_:Number = _loc12_.col1.y * _loc13_.x + _loc12_.col2.y * _loc13_.y;
         var _loc16_:Number = (_loc12_ = param6.R).col1.x * _loc14_ + _loc12_.col1.y * _loc15_;
         _loc15_ = _loc12_.col2.x * _loc14_ + _loc12_.col2.y * _loc15_;
         _loc14_ = _loc16_;
         var _loc17_:int = 0;
         var _loc18_:Number = Number.MAX_VALUE;
         var _loc19_:int = 0;
         while(_loc19_ < _loc9_)
         {
            _loc13_ = _loc11_[_loc19_];
            if((_loc23_ = _loc14_ * _loc13_.x + _loc15_ * _loc13_.y) < _loc18_)
            {
               _loc18_ = _loc23_;
               _loc17_ = _loc19_;
            }
            _loc19_++;
         }
         var _loc22_:int = (_loc21_ = int(_loc17_)) + 1 < _loc9_ ? int(_loc21_ + 1) : 0;
         _loc20_ = param1[0];
         _loc13_ = _loc10_[_loc21_];
         _loc12_ = param6.R;
         _loc20_.v.x = param6.position.x + (_loc12_.col1.x * _loc13_.x + _loc12_.col2.x * _loc13_.y);
         _loc20_.v.y = param6.position.y + (_loc12_.col1.y * _loc13_.x + _loc12_.col2.y * _loc13_.y);
         _loc20_.id.§1!e§.§-c§ = param4;
         _loc20_.id.§1!e§.§+!S§ = _loc21_;
         _loc20_.id.§1!e§.§+J§ = 0;
         _loc20_ = param1[1];
         _loc13_ = _loc10_[_loc22_];
         _loc12_ = param6.R;
         _loc20_.v.x = param6.position.x + (_loc12_.col1.x * _loc13_.x + _loc12_.col2.x * _loc13_.y);
         _loc20_.v.y = param6.position.y + (_loc12_.col1.y * _loc13_.x + _loc12_.col2.y * _loc13_.y);
         _loc20_.id.§1!e§.§-c§ = param4;
         _loc20_.id.§1!e§.§+!S§ = _loc22_;
         _loc20_.id.§1!e§.§+J§ = 1;
      }
      
      private static function §;w§() : Vector.<§<#§>
      {
         var _loc1_:Vector.<§<#§> = new Vector.<§<#§>(2);
         _loc1_[0] = new §<#§();
         _loc1_[1] = new §<#§();
         return _loc1_;
      }
      
      public static function §7c§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2PolygonShape, param5:b2Transform) : void
      {
         var _loc6_:§<#§ = null;
         var _loc12_:b2PolygonShape = null;
         var _loc13_:b2PolygonShape = null;
         var _loc14_:b2Transform = null;
         var _loc15_:b2Transform = null;
         var _loc16_:int = 0;
         var _loc17_:uint = 0;
         var _loc20_:b2Mat22 = null;
         var _loc25_:b2Vec2 = null;
         var _loc39_:int = 0;
         var _loc42_:Number = NaN;
         var _loc43_:b2ManifoldPoint = null;
         var _loc44_:Number = NaN;
         var _loc45_:Number = NaN;
         param1.§break§ = 0;
         var _loc7_:Number = param2.§#&§ + param4.§#&§;
         var _loc8_:int = 0;
         §??§[0] = _loc8_;
         var _loc9_:Number = §+!+§(§??§,param2,param3,param4,param5);
         _loc8_ = §??§[0];
         if(_loc9_ > _loc7_)
         {
            return;
         }
         var _loc10_:int = 0;
         §>!?§[0] = _loc10_;
         var _loc11_:Number = §+!+§(§>!?§,param4,param5,param2,param3);
         _loc10_ = §>!?§[0];
         if(_loc11_ > _loc7_)
         {
            return;
         }
         if(_loc11_ > 0.98 * _loc9_ + 0.001)
         {
            _loc12_ = param4;
            _loc13_ = param2;
            _loc14_ = param5;
            _loc15_ = param3;
            _loc16_ = _loc10_;
            param1.§#!&§ = b2Manifold.§&!5§;
            _loc17_ = 1;
         }
         else
         {
            _loc12_ = param2;
            _loc13_ = param4;
            _loc14_ = param3;
            _loc15_ = param5;
            _loc16_ = _loc8_;
            param1.§#!&§ = b2Manifold.§>E§;
            _loc17_ = 0;
         }
         var _loc21_:Vector.<§<#§> = §3!f§;
         §@!§(_loc21_,_loc12_,_loc14_,_loc16_,_loc13_,_loc15_);
         var _loc22_:int = _loc12_.§0S§;
         var _loc23_:Vector.<b2Vec2>;
         var _loc24_:b2Vec2 = (_loc23_ = _loc12_.§#1§)[_loc16_];
         if(_loc16_ + 1 < _loc22_)
         {
            _loc25_ = _loc23_[int(_loc16_ + 1)];
         }
         else
         {
            _loc25_ = _loc23_[0];
         }
         var _loc26_:b2Vec2;
         (_loc26_ = §14§).Set(_loc25_.x - _loc24_.x,_loc25_.y - _loc24_.y);
         _loc26_.Normalize();
         var _loc27_:b2Vec2;
         (_loc27_ = §^!4§).x = _loc26_.y;
         _loc27_.y = -_loc26_.x;
         var _loc28_:b2Vec2;
         (_loc28_ = §9_§).Set(0.5 * (_loc24_.x + _loc25_.x),0.5 * (_loc24_.y + _loc25_.y));
         var _loc29_:b2Vec2 = §0$§;
         _loc20_ = _loc14_.R;
         _loc29_.x = _loc20_.col1.x * _loc26_.x + _loc20_.col2.x * _loc26_.y;
         _loc29_.y = _loc20_.col1.y * _loc26_.x + _loc20_.col2.y * _loc26_.y;
         var _loc30_:b2Vec2;
         (_loc30_ = s_tangent2).x = -_loc29_.x;
         _loc30_.y = -_loc29_.y;
         var _loc31_:b2Vec2;
         (_loc31_ = §]!7§).x = _loc29_.y;
         _loc31_.y = -_loc29_.x;
         var _loc32_:b2Vec2 = s_v11;
         var _loc33_:b2Vec2 = s_v12;
         _loc32_.x = _loc14_.position.x + (_loc20_.col1.x * _loc24_.x + _loc20_.col2.x * _loc24_.y);
         _loc32_.y = _loc14_.position.y + (_loc20_.col1.y * _loc24_.x + _loc20_.col2.y * _loc24_.y);
         _loc33_.x = _loc14_.position.x + (_loc20_.col1.x * _loc25_.x + _loc20_.col2.x * _loc25_.y);
         _loc33_.y = _loc14_.position.y + (_loc20_.col1.y * _loc25_.x + _loc20_.col2.y * _loc25_.y);
         var _loc34_:Number = _loc31_.x * _loc32_.x + _loc31_.y * _loc32_.y;
         var _loc35_:Number = -_loc29_.x * _loc32_.x - _loc29_.y * _loc32_.y + _loc7_;
         var _loc36_:Number = _loc29_.x * _loc33_.x + _loc29_.y * _loc33_.y + _loc7_;
         var _loc37_:Vector.<§<#§> = s_clipPoints1;
         var _loc38_:Vector.<§<#§> = s_clipPoints2;
         if((_loc39_ = §8H§(_loc37_,_loc21_,_loc30_,_loc35_)) < 2)
         {
            return;
         }
         if((_loc39_ = §8H§(_loc38_,_loc37_,_loc29_,_loc36_)) < 2)
         {
            return;
         }
         param1.§7!A§.SetV(_loc27_);
         param1.m_localPoint.SetV(_loc28_);
         var _loc40_:int = 0;
         var _loc41_:int = 0;
         while(_loc41_ < b2Settings.b2_maxManifoldPoints)
         {
            _loc6_ = _loc38_[_loc41_];
            if((_loc42_ = _loc31_.x * _loc6_.v.x + _loc31_.y * _loc6_.v.y - _loc34_) <= _loc7_)
            {
               _loc43_ = param1.§@Z§[_loc40_];
               _loc20_ = _loc15_.R;
               _loc44_ = _loc6_.v.x - _loc15_.position.x;
               _loc45_ = _loc6_.v.y - _loc15_.position.y;
               _loc43_.m_localPoint.x = _loc44_ * _loc20_.col1.x + _loc45_ * _loc20_.col1.y;
               _loc43_.m_localPoint.y = _loc44_ * _loc20_.col2.x + _loc45_ * _loc20_.col2.y;
               _loc43_.m_id.Set(_loc6_.id);
               _loc43_.m_id.§1!e§.§+!@§ = _loc17_;
               _loc40_++;
            }
            _loc41_++;
         }
         param1.§break§ = _loc40_;
      }
      
      public static function §5!V§(param1:b2Manifold, param2:b2CircleShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
         var _loc6_:b2Mat22 = null;
         var _loc7_:b2Vec2 = null;
         param1.§break§ = 0;
         _loc6_ = param3.R;
         _loc7_ = param2.§4Z§;
         var _loc8_:Number = param3.position.x + (_loc6_.col1.x * _loc7_.x + _loc6_.col2.x * _loc7_.y);
         var _loc9_:Number = param3.position.y + (_loc6_.col1.y * _loc7_.x + _loc6_.col2.y * _loc7_.y);
         _loc6_ = param5.R;
         _loc7_ = param4.§4Z§;
         var _loc10_:Number = param5.position.x + (_loc6_.col1.x * _loc7_.x + _loc6_.col2.x * _loc7_.y);
         var _loc11_:Number = param5.position.y + (_loc6_.col1.y * _loc7_.x + _loc6_.col2.y * _loc7_.y);
         var _loc12_:Number = _loc10_ - _loc8_;
         var _loc13_:Number = _loc11_ - _loc9_;
         var _loc14_:Number = _loc12_ * _loc12_ + _loc13_ * _loc13_;
         var _loc15_:Number = param2.§#&§ + param4.§#&§;
         if(_loc14_ > _loc15_ * _loc15_)
         {
            return;
         }
         param1.§#!&§ = b2Manifold.§6C§;
         param1.m_localPoint.SetV(param2.§4Z§);
         param1.§7!A§.§7_§();
         param1.§break§ = 1;
         param1.§@Z§[0].m_localPoint.SetV(param4.§4Z§);
         param1.§@Z§[0].m_id.key = 0;
      }
      
      public static function §'d§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:b2Vec2 = null;
         var _loc12_:b2Mat22 = null;
         var _loc17_:Number = NaN;
         var _loc31_:Number = NaN;
         var _loc32_:Number = NaN;
         var _loc33_:Number = NaN;
         param1.§break§ = 0;
         _loc12_ = param5.R;
         _loc11_ = param4.§4Z§;
         var _loc13_:Number = param5.position.x + (_loc12_.col1.x * _loc11_.x + _loc12_.col2.x * _loc11_.y);
         var _loc14_:Number = param5.position.y + (_loc12_.col1.y * _loc11_.x + _loc12_.col2.y * _loc11_.y);
         _loc7_ = _loc13_ - param3.position.x;
         _loc8_ = _loc14_ - param3.position.y;
         _loc12_ = param3.R;
         var _loc15_:Number = _loc7_ * _loc12_.col1.x + _loc8_ * _loc12_.col1.y;
         var _loc16_:Number = _loc7_ * _loc12_.col2.x + _loc8_ * _loc12_.col2.y;
         var _loc18_:int = 0;
         var _loc19_:Number = -Number.MAX_VALUE;
         var _loc20_:Number = param2.§#&§ + param4.§#&§;
         var _loc21_:int = param2.§0S§;
         var _loc22_:Vector.<b2Vec2> = param2.§#1§;
         var _loc23_:Vector.<b2Vec2> = param2.§07§;
         var _loc24_:int = 0;
         while(_loc24_ < _loc21_)
         {
            _loc11_ = _loc22_[_loc24_];
            _loc7_ = _loc15_ - _loc11_.x;
            _loc8_ = _loc16_ - _loc11_.y;
            if((_loc31_ = (_loc11_ = _loc23_[_loc24_]).x * _loc7_ + _loc11_.y * _loc8_) > _loc20_)
            {
               return;
            }
            if(_loc31_ > _loc19_)
            {
               _loc19_ = _loc31_;
               _loc18_ = _loc24_;
            }
            _loc24_++;
         }
         var _loc26_:int = (_loc25_ = int(_loc18_)) + 1 < _loc21_ ? int(_loc25_ + 1) : 0;
         var _loc27_:b2Vec2 = _loc22_[_loc25_];
         var _loc28_:b2Vec2 = _loc22_[_loc26_];
         if(_loc19_ < Number.MIN_VALUE)
         {
            param1.§break§ = 1;
            param1.§#!&§ = b2Manifold.§>E§;
            param1.§7!A§.SetV(_loc23_[_loc18_]);
            param1.m_localPoint.x = 0.5 * (_loc27_.x + _loc28_.x);
            param1.m_localPoint.y = 0.5 * (_loc27_.y + _loc28_.y);
            param1.§@Z§[0].m_localPoint.SetV(param4.§4Z§);
            param1.§@Z§[0].m_id.key = 0;
            return;
         }
         var _loc29_:Number = (_loc15_ - _loc27_.x) * (_loc28_.x - _loc27_.x) + (_loc16_ - _loc27_.y) * (_loc28_.y - _loc27_.y);
         var _loc30_:Number = (_loc15_ - _loc28_.x) * (_loc27_.x - _loc28_.x) + (_loc16_ - _loc28_.y) * (_loc27_.y - _loc28_.y);
         if(_loc29_ <= 0)
         {
            if((_loc15_ - _loc27_.x) * (_loc15_ - _loc27_.x) + (_loc16_ - _loc27_.y) * (_loc16_ - _loc27_.y) > _loc20_ * _loc20_)
            {
               return;
            }
            param1.§break§ = 1;
            param1.§#!&§ = b2Manifold.§>E§;
            param1.§7!A§.x = _loc15_ - _loc27_.x;
            param1.§7!A§.y = _loc16_ - _loc27_.y;
            param1.§7!A§.Normalize();
            param1.m_localPoint.SetV(_loc27_);
            param1.§@Z§[0].m_localPoint.SetV(param4.§4Z§);
            param1.§@Z§[0].m_id.key = 0;
         }
         else if(_loc30_ <= 0)
         {
            if((_loc15_ - _loc28_.x) * (_loc15_ - _loc28_.x) + (_loc16_ - _loc28_.y) * (_loc16_ - _loc28_.y) > _loc20_ * _loc20_)
            {
               return;
            }
            param1.§break§ = 1;
            param1.§#!&§ = b2Manifold.§>E§;
            param1.§7!A§.x = _loc15_ - _loc28_.x;
            param1.§7!A§.y = _loc16_ - _loc28_.y;
            param1.§7!A§.Normalize();
            param1.m_localPoint.SetV(_loc28_);
            param1.§@Z§[0].m_localPoint.SetV(param4.§4Z§);
            param1.§@Z§[0].m_id.key = 0;
         }
         else
         {
            _loc32_ = 0.5 * (_loc27_.x + _loc28_.x);
            _loc33_ = 0.5 * (_loc27_.y + _loc28_.y);
            if((_loc19_ = (_loc15_ - _loc32_) * _loc23_[_loc25_].x + (_loc16_ - _loc33_) * _loc23_[_loc25_].y) > _loc20_)
            {
               return;
            }
            param1.§break§ = 1;
            param1.§#!&§ = b2Manifold.§>E§;
            param1.§7!A§.x = _loc23_[_loc25_].x;
            param1.§7!A§.y = _loc23_[_loc25_].y;
            param1.§7!A§.Normalize();
            param1.m_localPoint.Set(_loc32_,_loc33_);
            param1.§@Z§[0].m_localPoint.SetV(param4.§4Z§);
            param1.§@Z§[0].m_id.key = 0;
         }
      }
      
      public static function §"!F§(param1:b2AABB, param2:b2AABB) : Boolean
      {
         var _loc3_:b2Vec2 = param2.§>!7§;
         var _loc4_:b2Vec2 = param1.§=k§;
         var _loc5_:Number = _loc3_.x - _loc4_.x;
         var _loc6_:Number = _loc3_.y - _loc4_.y;
         _loc3_ = param1.§>!7§;
         _loc4_ = param2.§=k§;
         var _loc7_:Number = _loc3_.x - _loc4_.x;
         var _loc8_:Number = _loc3_.y - _loc4_.y;
         if(_loc5_ > 0 || _loc6_ > 0)
         {
            return false;
         }
         if(_loc7_ > 0 || _loc8_ > 0)
         {
            return false;
         }
         return true;
      }
   }
}
