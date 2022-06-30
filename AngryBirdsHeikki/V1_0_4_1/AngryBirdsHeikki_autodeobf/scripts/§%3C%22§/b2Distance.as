package §<"§
{
   import §+!b§.*;
   import §4x§.*;
   import §=i§.*;
   
   use namespace b2internal;
   
   public class b2Distance
   {
      
      private static var b2_gjkCalls:int;
      
      private static var b2_gjkIters:int;
      
      private static var b2_gjkMaxIters:int;
      
      private static var §%v§:b2Simplex = new b2Simplex();
      
      private static var §+!c§:Vector.<int> = new Vector.<int>(3);
      
      private static var §#!b§:Vector.<int> = new Vector.<int>(3);
       
      
      public function b2Distance()
      {
         super();
      }
      
      public static function §=q§(param1:b2DistanceOutput, param2:b2SimplexCache, param3:b2DistanceInput) : void
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
         var _loc4_:b2DistanceProxy = param3.§^!C§;
         var _loc5_:b2DistanceProxy = param3.§[G§;
         var _loc6_:b2Transform = param3.§0!'§;
         var _loc7_:b2Transform = param3.§5y§;
         var _loc8_:b2Simplex;
         (_loc8_ = §%v§).§+i§(param2,_loc4_,_loc6_,_loc5_,_loc7_);
         var _loc9_:Vector.<b2SimplexVertex> = _loc8_.§`!M§;
         var _loc11_:Vector.<int> = §+!c§;
         var _loc12_:Vector.<int> = §#!b§;
         var _loc13_:int = 0;
         var _loc15_:Number;
         var _loc14_:b2Vec2;
         var _loc16_:Number = _loc15_ = (_loc14_ = _loc8_.§4!S§()).§5!P§();
         var _loc19_:int = 0;
         while(_loc19_ < 20)
         {
            _loc13_ = _loc8_.§#E§;
            _loc17_ = 0;
            while(_loc17_ < _loc13_)
            {
               _loc11_[_loc17_] = _loc9_[_loc17_].indexA;
               _loc12_[_loc17_] = _loc9_[_loc17_].indexB;
               _loc17_++;
            }
            switch(_loc8_.§#E§)
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
            if(_loc8_.§#E§ == 3)
            {
               break;
            }
            if((_loc16_ = (_loc18_ = _loc8_.§4!S§()).§5!P§()) > _loc15_)
            {
            }
            _loc15_ = _loc16_;
            if((_loc20_ = _loc8_.§[!N§()).§5!P§() < Number.MIN_VALUE * Number.MIN_VALUE)
            {
               break;
            }
            (_loc21_ = _loc9_[_loc8_.§#E§]).indexA = _loc4_.§&!R§(b2Math.§-4§(_loc6_.R,_loc20_.§6!A§()));
            _loc21_.§,!?§ = b2Math.§]x§(_loc6_,_loc4_.§]!Z§(_loc21_.indexA));
            _loc21_.indexB = _loc5_.§&!R§(b2Math.§-4§(_loc7_.R,_loc20_));
            _loc21_.§>!%§ = b2Math.§]x§(_loc7_,_loc5_.§]!Z§(_loc21_.indexB));
            _loc21_.§]!#§ = b2Math.§]G§(_loc21_.§>!%§,_loc21_.§,!?§);
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
            ++_loc8_.§#E§;
         }
         b2_gjkMaxIters = b2Math.§3y§(b2_gjkMaxIters,_loc19_);
         _loc8_.§+!§(param1.§^S§,param1.§for§);
         param1.§<!_§ = b2Math.§]G§(param1.§^S§,param1.§for§).§4§();
         param1.§-C§ = _loc19_;
         _loc8_.§'!7§(param2);
         if(param3.§!l§)
         {
            _loc23_ = _loc4_.§6x§;
            _loc24_ = _loc5_.§6x§;
            if(param1.§<!_§ > _loc23_ + _loc24_ && param1.§<!_§ > Number.MIN_VALUE)
            {
               param1.§<!_§ -= _loc23_ + _loc24_;
               (_loc25_ = b2Math.§]G§(param1.§for§,param1.§^S§)).Normalize();
               param1.§^S§.x += _loc23_ * _loc25_.x;
               param1.§^S§.y += _loc23_ * _loc25_.y;
               param1.§for§.x -= _loc24_ * _loc25_.x;
               param1.§for§.y -= _loc24_ * _loc25_.y;
            }
            else
            {
               (_loc18_ = new b2Vec2()).x = 0.5 * (param1.§^S§.x + param1.§for§.x);
               _loc18_.y = 0.5 * (param1.§^S§.y + param1.§for§.y);
               param1.§^S§.x = param1.§for§.x = _loc18_.x;
               param1.§^S§.y = param1.§for§.y = _loc18_.y;
               param1.§<!_§ = 0;
            }
         }
      }
   }
}
