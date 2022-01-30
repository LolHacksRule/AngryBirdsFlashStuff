package § get§
{
   import flash.utils.Dictionary;
   
   public class §0^§ extends §]D§
   {
       
      
      protected var §%!r§:Dictionary;
      
      protected var §="&§:Dictionary;
      
      protected var §<"$§:Object = null;
      
      protected var §const§:Dictionary;
      
      protected var §;!g§:Dictionary;
      
      public function §0^§()
      {
         this.§;!g§ = new Dictionary();
         this.§%!r§ = new Dictionary();
         this.§="&§ = new Dictionary();
         this.§const§ = new Dictionary();
         super();
      }
      
      override public function setObject(param1:String, param2:Object) : void
      {
         this.§<"$§[param1] = param2;
      }
      
      override public function set target(param1:Object) : void
      {
         this.§<"$§ = param1;
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§%!r§[param1] = param2;
         this.§const§["dest." + param1] = param3;
      }
      
      override public function get target() : Object
      {
         return this.§<"$§;
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§;!g§[param1] = param2;
         this.§const§["source." + param1] = param3;
      }
      
      override protected function newInstance() : §]D§
      {
         return new §0^§();
      }
      
      private function §<,§(param1:Object, param2:Object) : void
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
         var _loc3_:Object = this.§<"$§;
         var _loc4_:Dictionary = this.§%!r§;
         var _loc5_:Dictionary = this.§;!g§;
         var _loc7_:Dictionary = this.§="&§;
         for(_loc14_ in _loc4_)
         {
            _loc6_ = _loc5_[_loc14_];
            if(param1 != 1 && (_loc8_ = this.§="&§[_loc14_] as Vector.<Number>) != null)
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
         var _loc2_:Object = this.§<"$§;
         var _loc3_:Dictionary = this.§;!g§;
         var _loc4_:Dictionary = this.§%!r§;
         var _loc5_:Dictionary = this.§="&§;
         var _loc9_:Dictionary = this.§const§;
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
      
      public function §+u§(param1:String, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Vector.<Number>;
         if((_loc4_ = this.§="&§[param1] as Vector.<Number>) == null)
         {
            this.§="&§[param1] = _loc4_ = new Vector.<Number>();
         }
         _loc4_.push(param2);
         this.§const§["cp." + param1 + "." + _loc4_.length] = param3;
      }
      
      override public function getObject(param1:String) : Object
      {
         return this.§<"$§[param1];
      }
      
      override protected function copyFrom(param1:§]D§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§0^§ = param1 as §0^§;
         this.§<"$§ = _loc2_.§<"$§;
         this.§<,§(this.§;!g§,_loc2_.§;!g§);
         this.§<,§(this.§%!r§,_loc2_.§%!r§);
         this.§<,§(this.§="&§,_loc2_.§="&§);
         this.§<,§(this.§const§,_loc2_.§const§);
      }
   }
}
