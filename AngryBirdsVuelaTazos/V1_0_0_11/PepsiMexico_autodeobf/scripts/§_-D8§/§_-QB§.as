package §_-D8§
{
   import flash.utils.Dictionary;
   
   public class §_-QB§ extends §_-wR§
   {
       
      
      protected var §_-Ia§:Dictionary;
      
      protected var §_-DI§:Dictionary;
      
      protected var §_-x7§:Object = null;
      
      protected var §_-Sd§:Dictionary;
      
      protected var §_-gP§:Dictionary;
      
      public function §_-QB§()
      {
         this.§_-gP§ = new Dictionary();
         this.§_-Ia§ = new Dictionary();
         this.§_-DI§ = new Dictionary();
         this.§_-Sd§ = new Dictionary();
         super();
      }
      
      override public function setObject(param1:String, param2:Object) : void
      {
         this.§_-x7§[param1] = param2;
      }
      
      override public function set target(param1:Object) : void
      {
         this.§_-x7§ = param1;
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§_-Ia§[param1] = param2;
         this.§_-Sd§["dest." + param1] = param3;
      }
      
      override public function get target() : Object
      {
         return this.§_-x7§;
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§_-gP§[param1] = param2;
         this.§_-Sd§["source." + param1] = param3;
      }
      
      override protected function newInstance() : §_-wR§
      {
         return new §_-QB§();
      }
      
      private function §_-K6§(param1:Object, param2:Object) : void
      {
         var _loc3_:* = null;
         for(_loc3_ in param2)
         {
            param1[_loc3_] = param2[_loc3_];
         }
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc6_:Number = NaN;
         var _loc8_:Vector.<Number> = null;
         var _loc9_:uint = 0;
         var _loc10_:uint = 0;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:* = null;
         var _loc2_:Number = 1 - param1;
         var _loc3_:Object = this.§_-x7§;
         var _loc4_:Dictionary = this.§_-Ia§;
         var _loc5_:Dictionary = this.§_-gP§;
         var _loc7_:Dictionary = this.§_-DI§;
         for(_loc14_ in _loc4_)
         {
            _loc6_ = _loc5_[_loc14_];
            if(param1 != 1 && (_loc8_ = this.§_-DI§[_loc14_] as Vector.<Number>) != null)
            {
               if((_loc9_ = _loc8_.length) == 1)
               {
                  _loc3_[_loc14_] = _loc6_ + param1 * (2 * _loc2_ * (_loc8_[0] - _loc6_) + param1 * (_loc4_[_loc14_] - _loc6_));
               }
               else
               {
                  _loc10_ = param1 * _loc9_ >> 0;
                  _loc11_ = (param1 - _loc10_ * (1 / _loc9_)) * _loc9_;
                  if(_loc10_ == 0)
                  {
                     _loc12_ = _loc6_;
                     _loc13_ = (_loc8_[0] + _loc8_[1]) / 2;
                  }
                  else if(_loc10_ == _loc9_ - 1)
                  {
                     _loc12_ = (_loc8_[_loc10_ - 1] + _loc8_[_loc10_]) / 2;
                     _loc13_ = _loc4_[_loc14_];
                  }
                  else
                  {
                     _loc12_ = (_loc8_[_loc10_ - 1] + _loc8_[_loc10_]) / 2;
                     _loc13_ = (_loc8_[_loc10_] + _loc8_[_loc10_ + 1]) / 2;
                  }
                  _loc3_[_loc14_] = _loc12_ + _loc11_ * (2 * (1 - _loc11_) * (_loc8_[_loc10_] - _loc12_) + _loc11_ * (_loc13_ - _loc12_));
               }
            }
            else
            {
               _loc3_[_loc14_] = _loc6_ * _loc2_ + _loc4_[_loc14_] * param1;
            }
         }
      }
      
      override protected function resolveValues() : void
      {
         var _loc1_:* = null;
         var _loc6_:Vector.<Number> = null;
         var _loc7_:uint = 0;
         var _loc8_:uint = 0;
         var _loc2_:Object = this.§_-x7§;
         var _loc3_:Dictionary = this.§_-gP§;
         var _loc4_:Dictionary = this.§_-Ia§;
         var _loc5_:Dictionary = this.§_-DI§;
         var _loc9_:Dictionary = this.§_-Sd§;
         for(_loc1_ in _loc3_)
         {
            if(_loc4_[_loc1_] == undefined)
            {
               _loc4_[_loc1_] = _loc2_[_loc1_];
            }
            if(_loc9_["source." + _loc1_])
            {
               _loc3_[_loc1_] += _loc2_[_loc1_];
            }
         }
         for(_loc1_ in _loc4_)
         {
            if(_loc3_[_loc1_] == undefined)
            {
               _loc3_[_loc1_] = _loc2_[_loc1_];
            }
            if(_loc9_["dest." + _loc1_])
            {
               _loc4_[_loc1_] += _loc2_[_loc1_];
            }
         }
         for(_loc1_ in _loc5_)
         {
            _loc7_ = (_loc6_ = _loc5_[_loc1_] as Vector.<Number>).length;
            _loc8_ = 0;
            while(_loc8_ < _loc7_)
            {
               if(_loc9_["cp." + _loc1_ + "." + _loc8_])
               {
                  _loc6_[_loc8_] += _loc2_[_loc1_];
               }
               _loc8_++;
            }
         }
      }
      
      public function §_-ll§(param1:String, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Vector.<Number>;
         if((_loc4_ = this.§_-DI§[param1] as Vector.<Number>) == null)
         {
            this.§_-DI§[param1] = _loc4_ = new Vector.<Number>();
         }
         _loc4_.push(param2);
         this.§_-Sd§["cp." + param1 + "." + _loc4_.length] = param3;
      }
      
      override public function getObject(param1:String) : Object
      {
         return this.§_-x7§[param1];
      }
      
      override protected function copyFrom(param1:§_-wR§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§_-QB§ = param1 as §_-QB§;
         this.§_-x7§ = _loc2_.§_-x7§;
         this.§_-K6§(this.§_-gP§,_loc2_.§_-gP§);
         this.§_-K6§(this.§_-Ia§,_loc2_.§_-Ia§);
         this.§_-K6§(this.§_-DI§,_loc2_.§_-DI§);
         this.§_-K6§(this.§_-Sd§,_loc2_.§_-Sd§);
      }
   }
}
