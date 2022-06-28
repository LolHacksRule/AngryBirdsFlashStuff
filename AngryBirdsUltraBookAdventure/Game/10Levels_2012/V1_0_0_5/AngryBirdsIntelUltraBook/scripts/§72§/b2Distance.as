package §72§
{
   import §2!+§.*;
   import §7!u§.*;
   import §>H§.*;
   
   use namespace b2internal;
   
   public class b2Distance
   {
      
      private static var b2_gjkCalls:int;
      
      private static var b2_gjkIters:int;
      
      private static var b2_gjkMaxIters:int;
      
      private static var §7!v§:b2Simplex = new b2Simplex();
      
      private static var §&!q§:Vector.<int> = new Vector.<int>(3);
      
      private static var §;k§:Vector.<int> = new Vector.<int>(3);
       
      
      public function b2Distance()
      {
         super();
      }
      
      public static function §&7§(param1:b2DistanceOutput, param2:b2SimplexCache, param3:b2DistanceInput) : void
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
         var _loc4_:b2DistanceProxy = param3.§]!O§;
         var _loc5_:b2DistanceProxy = param3.§&d§;
         var _loc6_:b2Transform = param3.§=!G§;
         var _loc7_:b2Transform = param3.§"!O§;
         var _loc8_:b2Simplex;
         (_loc8_ = §7!v§).§7z§(param2,_loc4_,_loc6_,_loc5_,_loc7_);
         var _loc9_:Vector.<b2SimplexVertex> = _loc8_.§#!w§;
         var _loc11_:Vector.<int> = §&!q§;
         var _loc12_:Vector.<int> = §;k§;
         var _loc13_:int = 0;
         var _loc15_:Number;
         var _loc14_:b2Vec2;
         var _loc16_:Number = _loc15_ = (_loc14_ = _loc8_.§"!C§()).§ !W§();
         var _loc19_:int = 0;
         while(_loc19_ < 20)
         {
            _loc13_ = _loc8_.§9s§;
            _loc17_ = 0;
            while(_loc17_ < _loc13_)
            {
               _loc11_[_loc17_] = _loc9_[_loc17_].indexA;
               _loc12_[_loc17_] = _loc9_[_loc17_].indexB;
               _loc17_++;
            }
            switch(_loc8_.§9s§)
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
            if(_loc8_.§9s§ == 3)
            {
               break;
            }
            if((_loc16_ = (_loc18_ = _loc8_.§"!C§()).§ !W§()) > _loc15_)
            {
            }
            _loc15_ = _loc16_;
            if((_loc20_ = _loc8_.§`!o§()).§ !W§() < Number.MIN_VALUE * Number.MIN_VALUE)
            {
               break;
            }
            (_loc21_ = _loc9_[_loc8_.§9s§]).indexA = _loc4_.§4!J§(b2Math.§;%§(_loc6_.R,_loc20_.§@H§()));
            _loc21_.§[!r§ = b2Math.§'!6§(_loc6_,_loc4_.§^>§(_loc21_.indexA));
            _loc21_.indexB = _loc5_.§4!J§(b2Math.§;%§(_loc7_.R,_loc20_));
            _loc21_.§3!$§ = b2Math.§'!6§(_loc7_,_loc5_.§^>§(_loc21_.indexB));
            _loc21_.§^N§ = b2Math.§54§(_loc21_.§3!$§,_loc21_.§[!r§);
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
            ++_loc8_.§9s§;
         }
         b2_gjkMaxIters = b2Math.§0!_§(b2_gjkMaxIters,_loc19_);
         _loc8_.§-K§(param1.§^o§,param1.§2!#§);
         param1.§8j§ = b2Math.§54§(param1.§^o§,param1.§2!#§).§>!7§();
         param1.§]A§ = _loc19_;
         _loc8_.§ !?§(param2);
         if(param3.§^1§)
         {
            _loc23_ = _loc4_.§9!A§;
            _loc24_ = _loc5_.§9!A§;
            if(param1.§8j§ > _loc23_ + _loc24_ && param1.§8j§ > Number.MIN_VALUE)
            {
               param1.§8j§ -= _loc23_ + _loc24_;
               (_loc25_ = b2Math.§54§(param1.§2!#§,param1.§^o§)).Normalize();
               param1.§^o§.x += _loc23_ * _loc25_.x;
               param1.§^o§.y += _loc23_ * _loc25_.y;
               param1.§2!#§.x -= _loc24_ * _loc25_.x;
               param1.§2!#§.y -= _loc24_ * _loc25_.y;
            }
            else
            {
               (_loc18_ = new b2Vec2()).x = 0.5 * (param1.§^o§.x + param1.§2!#§.x);
               _loc18_.y = 0.5 * (param1.§^o§.y + param1.§2!#§.y);
               param1.§^o§.x = param1.§2!#§.x = _loc18_.x;
               param1.§^o§.y = param1.§2!#§.y = _loc18_.y;
               param1.§8j§ = 0;
            }
         }
      }
   }
}
