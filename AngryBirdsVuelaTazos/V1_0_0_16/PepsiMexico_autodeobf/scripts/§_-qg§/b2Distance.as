package §_-qg§
{
   import §_-Ja§.*;
   import §_-Kt§.*;
   import §_-lh§.*;
   
   use namespace b2internal;
   
   public class b2Distance
   {
      
      private static var b2_gjkCalls:int;
      
      private static var b2_gjkIters:int;
      
      private static var b2_gjkMaxIters:int;
      
      private static var §_-BI§:b2Simplex = new b2Simplex();
      
      private static var §_-4X§:Vector.<int> = new Vector.<int>(3);
      
      private static var §_-Pf§:Vector.<int> = new Vector.<int>(3);
       
      
      public function b2Distance()
      {
         super();
      }
      
      public static function §_-PT§(param1:b2DistanceOutput, param2:b2SimplexCache, param3:b2DistanceInput) : void
      {
         var _loc17_:int = 0;
         var _loc18_:b2Vec2 = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2SimplexVertex = null;
         var _loc22_:Boolean = false;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:b2Vec2 = null;
         ++b2_gjkCalls;
         var _loc4_:b2DistanceProxy = param3.§ do§;
         var _loc5_:b2DistanceProxy = param3.§_-q9§;
         var _loc6_:b2Transform = param3.§_-Yf§;
         var _loc7_:b2Transform = param3.§_-gD§;
         var _loc8_:b2Simplex;
         (_loc8_ = §_-BI§).§_-B3§(param2,_loc4_,_loc6_,_loc5_,_loc7_);
         var _loc9_:Vector.<b2SimplexVertex> = _loc8_.§_-Ui§;
         var _loc11_:Vector.<int> = §_-4X§;
         var _loc12_:Vector.<int> = §_-Pf§;
         var _loc13_:int = 0;
         var _loc15_:Number;
         var _loc14_:b2Vec2;
         var _loc16_:Number = _loc15_ = (_loc14_ = _loc8_.§_-5s§()).§_-Un§();
         var _loc19_:int = 0;
         while(_loc19_ < 20)
         {
            _loc13_ = _loc8_.§_-01§;
            _loc17_ = 0;
            while(_loc17_ < _loc13_)
            {
               _loc11_[_loc17_] = _loc9_[_loc17_].indexA;
               _loc12_[_loc17_] = _loc9_[_loc17_].indexB;
               _loc17_++;
            }
            switch(_loc8_.§_-01§)
            {
               case 1:
                  break;
               case 2:
                  _loc8_.Solve2();
                  break;
               case 3:
                  _loc8_.Solve3();
                  break;
               default:
                  b2Settings.b2Assert(false);
            }
            if(_loc8_.§_-01§ == 3)
            {
               break;
            }
            if((_loc16_ = (_loc18_ = _loc8_.§_-5s§()).§_-Un§()) > _loc15_)
            {
            }
            _loc15_ = _loc16_;
            if((_loc20_ = _loc8_.§_-f2§()).§_-Un§() < Number.MIN_VALUE * Number.MIN_VALUE)
            {
               break;
            }
            (_loc21_ = _loc9_[_loc8_.§_-01§]).indexA = _loc4_.§_-xy§(b2Math.§_-P4§(_loc6_.R,_loc20_.§_-D§()));
            _loc21_.§_-s3§ = b2Math.§_-Y9§(_loc6_,_loc4_.§_-Su§(_loc21_.indexA));
            _loc21_.indexB = _loc5_.§_-xy§(b2Math.§_-P4§(_loc7_.R,_loc20_));
            _loc21_.§_-yk§ = b2Math.§_-Y9§(_loc7_,_loc5_.§_-Su§(_loc21_.indexB));
            _loc21_.§_-ah§ = b2Math.§_-TD§(_loc21_.§_-yk§,_loc21_.§_-s3§);
            _loc19_++;
            ++b2_gjkIters;
            _loc22_ = false;
            _loc17_ = 0;
            while(_loc17_ < _loc13_)
            {
               if(_loc21_.indexA == _loc11_[_loc17_] && _loc21_.indexB == _loc12_[_loc17_])
               {
                  _loc22_ = true;
                  break;
               }
               _loc17_++;
            }
            if(_loc22_)
            {
               break;
            }
            ++_loc8_.§_-01§;
         }
         b2_gjkMaxIters = b2Math.§_-YD§(b2_gjkMaxIters,_loc19_);
         _loc8_.§_-LS§(param1.§_-Eg§,param1.§_-R1§);
         param1.§_-fF§ = b2Math.§_-TD§(param1.§_-Eg§,param1.§_-R1§).§_-dP§();
         param1.§_-Kj§ = _loc19_;
         _loc8_.§_-rB§(param2);
         if(param3.§_-X4§)
         {
            _loc23_ = _loc4_.§_-Q2§;
            _loc24_ = _loc5_.§_-Q2§;
            if(param1.§_-fF§ > _loc23_ + _loc24_ && param1.§_-fF§ > Number.MIN_VALUE)
            {
               param1.§_-fF§ -= _loc23_ + _loc24_;
               (_loc25_ = b2Math.§_-TD§(param1.§_-R1§,param1.§_-Eg§)).Normalize();
               param1.§_-Eg§.x += _loc23_ * _loc25_.x;
               param1.§_-Eg§.y += _loc23_ * _loc25_.y;
               param1.§_-R1§.x -= _loc24_ * _loc25_.x;
               param1.§_-R1§.y -= _loc24_ * _loc25_.y;
            }
            else
            {
               (_loc18_ = new b2Vec2()).x = 0.5 * (param1.§_-Eg§.x + param1.§_-R1§.x);
               _loc18_.y = 0.5 * (param1.§_-Eg§.y + param1.§_-R1§.y);
               param1.§_-Eg§.x = param1.§_-R1§.x = _loc18_.x;
               param1.§_-Eg§.y = param1.§_-R1§.y = _loc18_.y;
               param1.§_-fF§ = 0;
            }
         }
      }
   }
}
