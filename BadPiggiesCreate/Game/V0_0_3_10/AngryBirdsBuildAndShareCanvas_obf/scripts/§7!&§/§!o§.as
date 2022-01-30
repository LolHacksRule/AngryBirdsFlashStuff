package §7!&§
{
   import §!S§.b2Settings;
   import §,^§.§@M§;
   import §6U§.b2CircleShape;
   import §6U§.b2PolygonShape;
   import §6U§.b2Shape;
   import §?!h§.b2Math;
   import §?!h§.b2Transform;
   import §?!h§.b2Vec2;
   import §`]§.b2Body;
   import flash.geom.Rectangle;
   
   public class §!o§
   {
      
      public static const §%"+§:Number = 0.6;
      
      public static const §4!B§:Number = 0;
      
      public static const §3!L§:Number = 1;
       
      
      public function §!o§()
      {
         super();
      }
      
      public static function §,8§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : §@M§
      {
         var _loc5_:§@M§ = null;
         if(param1 is b2PolygonShape && param3 is b2PolygonShape)
         {
            _loc5_ = §6!4§(param1 as b2PolygonShape,param2,param3 as b2PolygonShape,param4);
         }
         else if(param1 is b2PolygonShape && param3 is b2CircleShape)
         {
            _loc5_ = §&"5§(param1 as b2PolygonShape,param2,param3 as b2CircleShape,param4);
         }
         else if(param1 is b2CircleShape && param3 is b2PolygonShape)
         {
            (_loc5_ = §&"5§(param3 as b2PolygonShape,param4,param1 as b2CircleShape,param2)).§3?§.§ G§();
         }
         else if(param1 is b2CircleShape && param3 is b2CircleShape)
         {
            _loc5_ = §%!-§(param1 as b2CircleShape,param2,param3 as b2CircleShape,param4);
         }
         return _loc5_;
      }
      
      public static function §6!4§(param1:b2PolygonShape, param2:b2Transform, param3:b2PolygonShape, param4:b2Transform) : §@M§
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
         var _loc27_:§@M§ = null;
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
         var _loc6_:Vector.<b2Vec2> = param1.§>4§();
         var _loc7_:Vector.<b2Vec2> = param3.§>4§();
         var _loc8_:b2Vec2 = null;
         var _loc9_:b2Vec2 = null;
         var _loc10_:b2Vec2 = null;
         var _loc11_:b2Vec2 = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc14_:§@M§ = null;
         var _loc15_:int = 0;
         while(_loc15_ < _loc6_.length)
         {
            _loc16_ = b2Math.§>w§(param2,_loc6_[_loc15_]);
            _loc17_ = b2Math.§>w§(param2,_loc6_[_loc15_ + 1 < _loc6_.length ? _loc15_ + 1 : 0]);
            _loc18_ = param1.§ >§()[_loc15_].Copy();
            (_loc18_ = §?p§(param1.§ >§()[_loc15_].Copy(),new b2Vec2(0,0),-param2.GetAngle())).§<!4§(§%"+§);
            (_loc19_ = _loc16_.Copy()).§'!K§(_loc18_);
            (_loc20_ = _loc17_.Copy()).§'!K§(_loc18_);
            _loc21_ = 0;
            while(_loc21_ < _loc7_.length)
            {
               _loc22_ = b2Math.§>w§(param4,_loc7_[_loc21_]);
               _loc23_ = b2Math.§>w§(param4,_loc7_[_loc21_ + 1 < _loc7_.length ? _loc21_ + 1 : 0]);
               (_loc24_ = §?p§(param3.§ >§()[_loc21_].Copy(),new b2Vec2(0,0),-param4.GetAngle())).§<!4§(§%"+§);
               (_loc25_ = _loc22_.Copy()).§'!K§(_loc24_);
               (_loc26_ = _loc23_.Copy()).§'!K§(_loc24_);
               _loc30_ = false;
               if(§7!D§(_loc16_,_loc19_,_loc22_,_loc23_) || §7!D§(_loc17_,_loc20_,_loc22_,_loc23_) || §7!D§(_loc22_,_loc25_,_loc16_,_loc17_) || §7!D§(_loc23_,_loc26_,_loc16_,_loc17_))
               {
                  _loc30_ = true;
               }
               if(_loc30_)
               {
                  _loc27_ = §@U§(_loc16_,_loc17_,_loc22_,_loc23_);
                  _loc28_ = Math.round(§&!;§(_loc16_,_loc17_,_loc22_,_loc23_));
                  _loc27_.rotation = _loc28_;
                  _loc29_ = true;
                  if(_loc27_.§@!l§.§7!6§() > §%"+§)
                  {
                     _loc29_ = false;
                  }
                  if(Math.abs(_loc28_) > §4!B§)
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
                     else if(_loc27_.§@!l§.§7!6§() < _loc14_.§@!l§.§7!6§())
                     {
                        _loc31_ = true;
                     }
                     else if(_loc27_.§@!l§.§7!6§() == _loc14_.§@!l§.§7!6§())
                     {
                        _loc32_ = §&!;§(_loc8_,_loc9_,_loc11_,_loc12_);
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
            _loc33_ = _loc14_.§@!l§;
            _loc34_ = §?p§(_loc8_,_loc14_.§8^§,_loc14_.rotation / 180 * Math.PI);
            _loc35_ = §?p§(_loc9_,_loc14_.§8^§,_loc14_.rotation / 180 * Math.PI);
            _loc34_.§'!K§(_loc33_);
            _loc35_.§'!K§(_loc33_);
            _loc36_ = b2Math.§&g§(_loc34_,_loc11_);
            _loc37_ = b2Math.§&g§(_loc34_,_loc12_);
            _loc38_ = b2Math.§&g§(_loc35_,_loc11_);
            _loc39_ = b2Math.§&g§(_loc35_,_loc12_);
            _loc40_ = _loc36_ + _loc39_;
            _loc41_ = _loc37_ + _loc38_;
            _loc42_ = _loc36_;
            _loc43_ = null;
            if(_loc40_ < _loc41_)
            {
               if(_loc36_ < §3!L§)
               {
                  (_loc43_ = _loc11_.Copy()).§2!P§(_loc34_);
               }
               if(_loc39_ < §3!L§ && _loc39_ < _loc36_)
               {
                  (_loc43_ = _loc12_.Copy()).§2!P§(_loc35_);
               }
            }
            else
            {
               if(_loc37_ < §3!L§)
               {
                  (_loc43_ = _loc12_.Copy()).§2!P§(_loc34_);
               }
               if(_loc38_ < §3!L§ && _loc38_ < _loc37_)
               {
                  (_loc43_ = _loc11_.Copy()).§2!P§(_loc35_);
               }
            }
            _loc14_.§+" § = _loc43_ != null;
            if(_loc43_ != null)
            {
               _loc33_.§'!K§(_loc43_);
            }
            (_loc44_ = _loc13_.Copy()).Normalize();
            _loc44_.§<!4§(b2Settings.b2_linearSlop * 2);
            _loc33_.§'!K§(_loc44_);
            _loc14_.§3?§ = _loc33_;
            return _loc14_;
         }
         return null;
      }
      
      public static function §?p§(param1:b2Vec2, param2:b2Vec2, param3:Number) : b2Vec2
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
      
      public static function §&"5§(param1:b2PolygonShape, param2:b2Transform, param3:b2CircleShape, param4:b2Transform) : §@M§
      {
         var _loc10_:b2Vec2 = null;
         var _loc11_:b2Vec2 = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:Number = NaN;
         var _loc14_:§@M§ = null;
         var _loc5_:b2Vec2 = param4.position.Copy();
         var _loc6_:Number = param3.§!%§();
         var _loc7_:Vector.<b2Vec2> = param1.§>4§();
         var _loc8_:b2Vec2 = null;
         var _loc9_:int = 0;
         while(_loc9_ < _loc7_.length)
         {
            _loc10_ = b2Math.§>w§(param2,_loc7_[_loc9_]);
            _loc11_ = b2Math.§>w§(param2,_loc7_[_loc9_ + 1 < _loc7_.length ? _loc9_ + 1 : 0]);
            _loc13_ = ((_loc12_ = §5&§(_loc10_,_loc11_,_loc5_).§@!l§).§7!6§() - _loc6_) / _loc12_.§7!6§();
            _loc12_.x *= _loc13_;
            _loc12_.y *= _loc13_;
            if(_loc8_ == null || _loc12_.§7!6§() < _loc8_.§7!6§())
            {
               _loc8_ = _loc12_;
            }
            _loc9_++;
         }
         if(_loc8_ != null)
         {
            (_loc14_ = new §@M§()).§@!l§ = _loc8_;
            _loc14_.§3?§ = _loc8_;
            _loc14_.rotation = 0;
            return _loc14_;
         }
         return null;
      }
      
      public static function §%!-§(param1:b2CircleShape, param2:b2Transform, param3:b2CircleShape, param4:b2Transform) : §@M§
      {
         var _loc5_:b2Vec2 = param2.position.Copy();
         var _loc7_:b2Vec2;
         var _loc6_:b2Vec2;
         (_loc7_ = (_loc6_ = param4.position.Copy()).Copy()).§2!P§(_loc5_);
         var _loc8_:Number = (_loc7_.§7!6§() - param1.§!%§() - param3.§!%§()) / _loc7_.§7!6§();
         _loc7_.x *= _loc8_;
         _loc7_.y *= _loc8_;
         var _loc9_:§@M§;
         (_loc9_ = new §@M§()).§@!l§ = _loc7_;
         _loc9_.§3?§ = _loc7_;
         _loc9_.rotation = 0;
         return _loc9_;
      }
      
      public static function §@U§(param1:b2Vec2, param2:b2Vec2, param3:b2Vec2, param4:b2Vec2) : §@M§
      {
         var _loc6_:§@M§ = null;
         var _loc7_:§@M§ = null;
         var _loc8_:§@M§ = null;
         var _loc9_:§@M§ = null;
         var _loc10_:§@M§ = null;
         var _loc11_:§@M§ = null;
         var _loc5_:b2Vec2;
         if(_loc5_ = §7!D§(param1,param2,param3,param4))
         {
            (_loc6_ = new §@M§()).§@!l§ = new b2Vec2(0,0);
            _loc6_.§8^§ = _loc5_;
            return _loc6_;
         }
         _loc7_ = §5&§(param1,param2,param3,false);
         _loc8_ = §5&§(param1,param2,param4,false);
         _loc9_ = §5&§(param3,param4,param1,true);
         _loc10_ = §5&§(param3,param4,param2,true);
         _loc11_ = _loc7_;
         if(_loc8_.§@!l§.§7!6§() < _loc11_.§@!l§.§7!6§())
         {
            _loc11_ = _loc8_;
         }
         if(_loc9_.§@!l§.§7!6§() < _loc11_.§@!l§.§7!6§())
         {
            _loc11_ = _loc9_;
         }
         if(_loc10_.§@!l§.§7!6§() < _loc11_.§@!l§.§7!6§())
         {
            _loc11_ = _loc10_;
         }
         return _loc11_;
      }
      
      public static function §7!D§(param1:b2Vec2, param2:b2Vec2, param3:b2Vec2, param4:b2Vec2) : b2Vec2
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
      
      public static function §5&§(param1:b2Vec2, param2:b2Vec2, param3:b2Vec2, param4:Boolean = false) : §@M§
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
         var _loc8_:§@M§;
         (_loc8_ = new §@M§()).§@!l§ = new b2Vec2(param3.x - _loc7_.x,param3.y - _loc7_.y);
         if(param4)
         {
            _loc8_.§@!l§.§ G§();
         }
         _loc8_.§8^§ = !!param4 ? param3 : _loc7_;
         return _loc8_;
      }
      
      public static function §&!;§(param1:b2Vec2, param2:b2Vec2, param3:b2Vec2, param4:b2Vec2, param5:Boolean = true) : Number
      {
         return §;E§(new b2Vec2(param2.x - param1.x,param2.y - param1.y),new b2Vec2(param4.x - param3.x,param4.y - param3.y),param5);
      }
      
      public static function §;E§(param1:b2Vec2, param2:b2Vec2, param3:Boolean = true) : Number
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
      
      public static function §-!v§(param1:b2Body, param2:b2Body) : Rectangle
      {
         var _loc3_:b2Shape = param1.§?&§().GetShape().Copy();
         var _loc4_:b2Transform = param1.§!!f§();
         var _loc5_:b2Shape = param2.§?&§().GetShape().Copy();
         var _loc6_:b2Transform = param2.§!!f§();
         var _loc7_:Rectangle = §!o§.§!I§(_loc3_,_loc4_,§!o§.§%"+§);
         var _loc8_:Rectangle = §!o§.§!I§(_loc5_,_loc6_,§!o§.§%"+§);
         return _loc7_.intersection(_loc8_);
      }
      
      public static function §^g§(param1:b2Body, param2:Number = 0) : Rectangle
      {
         var _loc3_:b2Shape = param1.§?&§().GetShape().Copy();
         var _loc4_:b2Transform = param1.§!!f§();
         return §!o§.§!I§(_loc3_,_loc4_,param2);
      }
      
      public static function §!I§(param1:b2Shape, param2:b2Transform, param3:Number = 0) : Rectangle
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
            _loc8_ = (param1 as b2CircleShape).§!%§();
            _loc4_ = (_loc9_ = param2.position).x - _loc8_ < _loc4_ ? Number(_loc9_.x - _loc8_) : Number(_loc4_);
            _loc6_ = _loc9_.x + _loc8_ > _loc6_ ? Number(_loc9_.x + _loc8_) : Number(_loc6_);
            _loc5_ = _loc9_.y - _loc8_ < _loc5_ ? Number(_loc9_.y - _loc8_) : Number(_loc5_);
            _loc7_ = _loc9_.y + _loc8_ > _loc7_ ? Number(_loc9_.y + _loc8_) : Number(_loc7_);
         }
         else if(param1 is b2PolygonShape)
         {
            _loc10_ = (param1 as b2PolygonShape).§>4§();
            _loc11_ = 0;
            while(_loc11_ < _loc10_.length)
            {
               _loc12_ = b2Math.§>w§(param2,_loc10_[_loc11_]);
               _loc4_ = Math.min(_loc12_.x,_loc4_);
               _loc6_ = Math.max(_loc12_.x,_loc6_);
               _loc5_ = Math.min(_loc12_.y,_loc5_);
               _loc7_ = Math.max(_loc12_.y,_loc7_);
               _loc11_++;
            }
         }
         return new Rectangle(_loc4_ - param3,_loc5_ - param3,_loc6_ - _loc4_ + param3,_loc7_ - _loc5_ + param3);
      }
      
      public static function §'"5§(param1:b2Shape, param2:b2Transform) : b2Vec2
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
            _loc3_ = (param1 as b2PolygonShape).§>4§();
            _loc4_ = new b2Vec2();
            _loc5_ = 0;
            while(_loc5_ < _loc3_.length)
            {
               _loc4_.§'!K§(b2Math.§>w§(param2,_loc3_[_loc5_]));
               _loc5_++;
            }
            _loc4_.§<!4§(1 / _loc3_.length);
            return _loc4_;
         }
         return null;
      }
      
      public static function §1!P§(param1:b2Shape, param2:b2Transform) : b2Vec2
      {
         var _loc3_:b2Vec2 = §'"5§(param1,param2);
         return new b2Vec2(param2.position.x - _loc3_.x,param2.position.y - _loc3_.y);
      }
   }
}
