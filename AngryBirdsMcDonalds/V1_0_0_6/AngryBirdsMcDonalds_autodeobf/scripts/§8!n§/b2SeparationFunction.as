package §8!n§
{
   import §7!Y§.b2Settings;
   import §@![§.b2Mat22;
   import §@![§.b2Math;
   import §@![§.b2Transform;
   import §@![§.b2Vec2;
   
   class b2SeparationFunction
   {
      
      public static const §3m§:int = 1;
      
      public static const §?!Z§:int = 2;
      
      public static const §][§:int = 4;
       
      
      public var §]!f§:b2DistanceProxy;
      
      public var §7y§:b2DistanceProxy;
      
      public var §3l§:int;
      
      public var m_localPoint:b2Vec2;
      
      public var §+!R§:b2Vec2;
      
      function b2SeparationFunction()
      {
         this.m_localPoint = new b2Vec2();
         this.§+!R§ = new b2Vec2();
         super();
      }
      
      public function §1!O§(param1:b2SimplexCache, param2:b2DistanceProxy, param3:b2Transform, param4:b2DistanceProxy, param5:b2Transform) : void
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
         this.§]!f§ = param2;
         this.§7y§ = param4;
         var _loc6_:int = param1.count;
         b2Settings.b2Assert(0 < _loc6_ && _loc6_ < 3);
         if(_loc6_ == 1)
         {
            this.§3l§ = §3m§;
            _loc7_ = this.§]!f§.§ L§(param1.indexA[0]);
            _loc10_ = this.§7y§.§ L§(param1.indexB[0]);
            _loc20_ = _loc7_;
            _loc19_ = param3.R;
            _loc13_ = param3.position.x + (_loc19_.col1.x * _loc20_.x + _loc19_.col2.x * _loc20_.y);
            _loc14_ = param3.position.y + (_loc19_.col1.y * _loc20_.x + _loc19_.col2.y * _loc20_.y);
            _loc20_ = _loc10_;
            _loc19_ = param5.R;
            _loc15_ = param5.position.x + (_loc19_.col1.x * _loc20_.x + _loc19_.col2.x * _loc20_.y);
            _loc16_ = param5.position.y + (_loc19_.col1.y * _loc20_.x + _loc19_.col2.y * _loc20_.y);
            this.§+!R§.x = _loc15_ - _loc13_;
            this.§+!R§.y = _loc16_ - _loc14_;
            this.§+!R§.Normalize();
         }
         else if(param1.indexB[0] == param1.indexB[1])
         {
            this.§3l§ = §?!Z§;
            _loc8_ = this.§]!f§.§ L§(param1.indexA[0]);
            _loc9_ = this.§]!f§.§ L§(param1.indexA[1]);
            _loc10_ = this.§7y§.§ L§(param1.indexB[0]);
            this.m_localPoint.x = 0.5 * (_loc8_.x + _loc9_.x);
            this.m_localPoint.y = 0.5 * (_loc8_.y + _loc9_.y);
            this.§+!R§ = b2Math.§>!J§(b2Math.§'u§(_loc9_,_loc8_),1);
            this.§+!R§.Normalize();
            _loc20_ = this.§+!R§;
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
               this.§+!R§.§^!5§();
            }
         }
         else if(param1.indexA[0] == param1.indexA[0])
         {
            this.§3l§ = §][§;
            _loc11_ = this.§7y§.§ L§(param1.indexB[0]);
            _loc12_ = this.§7y§.§ L§(param1.indexB[1]);
            _loc7_ = this.§]!f§.§ L§(param1.indexA[0]);
            this.m_localPoint.x = 0.5 * (_loc11_.x + _loc12_.x);
            this.m_localPoint.y = 0.5 * (_loc11_.y + _loc12_.y);
            this.§+!R§ = b2Math.§>!J§(b2Math.§'u§(_loc12_,_loc11_),1);
            this.§+!R§.Normalize();
            _loc20_ = this.§+!R§;
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
               this.§+!R§.§^!5§();
            }
         }
         else
         {
            _loc8_ = this.§]!f§.§ L§(param1.indexA[0]);
            _loc9_ = this.§]!f§.§ L§(param1.indexA[1]);
            _loc11_ = this.§7y§.§ L§(param1.indexB[0]);
            _loc12_ = this.§7y§.§ L§(param1.indexB[1]);
            _loc23_ = b2Math.§+!W§(param3,_loc7_);
            _loc24_ = b2Math.§&U§(param3.R,b2Math.§'u§(_loc9_,_loc8_));
            _loc25_ = b2Math.§+!W§(param5,_loc10_);
            _loc26_ = b2Math.§&U§(param5.R,b2Math.§'u§(_loc12_,_loc11_));
            _loc27_ = _loc24_.x * _loc24_.x + _loc24_.y * _loc24_.y;
            _loc28_ = _loc26_.x * _loc26_.x + _loc26_.y * _loc26_.y;
            _loc29_ = b2Math.§'u§(_loc26_,_loc24_);
            _loc30_ = _loc24_.x * _loc29_.x + _loc24_.y * _loc29_.y;
            _loc31_ = _loc26_.x * _loc29_.x + _loc26_.y * _loc29_.y;
            _loc32_ = _loc24_.x * _loc26_.x + _loc24_.y * _loc26_.y;
            _loc33_ = _loc27_ * _loc28_ - _loc32_ * _loc32_;
            _loc21_ = 0;
            if(_loc33_ != 0)
            {
               _loc21_ = b2Math.§1!P§((_loc32_ * _loc31_ - _loc30_ * _loc28_) / _loc33_,0,1);
            }
            if((_loc34_ = (_loc32_ * _loc21_ + _loc31_) / _loc28_) < 0)
            {
               _loc34_ = 0;
               _loc21_ = b2Math.§1!P§((_loc32_ - _loc30_) / _loc27_,0,1);
            }
            (_loc7_ = new b2Vec2()).x = _loc8_.x + _loc21_ * (_loc9_.x - _loc8_.x);
            _loc7_.y = _loc8_.y + _loc21_ * (_loc9_.y - _loc8_.y);
            (_loc10_ = new b2Vec2()).x = _loc11_.x + _loc21_ * (_loc12_.x - _loc11_.x);
            _loc10_.y = _loc11_.y + _loc21_ * (_loc12_.y - _loc11_.y);
            if(_loc21_ == 0 || _loc21_ == 1)
            {
               this.§3l§ = §][§;
               this.§+!R§ = b2Math.§>!J§(b2Math.§'u§(_loc12_,_loc11_),1);
               this.§+!R§.Normalize();
               this.m_localPoint = _loc10_;
               _loc20_ = this.§+!R§;
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
                  this.§+!R§.§^!5§();
               }
            }
            else
            {
               this.§3l§ = §?!Z§;
               this.§+!R§ = b2Math.§>!J§(b2Math.§'u§(_loc9_,_loc8_),1);
               this.m_localPoint = _loc7_;
               _loc20_ = this.§+!R§;
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
                  this.§+!R§.§^!5§();
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
         switch(this.§3l§)
         {
            case §3m§:
               _loc3_ = b2Math.§5!_§(param1.R,this.§+!R§);
               _loc4_ = b2Math.§5!_§(param2.R,this.§+!R§.§!G§());
               _loc5_ = this.§]!f§.§7!"§(_loc3_);
               _loc6_ = this.§7y§.§7!"§(_loc4_);
               _loc7_ = b2Math.§+!W§(param1,_loc5_);
               return Number(((_loc8_ = b2Math.§+!W§(param2,_loc6_)).x - _loc7_.x) * this.§+!R§.x + (_loc8_.y - _loc7_.y) * this.§+!R§.y);
            case §?!Z§:
               _loc10_ = b2Math.§&U§(param1.R,this.§+!R§);
               _loc7_ = b2Math.§+!W§(param1,this.m_localPoint);
               _loc4_ = b2Math.§5!_§(param2.R,_loc10_.§!G§());
               _loc6_ = this.§7y§.§7!"§(_loc4_);
               return Number(((_loc8_ = b2Math.§+!W§(param2,_loc6_)).x - _loc7_.x) * _loc10_.x + (_loc8_.y - _loc7_.y) * _loc10_.y);
            case §][§:
               _loc10_ = b2Math.§&U§(param2.R,this.§+!R§);
               _loc8_ = b2Math.§+!W§(param2,this.m_localPoint);
               _loc3_ = b2Math.§5!_§(param1.R,_loc10_.§!G§());
               _loc5_ = this.§]!f§.§7!"§(_loc3_);
               return Number(((_loc7_ = b2Math.§+!W§(param1,_loc5_)).x - _loc8_.x) * _loc10_.x + (_loc7_.y - _loc8_.y) * _loc10_.y);
            default:
               b2Settings.b2Assert(false);
               return 0;
         }
      }
   }
}
