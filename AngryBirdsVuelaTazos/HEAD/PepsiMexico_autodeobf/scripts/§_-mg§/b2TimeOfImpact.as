package §_-mg§
{
   import §_-bA§.b2Math;
   import §_-bA§.b2Sweep;
   import §_-bA§.b2Transform;
   import §_-rz§.b2Settings;
   
   public class b2TimeOfImpact
   {
      
      private static var b2_toiCalls:int = 0;
      
      private static var b2_toiIters:int = 0;
      
      private static var b2_toiMaxIters:int = 0;
      
      private static var b2_toiRootIters:int = 0;
      
      private static var b2_toiMaxRootIters:int = 0;
      
      private static var §_-73§:b2SimplexCache = new b2SimplexCache();
      
      private static var §_-kz§:b2DistanceInput = new b2DistanceInput();
      
      private static var §_-wq§:b2Transform = new b2Transform();
      
      private static var §_-zk§:b2Transform = new b2Transform();
      
      private static var §_-Ws§:b2SeparationFunction = new b2SeparationFunction();
      
      private static var §_-or§:b2DistanceOutput = new b2DistanceOutput();
       
      
      public function b2TimeOfImpact()
      {
         super();
      }
      
      public static function §_-ar§(param1:b2TOIInput) : Number
      {
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:int = 0;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         ++b2_toiCalls;
         var _loc2_:b2DistanceProxy = param1.§_-tt§;
         var _loc3_:b2DistanceProxy = param1.§_-co§;
         var _loc4_:b2Sweep = param1.§_-pp§;
         var _loc5_:b2Sweep = param1.§_-da§;
         b2Settings.b2Assert(_loc4_.§_-QQ§ == _loc5_.§_-QQ§);
         b2Settings.b2Assert(1 - _loc4_.§_-QQ§ > Number.MIN_VALUE);
         var _loc6_:Number = _loc2_.§_-Cv§ + _loc3_.§_-Cv§;
         var _loc7_:Number = param1.§_-zz§;
         var _loc8_:Number = 0;
         var _loc10_:int = 0;
         var _loc11_:Number = 0;
         §_-73§.count = 0;
         §_-kz§.§_-XZ§ = false;
         do
         {
            _loc4_.§_-ow§(§_-wq§,_loc8_);
            _loc5_.§_-ow§(§_-zk§,_loc8_);
            §_-kz§.§_-tt§ = _loc2_;
            §_-kz§.§_-co§ = _loc3_;
            §_-kz§.§_-P1§ = §_-wq§;
            §_-kz§.§_-nO§ = §_-zk§;
            b2Distance.§_-6z§(§_-or§,§_-73§,§_-kz§);
            if(§_-or§.§_-nV§ <= 0)
            {
               _loc8_ = 1;
               break;
            }
            §_-Ws§.§_-95§(§_-73§,_loc2_,§_-wq§,_loc3_,§_-zk§);
            if((_loc12_ = §_-Ws§.Evaluate(§_-wq§,§_-zk§)) <= 0)
            {
               _loc8_ = 1;
               break;
            }
            if(_loc10_ == 0)
            {
               if(_loc12_ > _loc6_)
               {
                  _loc11_ = b2Math.§_-44§(_loc6_ - _loc7_,0.75 * _loc6_);
               }
               else
               {
                  _loc11_ = b2Math.§_-44§(_loc12_ - _loc7_,0.02 * _loc6_);
               }
            }
            if(_loc12_ - _loc11_ < 0.5 * _loc7_)
            {
               if(_loc10_ == 0)
               {
                  _loc8_ = 1;
                  break;
               }
               break;
            }
            _loc13_ = _loc8_;
            _loc14_ = _loc8_;
            _loc15_ = 1;
            _loc16_ = _loc12_;
            _loc4_.§_-ow§(§_-wq§,_loc15_);
            _loc5_.§_-ow§(§_-zk§,_loc15_);
            if((_loc17_ = §_-Ws§.Evaluate(§_-wq§,§_-zk§)) >= _loc11_)
            {
               _loc8_ = 1;
               break;
            }
            _loc18_ = 0;
            do
            {
               if(_loc18_ & 1)
               {
                  _loc19_ = _loc14_ + (_loc11_ - _loc16_) * (_loc15_ - _loc14_) / (_loc17_ - _loc16_);
               }
               else
               {
                  _loc19_ = 0.5 * (_loc14_ + _loc15_);
               }
               _loc4_.§_-ow§(§_-wq§,_loc19_);
               _loc5_.§_-ow§(§_-zk§,_loc19_);
               _loc20_ = §_-Ws§.Evaluate(§_-wq§,§_-zk§);
               if(b2Math.§_-30§(_loc20_ - _loc11_) < 0.025 * _loc7_)
               {
                  _loc13_ = _loc19_;
                  break;
               }
               if(_loc20_ > _loc11_)
               {
                  _loc14_ = _loc19_;
                  _loc16_ = _loc20_;
               }
               else
               {
                  _loc15_ = _loc19_;
                  _loc17_ = _loc20_;
               }
               _loc18_++;
               ++b2_toiRootIters;
            }
            while(_loc18_ != 50);
            
            b2_toiMaxRootIters = b2Math.§_-44§(b2_toiMaxRootIters,_loc18_);
            if(_loc13_ < (1 + 100 * Number.MIN_VALUE) * _loc8_)
            {
               break;
            }
            _loc8_ = _loc13_;
            _loc10_++;
            ++b2_toiIters;
         }
         while(_loc10_ != 1000);
         
         b2_toiMaxIters = b2Math.§_-44§(b2_toiMaxIters,_loc10_);
         return _loc8_;
      }
   }
}
