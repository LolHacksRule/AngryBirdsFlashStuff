package §_-Et§
{
   import §_-I2§.*;
   import §_-Zl§.*;
   import §_-uS§.*;
   
   use namespace b2internal;
   
   public class b2Distance
   {
      
      private static var b2_gjkCalls:int;
      
      private static var b2_gjkIters:int;
      
      private static var b2_gjkMaxIters:int;
      
      private static var §_-ny§:b2Simplex = new b2Simplex();
      
      private static var §_-oc§:Vector.<int> = new Vector.<int>(3);
      
      private static var §_-a7§:Vector.<int> = new Vector.<int>(3);
       
      
      public function b2Distance()
      {
         super();
      }
      
      public static function §_-NY§(param1:b2DistanceOutput, param2:b2SimplexCache, param3:b2DistanceInput) : void
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
         var _loc4_:b2DistanceProxy = param3.§_-LU§;
         var _loc5_:b2DistanceProxy = param3.§_-5K§;
         var _loc6_:b2Transform = param3.§_-rZ§;
         var _loc7_:b2Transform = param3.§_-QV§;
         var _loc8_:b2Simplex;
         (_loc8_ = §_-ny§).§_-G-§(param2,_loc4_,_loc6_,_loc5_,_loc7_);
         var _loc9_:Vector.<b2SimplexVertex> = _loc8_.§_-3A§;
         var _loc11_:Vector.<int> = §_-oc§;
         var _loc12_:Vector.<int> = §_-a7§;
         var _loc13_:int = 0;
         var _loc15_:Number;
         var _loc14_:b2Vec2;
         var _loc16_:Number = _loc15_ = (_loc14_ = _loc8_.§_-lu§()).§_-QN§();
         var _loc19_:int = 0;
         while(_loc19_ < 20)
         {
            _loc13_ = _loc8_.§_-No§;
            _loc17_ = 0;
            while(_loc17_ < _loc13_)
            {
               _loc11_[_loc17_] = _loc9_[_loc17_].indexA;
               _loc12_[_loc17_] = _loc9_[_loc17_].indexB;
               _loc17_++;
            }
            switch(_loc8_.§_-No§)
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
            if(_loc8_.§_-No§ == 3)
            {
               break;
            }
            if((_loc16_ = (_loc18_ = _loc8_.§_-lu§()).§_-QN§()) > _loc15_)
            {
            }
            _loc15_ = _loc16_;
            if((_loc20_ = _loc8_.§_-ZA§()).§_-QN§() < Number.MIN_VALUE * Number.MIN_VALUE)
            {
               break;
            }
            (_loc21_ = _loc9_[_loc8_.§_-No§]).indexA = _loc4_.§_-BW§(b2Math.§_-vG§(_loc6_.R,_loc20_.§_-Jt§()));
            _loc21_.§_-03§ = b2Math.§_-Oi§(_loc6_,_loc4_.§_-L3§(_loc21_.indexA));
            _loc21_.indexB = _loc5_.§_-BW§(b2Math.§_-vG§(_loc7_.R,_loc20_));
            _loc21_.§_-8U§ = b2Math.§_-Oi§(_loc7_,_loc5_.§_-L3§(_loc21_.indexB));
            _loc21_.§_-et§ = b2Math.§_-Fu§(_loc21_.§_-8U§,_loc21_.§_-03§);
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
            ++_loc8_.§_-No§;
         }
         b2_gjkMaxIters = b2Math.§_-Gj§(b2_gjkMaxIters,_loc19_);
         _loc8_.§_-Cv§(param1.§_-V3§,param1.§_-xQ§);
         param1.§_-WE§ = b2Math.§_-Fu§(param1.§_-V3§,param1.§_-xQ§).§_-pM§();
         param1.§_-iG§ = _loc19_;
         _loc8_.§_-ha§(param2);
         if(param3.§_-Yp§)
         {
            _loc23_ = _loc4_.§_-Bn§;
            _loc24_ = _loc5_.§_-Bn§;
            if(param1.§_-WE§ > _loc23_ + _loc24_ && param1.§_-WE§ > Number.MIN_VALUE)
            {
               param1.§_-WE§ -= _loc23_ + _loc24_;
               (_loc25_ = b2Math.§_-Fu§(param1.§_-xQ§,param1.§_-V3§)).Normalize();
               param1.§_-V3§.x += _loc23_ * _loc25_.x;
               param1.§_-V3§.y += _loc23_ * _loc25_.y;
               param1.§_-xQ§.x -= _loc24_ * _loc25_.x;
               param1.§_-xQ§.y -= _loc24_ * _loc25_.y;
            }
            else
            {
               (_loc18_ = new b2Vec2()).x = 0.5 * (param1.§_-V3§.x + param1.§_-xQ§.x);
               _loc18_.y = 0.5 * (param1.§_-V3§.y + param1.§_-xQ§.y);
               param1.§_-V3§.x = param1.§_-xQ§.x = _loc18_.x;
               param1.§_-V3§.y = param1.§_-xQ§.y = _loc18_.y;
               param1.§_-WE§ = 0;
            }
         }
      }
   }
}
