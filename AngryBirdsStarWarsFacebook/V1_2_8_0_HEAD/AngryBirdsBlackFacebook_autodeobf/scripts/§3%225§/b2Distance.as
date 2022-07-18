package §3"5§
{
   import §4!$§.*;
   import §5"i§.*;
   import §[R§.*;
   
   use namespace b2internal;
   
   public class b2Distance
   {
      
      private static var b2_gjkCalls:int;
      
      private static var b2_gjkIters:int;
      
      private static var b2_gjkMaxIters:int;
      
      private static var §-"z§:b2Simplex = new b2Simplex();
      
      private static var §4S§:Vector.<int> = new Vector.<int>(3);
      
      private static var §%!F§:Vector.<int> = new Vector.<int>(3);
       
      
      public function b2Distance()
      {
         super();
      }
      
      public static function §?"2§(param1:b2DistanceOutput, param2:b2SimplexCache, param3:b2DistanceInput) : void
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
         var _loc4_:b2DistanceProxy = param3.§<!b§;
         var _loc5_:b2DistanceProxy = param3.§#!]§;
         var _loc6_:b2Transform = param3.§##=§;
         var _loc7_:b2Transform = param3.§&#L§;
         var _loc8_:b2Simplex;
         (_loc8_ = §-"z§).§&!J§(param2,_loc4_,_loc6_,_loc5_,_loc7_);
         var _loc9_:Vector.<b2SimplexVertex> = _loc8_.§=#S§;
         var _loc11_:Vector.<int> = §4S§;
         var _loc12_:Vector.<int> = §%!F§;
         var _loc13_:int = 0;
         var _loc15_:Number;
         var _loc14_:b2Vec2;
         var _loc16_:Number = _loc15_ = (_loc14_ = _loc8_.§8#H§()).§1"t§();
         var _loc19_:int = 0;
         while(_loc19_ < 20)
         {
            _loc13_ = _loc8_.§@"K§;
            _loc17_ = 0;
            while(_loc17_ < _loc13_)
            {
               _loc11_[_loc17_] = _loc9_[_loc17_].indexA;
               _loc12_[_loc17_] = _loc9_[_loc17_].indexB;
               _loc17_++;
            }
            switch(_loc8_.§@"K§)
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
            if(_loc8_.§@"K§ == 3)
            {
               break;
            }
            if((_loc16_ = (_loc18_ = _loc8_.§8#H§()).§1"t§()) > _loc15_)
            {
            }
            _loc15_ = _loc16_;
            if((_loc20_ = _loc8_.§`"7§()).§1"t§() < Number.MIN_VALUE * Number.MIN_VALUE)
            {
               break;
            }
            (_loc21_ = _loc9_[_loc8_.§@"K§]).indexA = _loc4_.§5!y§(b2Math.§9#A§(_loc6_.R,_loc20_.§5!]§()));
            _loc21_.§5#1§ = b2Math.§""$§(_loc6_,_loc4_.§-",§(_loc21_.indexA));
            _loc21_.indexB = _loc5_.§5!y§(b2Math.§9#A§(_loc7_.R,_loc20_));
            _loc21_.§6!V§ = b2Math.§""$§(_loc7_,_loc5_.§-",§(_loc21_.indexB));
            _loc21_.w = b2Math.§8!3§(_loc21_.§6!V§,_loc21_.§5#1§);
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
            ++_loc8_.§@"K§;
         }
         b2_gjkMaxIters = b2Math.§<#N§(b2_gjkMaxIters,_loc19_);
         _loc8_.§4`§(param1.§0!,§,param1.§##C§);
         param1.distance = b2Math.§8!3§(param1.§0!,§,param1.§##C§).Length();
         param1.§0"b§ = _loc19_;
         _loc8_.§"!f§(param2);
         if(param3.§@"k§)
         {
            _loc23_ = _loc4_.§ "^§;
            _loc24_ = _loc5_.§ "^§;
            if(param1.distance > _loc23_ + _loc24_ && param1.distance > Number.MIN_VALUE)
            {
               param1.distance -= _loc23_ + _loc24_;
               (_loc25_ = b2Math.§8!3§(param1.§##C§,param1.§0!,§)).Normalize();
               param1.§0!,§.x += _loc23_ * _loc25_.x;
               param1.§0!,§.y += _loc23_ * _loc25_.y;
               param1.§##C§.x -= _loc24_ * _loc25_.x;
               param1.§##C§.y -= _loc24_ * _loc25_.y;
            }
            else
            {
               (_loc18_ = new b2Vec2()).x = 0.5 * (param1.§0!,§.x + param1.§##C§.x);
               _loc18_.y = 0.5 * (param1.§0!,§.y + param1.§##C§.y);
               param1.§0!,§.x = param1.§##C§.x = _loc18_.x;
               param1.§0!,§.y = param1.§##C§.y = _loc18_.y;
               param1.distance = 0;
            }
         }
      }
   }
}
