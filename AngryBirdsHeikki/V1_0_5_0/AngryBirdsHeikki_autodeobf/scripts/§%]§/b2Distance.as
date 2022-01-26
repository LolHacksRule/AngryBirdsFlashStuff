package §%]§
{
   import §,!3§.*;
   import §3'§.*;
   import §=u§.*;
   
   use namespace b2internal;
   
   public class b2Distance
   {
      
      private static var b2_gjkCalls:int;
      
      private static var b2_gjkIters:int;
      
      private static var b2_gjkMaxIters:int;
      
      private static var §4h§:b2Simplex = new b2Simplex();
      
      private static var §!u§:Vector.<int> = new Vector.<int>(3);
      
      private static var §1Q§:Vector.<int> = new Vector.<int>(3);
       
      
      public function b2Distance()
      {
         super();
      }
      
      public static function §%&§(param1:b2DistanceOutput, param2:b2SimplexCache, param3:b2DistanceInput) : void
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
         var _loc4_:b2DistanceProxy = param3.§`!0§;
         var _loc5_:b2DistanceProxy = param3.§?!2§;
         var _loc6_:b2Transform = param3.§!!H§;
         var _loc7_:b2Transform = param3.§0!R§;
         var _loc8_:b2Simplex;
         (_loc8_ = §4h§).§ !_§(param2,_loc4_,_loc6_,_loc5_,_loc7_);
         var _loc9_:Vector.<b2SimplexVertex> = _loc8_.§&1§;
         var _loc11_:Vector.<int> = §!u§;
         var _loc12_:Vector.<int> = §1Q§;
         var _loc13_:int = 0;
         var _loc15_:Number;
         var _loc14_:b2Vec2;
         var _loc16_:Number = _loc15_ = (_loc14_ = _loc8_.§>H§()).§5§();
         var _loc19_:int = 0;
         while(_loc19_ < 20)
         {
            _loc13_ = _loc8_.§`#§;
            _loc17_ = 0;
            while(_loc17_ < _loc13_)
            {
               _loc11_[_loc17_] = _loc9_[_loc17_].indexA;
               _loc12_[_loc17_] = _loc9_[_loc17_].indexB;
               _loc17_++;
            }
            switch(_loc8_.§`#§)
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
            if(_loc8_.§`#§ == 3)
            {
               break;
            }
            if((_loc16_ = (_loc18_ = _loc8_.§>H§()).§5§()) > _loc15_)
            {
            }
            _loc15_ = _loc16_;
            if((_loc20_ = _loc8_.§]9§()).§5§() < Number.MIN_VALUE * Number.MIN_VALUE)
            {
               break;
            }
            (_loc21_ = _loc9_[_loc8_.§`#§]).indexA = _loc4_.§6!?§(b2Math.§"![§(_loc6_.R,_loc20_.§6! §()));
            _loc21_.§+!E§ = b2Math.§8j§(_loc6_,_loc4_.§8!K§(_loc21_.indexA));
            _loc21_.indexB = _loc5_.§6!?§(b2Math.§"![§(_loc7_.R,_loc20_));
            _loc21_.§"!0§ = b2Math.§8j§(_loc7_,_loc5_.§8!K§(_loc21_.indexB));
            _loc21_.§9=§ = b2Math.§#!G§(_loc21_.§"!0§,_loc21_.§+!E§);
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
            ++_loc8_.§`#§;
         }
         b2_gjkMaxIters = b2Math.§#!0§(b2_gjkMaxIters,_loc19_);
         _loc8_.§^!P§(param1.§"! §,param1.§^!6§);
         param1.§^!;§ = b2Math.§#!G§(param1.§"! §,param1.§^!6§).§;@§();
         param1.§4!"§ = _loc19_;
         _loc8_.§''§(param2);
         if(param3.§<!!§)
         {
            _loc23_ = _loc4_.§ !W§;
            _loc24_ = _loc5_.§ !W§;
            if(param1.§^!;§ > _loc23_ + _loc24_ && param1.§^!;§ > Number.MIN_VALUE)
            {
               param1.§^!;§ -= _loc23_ + _loc24_;
               (_loc25_ = b2Math.§#!G§(param1.§^!6§,param1.§"! §)).Normalize();
               param1.§"! §.x += _loc23_ * _loc25_.x;
               param1.§"! §.y += _loc23_ * _loc25_.y;
               param1.§^!6§.x -= _loc24_ * _loc25_.x;
               param1.§^!6§.y -= _loc24_ * _loc25_.y;
            }
            else
            {
               (_loc18_ = new b2Vec2()).x = 0.5 * (param1.§"! §.x + param1.§^!6§.x);
               _loc18_.y = 0.5 * (param1.§"! §.y + param1.§^!6§.y);
               param1.§"! §.x = param1.§^!6§.x = _loc18_.x;
               param1.§"! §.y = param1.§^!6§.y = _loc18_.y;
               param1.§^!;§ = 0;
            }
         }
      }
   }
}
