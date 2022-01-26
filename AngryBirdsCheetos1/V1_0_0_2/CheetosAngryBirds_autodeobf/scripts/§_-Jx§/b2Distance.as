package §_-Jx§
{
   import § if§.*;
   import §_-F2§.*;
   import §_-d6§.*;
   
   use namespace b2internal;
   
   public class b2Distance
   {
      
      private static var b2_gjkCalls:int;
      
      private static var b2_gjkIters:int;
      
      private static var b2_gjkMaxIters:int;
      
      private static var §_-Fx§:b2Simplex = new b2Simplex();
      
      private static var §_-64§:Vector.<int> = new Vector.<int>(3);
      
      private static var §case §:Vector.<int> = new Vector.<int>(3);
       
      
      public function b2Distance()
      {
         super();
      }
      
      public static function §_-NX§(param1:b2DistanceOutput, param2:b2SimplexCache, param3:b2DistanceInput) : void
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
         var _loc4_:b2DistanceProxy = param3.§_-WA§;
         var _loc5_:b2DistanceProxy = param3.§_-tr§;
         var _loc6_:b2Transform = param3.§_-dP§;
         var _loc7_:b2Transform = param3.§_-af§;
         var _loc8_:b2Simplex;
         (_loc8_ = §_-Fx§).§_-f2§(param2,_loc4_,_loc6_,_loc5_,_loc7_);
         var _loc9_:Vector.<b2SimplexVertex> = _loc8_.§_-0F§;
         var _loc11_:Vector.<int> = §_-64§;
         var _loc12_:Vector.<int> = §case §;
         var _loc13_:int = 0;
         var _loc15_:Number;
         var _loc14_:b2Vec2;
         var _loc16_:Number = _loc15_ = (_loc14_ = _loc8_.§_-x9§()).§_-V4§();
         var _loc19_:int = 0;
         while(_loc19_ < 20)
         {
            _loc13_ = _loc8_.§_-yf§;
            _loc17_ = 0;
            while(_loc17_ < _loc13_)
            {
               _loc11_[_loc17_] = _loc9_[_loc17_].indexA;
               _loc12_[_loc17_] = _loc9_[_loc17_].indexB;
               _loc17_++;
            }
            switch(_loc8_.§_-yf§)
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
            if(_loc8_.§_-yf§ == 3)
            {
               break;
            }
            if((_loc16_ = (_loc18_ = _loc8_.§_-x9§()).§_-V4§()) > _loc15_)
            {
            }
            _loc15_ = _loc16_;
            if((_loc20_ = _loc8_.§_-2h§()).§_-V4§() < Number.MIN_VALUE * Number.MIN_VALUE)
            {
               break;
            }
            (_loc21_ = _loc9_[_loc8_.§_-yf§]).indexA = _loc4_.§_-EM§(b2Math.§_-NJ§(_loc6_.R,_loc20_.§_-AB§()));
            _loc21_.§_-rz§ = b2Math.§_-is§(_loc6_,_loc4_.§_-p5§(_loc21_.indexA));
            _loc21_.indexB = _loc5_.§_-EM§(b2Math.§_-NJ§(_loc7_.R,_loc20_));
            _loc21_.§_-ZN§ = b2Math.§_-is§(_loc7_,_loc5_.§_-p5§(_loc21_.indexB));
            _loc21_.§_-Yr§ = b2Math.§_-Pq§(_loc21_.§_-ZN§,_loc21_.§_-rz§);
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
            ++_loc8_.§_-yf§;
         }
         b2_gjkMaxIters = b2Math.§_-xk§(b2_gjkMaxIters,_loc19_);
         _loc8_.§_-IY§(param1.§_-x6§,param1.§_-tu§);
         param1.include = b2Math.§_-Pq§(param1.§_-x6§,param1.§_-tu§).§_-kd§();
         param1.§_-ac§ = _loc19_;
         _loc8_.§_-g-§(param2);
         if(param3.§_-pF§)
         {
            _loc23_ = _loc4_.§_-KL§;
            _loc24_ = _loc5_.§_-KL§;
            if(param1.include > _loc23_ + _loc24_ && param1.include > Number.MIN_VALUE)
            {
               param1.include -= _loc23_ + _loc24_;
               (_loc25_ = b2Math.§_-Pq§(param1.§_-tu§,param1.§_-x6§)).Normalize();
               param1.§_-x6§.x += _loc23_ * _loc25_.x;
               param1.§_-x6§.y += _loc23_ * _loc25_.y;
               param1.§_-tu§.x -= _loc24_ * _loc25_.x;
               param1.§_-tu§.y -= _loc24_ * _loc25_.y;
            }
            else
            {
               (_loc18_ = new b2Vec2()).x = 0.5 * (param1.§_-x6§.x + param1.§_-tu§.x);
               _loc18_.y = 0.5 * (param1.§_-x6§.y + param1.§_-tu§.y);
               param1.§_-x6§.x = param1.§_-tu§.x = _loc18_.x;
               param1.§_-x6§.y = param1.§_-tu§.y = _loc18_.y;
               param1.include = 0;
            }
         }
      }
   }
}
