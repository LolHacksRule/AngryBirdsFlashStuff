package §%!B§
{
   import §&!B§.b2Mat22;
   import §&!B§.b2Math;
   import §&!B§.b2Transform;
   import §&!B§.b2Vec2;
   import §^<§.b2Settings;
   
   class b2SeparationFunction
   {
      
      public static const §>!§:int = 1;
      
      public static const §;!-§:int = 2;
      
      public static const §6"§:int = 4;
       
      
      public var § d§:b2DistanceProxy;
      
      public var §2e§:b2DistanceProxy;
      
      public var §@9§:int;
      
      public var m_localPoint:b2Vec2;
      
      public var §6!5§:b2Vec2;
      
      function b2SeparationFunction()
      {
         this.m_localPoint = new b2Vec2();
         this.§6!5§ = new b2Vec2();
         super();
      }
      
      public function §8#§(param1:b2SimplexCache, param2:b2DistanceProxy, param3:b2Transform, param4:b2DistanceProxy, param5:b2Transform) : void
      {
         var _loc7_:b2Vec2 = null;
         var _loc8_:b2Vec2 = null;
         var _loc9_:b2Vec2 = null;
         var _loc10_:b2Vec2 = null;
         var _loc11_:b2Vec2 = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:b2Mat22 = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:b2Vec2 = null;
         var _loc24_:b2Vec2 = null;
         var _loc25_:b2Vec2 = null;
         var _loc26_:b2Vec2 = null;
         var _loc27_:Number = NaN;
         var _loc28_:Number = NaN;
         var _loc29_:b2Vec2 = null;
         var _loc30_:Number = NaN;
         var _loc31_:Number = NaN;
         var _loc32_:Number = NaN;
         var _loc33_:Number = NaN;
         var _loc34_:Number = NaN;
         this.§ d§ = param2;
         this.§2e§ = param4;
         var _loc6_:int = param1.count;
         b2Settings.b2Assert(0 < _loc6_ && _loc6_ < 3);
         if(_loc6_ == 1)
         {
            this.§@9§ = §>!§;
            _loc7_ = this.§ d§.§^!Q§(param1.indexA[0]);
            _loc10_ = this.§2e§.§^!Q§(param1.indexB[0]);
            _loc20_ = _loc7_;
            _loc19_ = param3.R;
            _loc13_ = param3.position.x + (_loc19_.col1.x * _loc20_.x + _loc19_.col2.x * _loc20_.y);
            _loc14_ = param3.position.y + (_loc19_.col1.y * _loc20_.x + _loc19_.col2.y * _loc20_.y);
            _loc20_ = _loc10_;
            _loc19_ = param5.R;
            _loc15_ = param5.position.x + (_loc19_.col1.x * _loc20_.x + _loc19_.col2.x * _loc20_.y);
            _loc16_ = param5.position.y + (_loc19_.col1.y * _loc20_.x + _loc19_.col2.y * _loc20_.y);
            this.§6!5§.x = _loc15_ - _loc13_;
            this.§6!5§.y = _loc16_ - _loc14_;
            this.§6!5§.Normalize();
         }
         else if(param1.indexB[0] == param1.indexB[1])
         {
            this.§@9§ = §;!-§;
            _loc8_ = this.§ d§.§^!Q§(param1.indexA[0]);
            _loc9_ = this.§ d§.§^!Q§(param1.indexA[1]);
            _loc10_ = this.§2e§.§^!Q§(param1.indexB[0]);
            this.m_localPoint.x = 0.5 * (_loc8_.x + _loc9_.x);
            this.m_localPoint.y = 0.5 * (_loc8_.y + _loc9_.y);
            this.§6!5§ = b2Math.§>!Y§(b2Math.§12§(_loc9_,_loc8_),1);
            this.§6!5§.Normalize();
            _loc20_ = this.§6!5§;
            _loc17_ = (_loc19_ = param3.R).col1.x * _loc20_.x + _loc19_.col2.x * _loc20_.y;
            _loc18_ = _loc19_.col1.y * _loc20_.x + _loc19_.col2.y * _loc20_.y;
            _loc20_ = this.m_localPoint;
            _loc19_ = param3.R;
            _loc13_ = param3.position.x + (_loc19_.col1.x * _loc20_.x + _loc19_.col2.x * _loc20_.y);
            _loc14_ = param3.position.y + (_loc19_.col1.y * _loc20_.x + _loc19_.col2.y * _loc20_.y);
            _loc20_ = _loc10_;
            _loc19_ = param5.R;
            _loc15_ = param5.position.x + (_loc19_.col1.x * _loc20_.x + _loc19_.col2.x * _loc20_.y);
            _loc16_ = param5.position.y + (_loc19_.col1.y * _loc20_.x + _loc19_.col2.y * _loc20_.y);
            if((_loc21_ = (_loc15_ - _loc13_) * _loc17_ + (_loc16_ - _loc14_) * _loc18_) < 0)
            {
               this.§6!5§.§=c§();
            }
         }
         else if(param1.indexA[0] == param1.indexA[0])
         {
            this.§@9§ = §6"§;
            _loc11_ = this.§2e§.§^!Q§(param1.indexB[0]);
            _loc12_ = this.§2e§.§^!Q§(param1.indexB[1]);
            _loc7_ = this.§ d§.§^!Q§(param1.indexA[0]);
            this.m_localPoint.x = 0.5 * (_loc11_.x + _loc12_.x);
            this.m_localPoint.y = 0.5 * (_loc11_.y + _loc12_.y);
            this.§6!5§ = b2Math.§>!Y§(b2Math.§12§(_loc12_,_loc11_),1);
            this.§6!5§.Normalize();
            _loc20_ = this.§6!5§;
            _loc17_ = (_loc19_ = param5.R).col1.x * _loc20_.x + _loc19_.col2.x * _loc20_.y;
            _loc18_ = _loc19_.col1.y * _loc20_.x + _loc19_.col2.y * _loc20_.y;
            _loc20_ = this.m_localPoint;
            _loc19_ = param5.R;
            _loc15_ = param5.position.x + (_loc19_.col1.x * _loc20_.x + _loc19_.col2.x * _loc20_.y);
            _loc16_ = param5.position.y + (_loc19_.col1.y * _loc20_.x + _loc19_.col2.y * _loc20_.y);
            _loc20_ = _loc7_;
            _loc19_ = param3.R;
            _loc13_ = param3.position.x + (_loc19_.col1.x * _loc20_.x + _loc19_.col2.x * _loc20_.y);
            _loc14_ = param3.position.y + (_loc19_.col1.y * _loc20_.x + _loc19_.col2.y * _loc20_.y);
            if((_loc21_ = (_loc13_ - _loc15_) * _loc17_ + (_loc14_ - _loc16_) * _loc18_) < 0)
            {
               this.§6!5§.§=c§();
            }
         }
         else
         {
            _loc8_ = this.§ d§.§^!Q§(param1.indexA[0]);
            _loc9_ = this.§ d§.§^!Q§(param1.indexA[1]);
            _loc11_ = this.§2e§.§^!Q§(param1.indexB[0]);
            _loc12_ = this.§2e§.§^!Q§(param1.indexB[1]);
            _loc23_ = b2Math.§+Z§(param3,_loc7_);
            _loc24_ = b2Math.§7U§(param3.R,b2Math.§12§(_loc9_,_loc8_));
            _loc25_ = b2Math.§+Z§(param5,_loc10_);
            _loc26_ = b2Math.§7U§(param5.R,b2Math.§12§(_loc12_,_loc11_));
            _loc27_ = _loc24_.x * _loc24_.x + _loc24_.y * _loc24_.y;
            _loc28_ = _loc26_.x * _loc26_.x + _loc26_.y * _loc26_.y;
            _loc29_ = b2Math.§12§(_loc26_,_loc24_);
            _loc30_ = _loc24_.x * _loc29_.x + _loc24_.y * _loc29_.y;
            _loc31_ = _loc26_.x * _loc29_.x + _loc26_.y * _loc29_.y;
            _loc32_ = _loc24_.x * _loc26_.x + _loc24_.y * _loc26_.y;
            _loc33_ = _loc27_ * _loc28_ - _loc32_ * _loc32_;
            _loc21_ = 0;
            if(_loc33_ != 0)
            {
               _loc21_ = b2Math.§,W§((_loc32_ * _loc31_ - _loc30_ * _loc28_) / _loc33_,0,1);
            }
            if((_loc34_ = (_loc32_ * _loc21_ + _loc31_) / _loc28_) < 0)
            {
               _loc34_ = 0;
               _loc21_ = b2Math.§,W§((_loc32_ - _loc30_) / _loc27_,0,1);
            }
            (_loc7_ = new b2Vec2()).x = _loc8_.x + _loc21_ * (_loc9_.x - _loc8_.x);
            _loc7_.y = _loc8_.y + _loc21_ * (_loc9_.y - _loc8_.y);
            (_loc10_ = new b2Vec2()).x = _loc11_.x + _loc21_ * (_loc12_.x - _loc11_.x);
            _loc10_.y = _loc11_.y + _loc21_ * (_loc12_.y - _loc11_.y);
            if(_loc21_ == 0 || _loc21_ == 1)
            {
               this.§@9§ = §6"§;
               this.§6!5§ = b2Math.§>!Y§(b2Math.§12§(_loc12_,_loc11_),1);
               this.§6!5§.Normalize();
               this.m_localPoint = _loc10_;
               _loc20_ = this.§6!5§;
               _loc17_ = (_loc19_ = param5.R).col1.x * _loc20_.x + _loc19_.col2.x * _loc20_.y;
               _loc18_ = _loc19_.col1.y * _loc20_.x + _loc19_.col2.y * _loc20_.y;
               _loc20_ = this.m_localPoint;
               _loc19_ = param5.R;
               _loc15_ = param5.position.x + (_loc19_.col1.x * _loc20_.x + _loc19_.col2.x * _loc20_.y);
               _loc16_ = param5.position.y + (_loc19_.col1.y * _loc20_.x + _loc19_.col2.y * _loc20_.y);
               _loc20_ = _loc7_;
               _loc19_ = param3.R;
               _loc13_ = param3.position.x + (_loc19_.col1.x * _loc20_.x + _loc19_.col2.x * _loc20_.y);
               _loc14_ = param3.position.y + (_loc19_.col1.y * _loc20_.x + _loc19_.col2.y * _loc20_.y);
               _loc22_ = (_loc13_ - _loc15_) * _loc17_ + (_loc14_ - _loc16_) * _loc18_;
               if(_loc21_ < 0)
               {
                  this.§6!5§.§=c§();
               }
            }
            else
            {
               this.§@9§ = §;!-§;
               this.§6!5§ = b2Math.§>!Y§(b2Math.§12§(_loc9_,_loc8_),1);
               this.m_localPoint = _loc7_;
               _loc20_ = this.§6!5§;
               _loc17_ = (_loc19_ = param3.R).col1.x * _loc20_.x + _loc19_.col2.x * _loc20_.y;
               _loc18_ = _loc19_.col1.y * _loc20_.x + _loc19_.col2.y * _loc20_.y;
               _loc20_ = this.m_localPoint;
               _loc19_ = param3.R;
               _loc13_ = param3.position.x + (_loc19_.col1.x * _loc20_.x + _loc19_.col2.x * _loc20_.y);
               _loc14_ = param3.position.y + (_loc19_.col1.y * _loc20_.x + _loc19_.col2.y * _loc20_.y);
               _loc20_ = _loc10_;
               _loc19_ = param5.R;
               _loc15_ = param5.position.x + (_loc19_.col1.x * _loc20_.x + _loc19_.col2.x * _loc20_.y);
               _loc16_ = param5.position.y + (_loc19_.col1.y * _loc20_.x + _loc19_.col2.y * _loc20_.y);
               _loc22_ = (_loc15_ - _loc13_) * _loc17_ + (_loc16_ - _loc14_) * _loc18_;
               if(_loc21_ < 0)
               {
                  this.§6!5§.§=c§();
               }
            }
         }
      }
      
      public function Evaluate(param1:b2Transform, param2:b2Transform) : Number
      {
         var _loc3_:b2Vec2 = null;
         var _loc4_:b2Vec2 = null;
         var _loc5_:b2Vec2 = null;
         var _loc6_:b2Vec2 = null;
         var _loc7_:b2Vec2 = null;
         var _loc8_:b2Vec2 = null;
         var _loc9_:Number = NaN;
         var _loc10_:b2Vec2 = null;
         switch(this.§@9§)
         {
            case §>!§:
               _loc3_ = b2Math.§=!I§(param1.R,this.§6!5§);
               _loc4_ = b2Math.§=!I§(param2.R,this.§6!5§.§"!H§());
               _loc5_ = this.§ d§.§^!0§(_loc3_);
               _loc6_ = this.§2e§.§^!0§(_loc4_);
               _loc7_ = b2Math.§+Z§(param1,_loc5_);
               return Number(((_loc8_ = b2Math.§+Z§(param2,_loc6_)).x - _loc7_.x) * this.§6!5§.x + (_loc8_.y - _loc7_.y) * this.§6!5§.y);
            case §;!-§:
               _loc10_ = b2Math.§7U§(param1.R,this.§6!5§);
               _loc7_ = b2Math.§+Z§(param1,this.m_localPoint);
               _loc4_ = b2Math.§=!I§(param2.R,_loc10_.§"!H§());
               _loc6_ = this.§2e§.§^!0§(_loc4_);
               return Number(((_loc8_ = b2Math.§+Z§(param2,_loc6_)).x - _loc7_.x) * _loc10_.x + (_loc8_.y - _loc7_.y) * _loc10_.y);
            case §6"§:
               _loc10_ = b2Math.§7U§(param2.R,this.§6!5§);
               _loc8_ = b2Math.§+Z§(param2,this.m_localPoint);
               _loc3_ = b2Math.§=!I§(param1.R,_loc10_.§"!H§());
               _loc5_ = this.§ d§.§^!0§(_loc3_);
               return Number(((_loc7_ = b2Math.§+Z§(param1,_loc5_)).x - _loc8_.x) * _loc10_.x + (_loc7_.y - _loc8_.y) * _loc10_.y);
            default:
               b2Settings.b2Assert(false);
               return 0;
         }
      }
   }
}
