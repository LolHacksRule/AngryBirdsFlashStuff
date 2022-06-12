package §6!A§
{
   import §"J§.b2Body;
   import §-!`§.§`!i§;
   import §2k§.b2CircleShape;
   import §2k§.b2PolygonShape;
   import §2k§.b2Shape;
   import §<!a§.b2Math;
   import §<!a§.b2Transform;
   import §<!a§.b2Vec2;
   import §<";§.b2Settings;
   import flash.geom.Rectangle;
   
   public class §%l§
   {
      
      public static const §6!0§:Number = 0.6;
      
      public static const §!Y§:Number = 0;
      
      public static const §8!3§:Number = 1;
       
      
      public function §%l§()
      {
         super();
      }
      
      public static function §`j§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : §`!i§
      {
         var _loc5_:§`!i§ = null;
         if(param1 is b2PolygonShape && param3 is b2PolygonShape)
         {
            _loc5_ = §4!U§(param1 as b2PolygonShape,param2,param3 as b2PolygonShape,param4);
         }
         else if(param1 is b2PolygonShape && param3 is b2CircleShape)
         {
            _loc5_ = §>5§(param1 as b2PolygonShape,param2,param3 as b2CircleShape,param4);
         }
         else if(param1 is b2CircleShape && param3 is b2PolygonShape)
         {
            (_loc5_ = §>5§(param3 as b2PolygonShape,param4,param1 as b2CircleShape,param2)).§+!9§.§<!z§();
         }
         else if(param1 is b2CircleShape && param3 is b2CircleShape)
         {
            _loc5_ = §5!h§(param1 as b2CircleShape,param2,param3 as b2CircleShape,param4);
         }
         return _loc5_;
      }
      
      public static function §4!U§(param1:b2PolygonShape, param2:b2Transform, param3:b2PolygonShape, param4:b2Transform) : §`!i§
      {
         var _loc16_:b2Vec2 = null;
         var _loc17_:b2Vec2 = null;
         var _loc18_:b2Vec2 = null;
         var _loc19_:b2Vec2 = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:Number = NaN;
         var _loc22_:b2Vec2 = null;
         var _loc23_:b2Vec2 = null;
         var _loc24_:b2Vec2 = null;
         var _loc25_:b2Vec2 = null;
         var _loc26_:b2Vec2 = null;
         var _loc27_:§`!i§ = null;
         var _loc28_:Number = NaN;
         var _loc29_:Boolean = false;
         var _loc30_:Boolean = false;
         var _loc31_:Boolean = false;
         var _loc32_:Number = NaN;
         var _loc33_:b2Vec2 = null;
         var _loc34_:b2Vec2 = null;
         var _loc35_:b2Vec2 = null;
         var _loc36_:Number = NaN;
         var _loc37_:Number = NaN;
         var _loc38_:Number = NaN;
         var _loc39_:Number = NaN;
         var _loc40_:Number = NaN;
         var _loc41_:Number = NaN;
         var _loc42_:Number = NaN;
         var _loc43_:b2Vec2 = null;
         var _loc44_:b2Vec2 = null;
         var _loc6_:Vector.<b2Vec2> = param1.§`"3§();
         var _loc7_:Vector.<b2Vec2> = param3.§`"3§();
         var _loc8_:b2Vec2 = null;
         var _loc9_:b2Vec2 = null;
         var _loc10_:b2Vec2 = null;
         var _loc11_:b2Vec2 = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc14_:§`!i§ = null;
         var _loc15_:int = 0;
         while(_loc15_ < _loc6_.length)
         {
            _loc16_ = b2Math.§#!K§(param2,_loc6_[_loc15_]);
            _loc17_ = b2Math.§#!K§(param2,_loc6_[_loc15_ + 1 < _loc6_.length ? _loc15_ + 1 : 0]);
            _loc18_ = param1.§6q§()[_loc15_].Copy();
            (_loc18_ = §=!?§(param1.§6q§()[_loc15_].Copy(),new b2Vec2(0,0),-param2.GetAngle())).§7H§(§6!0§);
            (_loc19_ = _loc16_.Copy()).§<!n§(_loc18_);
            (_loc20_ = _loc17_.Copy()).§<!n§(_loc18_);
            _loc21_ = 0;
            while(_loc21_ < _loc7_.length)
            {
               _loc22_ = b2Math.§#!K§(param4,_loc7_[_loc21_]);
               _loc23_ = b2Math.§#!K§(param4,_loc7_[_loc21_ + 1 < _loc7_.length ? _loc21_ + 1 : 0]);
               (_loc24_ = §=!?§(param3.§6q§()[_loc21_].Copy(),new b2Vec2(0,0),-param4.GetAngle())).§7H§(§6!0§);
               (_loc25_ = _loc22_.Copy()).§<!n§(_loc24_);
               (_loc26_ = _loc23_.Copy()).§<!n§(_loc24_);
               _loc30_ = false;
               if(§54§(_loc16_,_loc19_,_loc22_,_loc23_) || §54§(_loc17_,_loc20_,_loc22_,_loc23_) || §54§(_loc22_,_loc25_,_loc16_,_loc17_) || §54§(_loc23_,_loc26_,_loc16_,_loc17_))
               {
                  _loc30_ = true;
               }
               if(_loc30_)
               {
                  _loc27_ = §5<§(_loc16_,_loc17_,_loc22_,_loc23_);
                  _loc28_ = Math.round(§7"4§(_loc16_,_loc17_,_loc22_,_loc23_));
                  _loc27_.rotation = _loc28_;
                  _loc29_ = true;
                  if(_loc27_.§5>§.§?!]§() > §6!0§)
                  {
                     _loc29_ = false;
                  }
                  if(Math.abs(_loc28_) > §!Y§)
                  {
                     _loc29_ = false;
                  }
                  if(_loc29_)
                  {
                     _loc31_ = false;
                     if(_loc14_ == null)
                     {
                        _loc31_ = true;
                     }
                     else if(_loc27_.§5>§.§?!]§() < _loc14_.§5>§.§?!]§())
                     {
                        _loc31_ = true;
                     }
                     else if(_loc27_.§5>§.§?!]§() == _loc14_.§5>§.§?!]§())
                     {
                        _loc32_ = §7"4§(_loc8_,_loc9_,_loc11_,_loc12_);
                        if(Math.abs(_loc28_) < Math.abs(_loc32_))
                        {
                           _loc31_ = true;
                        }
                     }
                     if(_loc31_)
                     {
                        _loc14_ = _loc27_;
                        _loc8_ = _loc16_;
                        _loc9_ = _loc17_;
                        _loc10_ = _loc18_;
                        _loc11_ = _loc22_;
                        _loc12_ = _loc23_;
                        _loc13_ = _loc24_;
                     }
                  }
               }
               _loc21_++;
            }
            _loc15_++;
         }
         if(_loc14_ != null)
         {
            _loc33_ = _loc14_.§5>§;
            _loc34_ = §=!?§(_loc8_,_loc14_.§%<§,_loc14_.rotation / 180 * Math.PI);
            _loc35_ = §=!?§(_loc9_,_loc14_.§%<§,_loc14_.rotation / 180 * Math.PI);
            _loc34_.§<!n§(_loc33_);
            _loc35_.§<!n§(_loc33_);
            _loc36_ = b2Math.§0?§(_loc34_,_loc11_);
            _loc37_ = b2Math.§0?§(_loc34_,_loc12_);
            _loc38_ = b2Math.§0?§(_loc35_,_loc11_);
            _loc39_ = b2Math.§0?§(_loc35_,_loc12_);
            _loc40_ = _loc36_ + _loc39_;
            _loc41_ = _loc37_ + _loc38_;
            _loc42_ = _loc36_;
            _loc43_ = null;
            if(_loc40_ < _loc41_)
            {
               if(_loc36_ < §8!3§)
               {
                  (_loc43_ = _loc11_.Copy()).§&"1§(_loc34_);
               }
               if(_loc39_ < §8!3§ && _loc39_ < _loc36_)
               {
                  (_loc43_ = _loc12_.Copy()).§&"1§(_loc35_);
               }
            }
            else
            {
               if(_loc37_ < §8!3§)
               {
                  (_loc43_ = _loc12_.Copy()).§&"1§(_loc34_);
               }
               if(_loc38_ < §8!3§ && _loc38_ < _loc37_)
               {
                  (_loc43_ = _loc11_.Copy()).§&"1§(_loc35_);
               }
            }
            _loc14_.§!!b§ = _loc43_ != null;
            if(_loc43_ != null)
            {
               _loc33_.§<!n§(_loc43_);
            }
            (_loc44_ = _loc13_.Copy()).Normalize();
            _loc44_.§7H§(b2Settings.b2_linearSlop * 2);
            _loc33_.§<!n§(_loc44_);
            _loc14_.§+!9§ = _loc33_;
            return _loc14_;
         }
         return null;
      }
      
      public static function §=!?§(param1:b2Vec2, param2:b2Vec2, param3:Number) : b2Vec2
      {
         var _loc4_:Number = param1.x - param2.x;
         var _loc5_:Number = param1.y - param2.y;
         if(_loc4_ == 0 && _loc5_ == 0)
         {
            return param1.Copy();
         }
         var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         var _loc7_:Number;
         var _loc8_:Number = (_loc7_ = Math.atan2(_loc4_,_loc5_)) + param3;
         var _loc9_:Number = Math.sin(_loc8_) * _loc6_;
         var _loc10_:Number = Math.cos(_loc8_) * _loc6_;
         return new b2Vec2(param2.x + _loc9_,param2.y + _loc10_);
      }
      
      public static function §>5§(param1:b2PolygonShape, param2:b2Transform, param3:b2CircleShape, param4:b2Transform) : §`!i§
      {
         var _loc10_:b2Vec2 = null;
         var _loc11_:b2Vec2 = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:Number = NaN;
         var _loc14_:§`!i§ = null;
         var _loc5_:b2Vec2 = param4.position.Copy();
         var _loc6_:Number = param3.§?!L§();
         var _loc7_:Vector.<b2Vec2> = param1.§`"3§();
         var _loc8_:b2Vec2 = null;
         var _loc9_:int = 0;
         while(_loc9_ < _loc7_.length)
         {
            _loc10_ = b2Math.§#!K§(param2,_loc7_[_loc9_]);
            _loc11_ = b2Math.§#!K§(param2,_loc7_[_loc9_ + 1 < _loc7_.length ? _loc9_ + 1 : 0]);
            _loc13_ = ((_loc12_ = §=!`§(_loc10_,_loc11_,_loc5_).§5>§).§?!]§() - _loc6_) / _loc12_.§?!]§();
            _loc12_.x *= _loc13_;
            _loc12_.y *= _loc13_;
            if(_loc8_ == null || _loc12_.§?!]§() < _loc8_.§?!]§())
            {
               _loc8_ = _loc12_;
            }
            _loc9_++;
         }
         if(_loc8_ != null)
         {
            (_loc14_ = new §`!i§()).§5>§ = _loc8_;
            _loc14_.§+!9§ = _loc8_;
            _loc14_.rotation = 0;
            return _loc14_;
         }
         return null;
      }
      
      public static function §5!h§(param1:b2CircleShape, param2:b2Transform, param3:b2CircleShape, param4:b2Transform) : §`!i§
      {
         var _loc5_:b2Vec2 = param2.position.Copy();
         var _loc7_:b2Vec2;
         var _loc6_:b2Vec2;
         (_loc7_ = (_loc6_ = param4.position.Copy()).Copy()).§&"1§(_loc5_);
         var _loc8_:Number = (_loc7_.§?!]§() - param1.§?!L§() - param3.§?!L§()) / _loc7_.§?!]§();
         _loc7_.x *= _loc8_;
         _loc7_.y *= _loc8_;
         var _loc9_:§`!i§;
         (_loc9_ = new §`!i§()).§5>§ = _loc7_;
         _loc9_.§+!9§ = _loc7_;
         _loc9_.rotation = 0;
         return _loc9_;
      }
      
      public static function §5<§(param1:b2Vec2, param2:b2Vec2, param3:b2Vec2, param4:b2Vec2) : §`!i§
      {
         var _loc6_:§`!i§ = null;
         var _loc7_:§`!i§ = null;
         var _loc8_:§`!i§ = null;
         var _loc9_:§`!i§ = null;
         var _loc10_:§`!i§ = null;
         var _loc11_:§`!i§ = null;
         var _loc5_:b2Vec2;
         if(_loc5_ = §54§(param1,param2,param3,param4))
         {
            (_loc6_ = new §`!i§()).§5>§ = new b2Vec2(0,0);
            _loc6_.§%<§ = _loc5_;
            return _loc6_;
         }
         _loc7_ = §=!`§(param1,param2,param3,false);
         _loc8_ = §=!`§(param1,param2,param4,false);
         _loc9_ = §=!`§(param3,param4,param1,true);
         _loc10_ = §=!`§(param3,param4,param2,true);
         _loc11_ = _loc7_;
         if(_loc8_.§5>§.§?!]§() < _loc11_.§5>§.§?!]§())
         {
            _loc11_ = _loc8_;
         }
         if(_loc9_.§5>§.§?!]§() < _loc11_.§5>§.§?!]§())
         {
            _loc11_ = _loc9_;
         }
         if(_loc10_.§5>§.§?!]§() < _loc11_.§5>§.§?!]§())
         {
            _loc11_ = _loc10_;
         }
         return _loc11_;
      }
      
      public static function §54§(param1:b2Vec2, param2:b2Vec2, param3:b2Vec2, param4:b2Vec2) : b2Vec2
      {
         var _loc10_:b2Vec2 = null;
         var _loc5_:Number;
         if((_loc5_ = (param4.y - param3.y) * (param2.x - param1.x) - (param4.x - param3.x) * (param2.y - param1.y)) == 0)
         {
            return null;
         }
         var _loc6_:Number = (param4.x - param3.x) * (param1.y - param3.y) - (param4.y - param3.y) * (param1.x - param3.x);
         var _loc7_:Number = (param2.x - param1.x) * (param1.y - param3.y) - (param2.y - param1.y) * (param1.x - param3.x);
         var _loc8_:Number = _loc6_ / _loc5_;
         var _loc9_:Number = _loc7_ / _loc5_;
         if(_loc8_ >= 0 && _loc8_ <= 1 && _loc9_ >= 0 && _loc9_ <= 1)
         {
            return new b2Vec2(param1.x + _loc8_ * (param2.x - param1.x),param1.y + _loc8_ * (param2.y - param1.y));
         }
         return null;
      }
      
      public static function §=!`§(param1:b2Vec2, param2:b2Vec2, param3:b2Vec2, param4:Boolean = false) : §`!i§
      {
         var _loc9_:Number = NaN;
         var _loc5_:Number = param2.x - param1.x;
         var _loc6_:Number = param2.y - param1.y;
         var _loc7_:b2Vec2 = null;
         if(_loc5_ == 0 && _loc6_ == 0)
         {
            _loc7_ = param1;
         }
         else if((_loc9_ = ((param3.x - param1.x) * _loc5_ + (param3.y - param1.y) * _loc6_) / (_loc5_ * _loc5_ + _loc6_ * _loc6_)) < 0)
         {
            _loc7_ = param1;
         }
         else if(_loc9_ > 1)
         {
            _loc7_ = param2;
         }
         else
         {
            _loc7_ = new b2Vec2(param1.x + _loc9_ * _loc5_,param1.y + _loc9_ * _loc6_);
         }
         var _loc8_:§`!i§;
         (_loc8_ = new §`!i§()).§5>§ = new b2Vec2(param3.x - _loc7_.x,param3.y - _loc7_.y);
         if(param4)
         {
            _loc8_.§5>§.§<!z§();
         }
         _loc8_.§%<§ = !!param4 ? param3 : _loc7_;
         return _loc8_;
      }
      
      public static function §7"4§(param1:b2Vec2, param2:b2Vec2, param3:b2Vec2, param4:b2Vec2, param5:Boolean = true) : Number
      {
         return §#!<§(new b2Vec2(param2.x - param1.x,param2.y - param1.y),new b2Vec2(param4.x - param3.x,param4.y - param3.y),param5);
      }
      
      public static function §#!<§(param1:b2Vec2, param2:b2Vec2, param3:Boolean = true) : Number
      {
         var _loc4_:Number = Math.atan2(param2.y,param2.x);
         var _loc5_:Number;
         var _loc6_:Number = ((_loc5_ = Math.atan2(param1.y,param1.x)) - _loc4_) * 180 / Math.PI;
         if(param3)
         {
            if(_loc6_ > 90)
            {
               _loc6_ -= 180;
            }
            else if(_loc6_ < -90)
            {
               _loc6_ += 180;
            }
         }
         return _loc6_;
      }
      
      public static function § "-§(param1:b2Body, param2:b2Body) : Rectangle
      {
         var _loc3_:b2Shape = param1.GetFixtureList().GetShape().Copy();
         var _loc4_:b2Transform = param1.§60§();
         var _loc5_:b2Shape = param2.GetFixtureList().GetShape().Copy();
         var _loc6_:b2Transform = param2.§60§();
         var _loc7_:Rectangle = §%l§.§4!'§(_loc3_,_loc4_,§%l§.§6!0§);
         var _loc8_:Rectangle = §%l§.§4!'§(_loc5_,_loc6_,§%l§.§6!0§);
         return _loc7_.intersection(_loc8_);
      }
      
      public static function §&8§(param1:b2Body, param2:Number = 0) : Rectangle
      {
         var _loc3_:b2Shape = param1.GetFixtureList().GetShape().Copy();
         var _loc4_:b2Transform = param1.§60§();
         return §%l§.§4!'§(_loc3_,_loc4_,param2);
      }
      
      public static function §4!'§(param1:b2Shape, param2:b2Transform, param3:Number = 0) : Rectangle
      {
         var _loc8_:Number = NaN;
         var _loc9_:b2Vec2 = null;
         var _loc10_:Vector.<b2Vec2> = null;
         var _loc11_:int = 0;
         var _loc12_:b2Vec2 = null;
         var _loc4_:Number = Number.MAX_VALUE;
         var _loc5_:Number = Number.MAX_VALUE;
         var _loc6_:Number = -Number.MAX_VALUE;
         var _loc7_:Number = -Number.MAX_VALUE;
         if(param1 is b2CircleShape)
         {
            _loc8_ = (param1 as b2CircleShape).§?!L§();
            _loc4_ = (_loc9_ = param2.position).x - _loc8_ < _loc4_ ? Number(_loc9_.x - _loc8_) : Number(_loc4_);
            _loc6_ = _loc9_.x + _loc8_ > _loc6_ ? Number(_loc9_.x + _loc8_) : Number(_loc6_);
            _loc5_ = _loc9_.y - _loc8_ < _loc5_ ? Number(_loc9_.y - _loc8_) : Number(_loc5_);
            _loc7_ = _loc9_.y + _loc8_ > _loc7_ ? Number(_loc9_.y + _loc8_) : Number(_loc7_);
         }
         else if(param1 is b2PolygonShape)
         {
            _loc10_ = (param1 as b2PolygonShape).§`"3§();
            _loc11_ = 0;
            while(_loc11_ < _loc10_.length)
            {
               _loc12_ = b2Math.§#!K§(param2,_loc10_[_loc11_]);
               _loc4_ = Math.min(_loc12_.x,_loc4_);
               _loc6_ = Math.max(_loc12_.x,_loc6_);
               _loc5_ = Math.min(_loc12_.y,_loc5_);
               _loc7_ = Math.max(_loc12_.y,_loc7_);
               _loc11_++;
            }
         }
         return new Rectangle(_loc4_ - param3,_loc5_ - param3,_loc6_ - _loc4_ + param3,_loc7_ - _loc5_ + param3);
      }
      
      public static function §]!^§(param1:b2Shape, param2:b2Transform) : b2Vec2
      {
         var _loc3_:Vector.<b2Vec2> = null;
         var _loc4_:b2Vec2 = null;
         var _loc5_:int = 0;
         if(param1 is b2CircleShape)
         {
            return param2.position.Copy();
         }
         if(param1 is b2PolygonShape)
         {
            _loc3_ = (param1 as b2PolygonShape).§`"3§();
            _loc4_ = new b2Vec2();
            _loc5_ = 0;
            while(_loc5_ < _loc3_.length)
            {
               _loc4_.§<!n§(b2Math.§#!K§(param2,_loc3_[_loc5_]));
               _loc5_++;
            }
            _loc4_.§7H§(1 / _loc3_.length);
            return _loc4_;
         }
         return null;
      }
      
      public static function §[t§(param1:b2Shape, param2:b2Transform) : b2Vec2
      {
         var _loc3_:b2Vec2 = §]!^§(param1,param2);
         return new b2Vec2(param2.position.x - _loc3_.x,param2.position.y - _loc3_.y);
      }
   }
}
