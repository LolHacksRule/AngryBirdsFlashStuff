package §_-mg§
{
   import §_-Pu§.*;
   import §_-bA§.*;
   import §_-rz§.*;
   
   use namespace b2internal;
   
   public class b2Distance
   {
      
      private static var b2_gjkCalls:int;
      
      private static var b2_gjkIters:int;
      
      private static var b2_gjkMaxIters:int;
      
      private static var §_-pM§:b2Simplex = new b2Simplex();
      
      private static var §_-n5§:Vector.<int> = new Vector.<int>(3);
      
      private static var §_-SX§:Vector.<int> = new Vector.<int>(3);
       
      
      public function b2Distance()
      {
         super();
      }
      
      public static function §_-6z§(param1:b2DistanceOutput, param2:b2SimplexCache, param3:b2DistanceInput) : void
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
         var _loc4_:b2DistanceProxy = param3.§_-tt§;
         var _loc5_:b2DistanceProxy = param3.§_-co§;
         var _loc6_:b2Transform = param3.§_-P1§;
         var _loc7_:b2Transform = param3.§_-nO§;
         var _loc8_:b2Simplex;
         (_loc8_ = §_-pM§).§_-uM§(param2,_loc4_,_loc6_,_loc5_,_loc7_);
         var _loc9_:Vector.<b2SimplexVertex> = _loc8_.§_-4p§;
         var _loc11_:Vector.<int> = §_-n5§;
         var _loc12_:Vector.<int> = §_-SX§;
         var _loc13_:int = 0;
         var _loc15_:Number;
         var _loc14_:b2Vec2;
         var _loc16_:Number = _loc15_ = (_loc14_ = _loc8_.§_-zx§()).§_-vz§();
         var _loc19_:int = 0;
         while(_loc19_ < 20)
         {
            _loc13_ = _loc8_.§_-0m§;
            _loc17_ = 0;
            while(_loc17_ < _loc13_)
            {
               _loc11_[_loc17_] = _loc9_[_loc17_].indexA;
               _loc12_[_loc17_] = _loc9_[_loc17_].indexB;
               _loc17_++;
            }
            switch(_loc8_.§_-0m§)
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
            if(_loc8_.§_-0m§ == 3)
            {
               break;
            }
            if((_loc16_ = (_loc18_ = _loc8_.§_-zx§()).§_-vz§()) > _loc15_)
            {
            }
            _loc15_ = _loc16_;
            if((_loc20_ = _loc8_.§_-ud§()).§_-vz§() < Number.MIN_VALUE * Number.MIN_VALUE)
            {
               break;
            }
            (_loc21_ = _loc9_[_loc8_.§_-0m§]).indexA = _loc4_.§_-0F§(b2Math.§_-D1§(_loc6_.R,_loc20_.§_-ja§()));
            _loc21_.§_-Wl§ = b2Math.§_-av§(_loc6_,_loc4_.§_-rZ§(_loc21_.indexA));
            _loc21_.indexB = _loc5_.§_-0F§(b2Math.§_-D1§(_loc7_.R,_loc20_));
            _loc21_.§_-9n§ = b2Math.§_-av§(_loc7_,_loc5_.§_-rZ§(_loc21_.indexB));
            _loc21_.§_-4M§ = b2Math.§_-2E§(_loc21_.§_-9n§,_loc21_.§_-Wl§);
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
            ++_loc8_.§_-0m§;
         }
         b2_gjkMaxIters = b2Math.§_-44§(b2_gjkMaxIters,_loc19_);
         _loc8_.§_-kc§(param1.§_-SH§,param1.§_-X4§);
         param1.§_-nV§ = b2Math.§_-2E§(param1.§_-SH§,param1.§_-X4§).§_-vp§();
         param1.§_-5W§ = _loc19_;
         _loc8_.§_-M3§(param2);
         if(param3.§_-XZ§)
         {
            _loc23_ = _loc4_.§_-Cv§;
            _loc24_ = _loc5_.§_-Cv§;
            if(param1.§_-nV§ > _loc23_ + _loc24_ && param1.§_-nV§ > Number.MIN_VALUE)
            {
               param1.§_-nV§ -= _loc23_ + _loc24_;
               (_loc25_ = b2Math.§_-2E§(param1.§_-X4§,param1.§_-SH§)).Normalize();
               param1.§_-SH§.x += _loc23_ * _loc25_.x;
               param1.§_-SH§.y += _loc23_ * _loc25_.y;
               param1.§_-X4§.x -= _loc24_ * _loc25_.x;
               param1.§_-X4§.y -= _loc24_ * _loc25_.y;
            }
            else
            {
               (_loc18_ = new b2Vec2()).x = 0.5 * (param1.§_-SH§.x + param1.§_-X4§.x);
               _loc18_.y = 0.5 * (param1.§_-SH§.y + param1.§_-X4§.y);
               param1.§_-SH§.x = param1.§_-X4§.x = _loc18_.x;
               param1.§_-SH§.y = param1.§_-X4§.y = _loc18_.y;
               param1.§_-nV§ = 0;
            }
         }
      }
   }
}
