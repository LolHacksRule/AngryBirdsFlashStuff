package §3§
{
   import §4!r§.§[!m§;
   import flash.utils.Dictionary;
   
   public class §<!7§ implements §`A§
   {
       
      
      protected var §[!8§:§[!m§ = null;
      
      protected var §;u§:Dictionary;
      
      protected var §[8§:Number = 0.0;
      
      protected var §8!G§:Boolean = false;
      
      protected var §?!p§:Object = null;
      
      protected var §1J§:Dictionary;
      
      protected var §'!?§:Dictionary;
      
      protected var §%f§:Dictionary;
      
      public function §<!7§()
      {
         this.§%f§ = new Dictionary();
         this.§;u§ = new Dictionary();
         this.§'!?§ = new Dictionary();
         this.§1J§ = new Dictionary();
         super();
      }
      
      public function setObject(param1:String, param2:Object) : void
      {
         this.§?!p§[param1] = param2;
      }
      
      public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§;u§[param1] = param2;
         this.§'!?§["dest." + param1] = param3;
      }
      
      protected function copyFrom(param1:§<!7§) : void
      {
         var _loc2_:§<!7§ = param1 as §<!7§;
         this.§?!p§ = _loc2_.§?!p§;
         this.§[!8§ = _loc2_.§[!8§;
         this.§ !+§(this.§%f§,_loc2_.§%f§);
         this.§ !+§(this.§;u§,_loc2_.§;u§);
         this.§ !+§(this.§'!?§,_loc2_.§'!?§);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc9_:* = null;
         if(!this.§8!G§)
         {
            this.resolveValues();
         }
         var _loc3_:Object = this.§?!p§;
         var _loc4_:§[!m§ = this.§[!8§;
         var _loc5_:Dictionary = this.§;u§;
         var _loc6_:Dictionary = this.§%f§;
         var _loc8_:Dictionary = this.§1J§;
         for(_loc9_ in _loc5_)
         {
            if(param1 >= _loc8_[_loc9_])
            {
               _loc3_[_loc9_] = _loc5_[_loc9_];
            }
            else
            {
               _loc7_ = _loc6_[_loc9_];
               _loc3_[_loc9_] = _loc4_.§-1§(param1,_loc7_,_loc5_[_loc9_] - _loc7_);
            }
         }
      }
      
      private function § !+§(param1:Object, param2:Object) : void
      {
         var _loc3_:* = null;
         for(_loc3_ in param2)
         {
            param1[_loc3_] = param2[_loc3_];
         }
      }
      
      public function get duration() : Number
      {
         if(!this.§8!G§)
         {
            this.resolveValues();
         }
         return this.§[8§;
      }
      
      protected function newInstance() : §<!7§
      {
         return new §<!7§();
      }
      
      public function set §-;§(param1:§[!m§) : void
      {
         this.§[!8§ = param1;
      }
      
      public function get target() : Object
      {
         return this.§?!p§;
      }
      
      public function clone() : § null§
      {
         var _loc1_:§<!7§ = this.newInstance();
         if(_loc1_ != null)
         {
            _loc1_.copyFrom(this);
         }
         return _loc1_;
      }
      
      public function set target(param1:Object) : void
      {
         this.§?!p§ = param1;
      }
      
      public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§%f§[param1] = param2;
         this.§'!?§["source." + param1] = param3;
      }
      
      protected function resolveValues() : void
      {
         var _loc1_:* = null;
         var _loc7_:Number = NaN;
         var _loc2_:Object = this.§?!p§;
         var _loc3_:Dictionary = this.§%f§;
         var _loc4_:Dictionary = this.§;u§;
         var _loc5_:Dictionary = this.§'!?§;
         var _loc6_:Dictionary = this.§1J§;
         var _loc8_:Number = 0;
         for(_loc1_ in _loc3_)
         {
            if(_loc4_[_loc1_] == undefined)
            {
               _loc4_[_loc1_] = _loc2_[_loc1_];
            }
            if(_loc5_["source." + _loc1_])
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
            if(_loc5_["dest." + _loc1_])
            {
               _loc4_[_loc1_] += _loc2_[_loc1_];
            }
            _loc7_ = this.§[!8§.§2!R§(_loc3_[_loc1_],_loc4_[_loc1_] - _loc3_[_loc1_]);
            _loc6_[_loc1_] = _loc7_;
            if(_loc8_ < _loc7_)
            {
               _loc8_ = _loc7_;
            }
         }
         this.§[8§ = _loc8_;
         this.§8!G§ = true;
      }
      
      public function get §-;§() : §[!m§
      {
         return this.§[!8§;
      }
      
      public function getObject(param1:String) : Object
      {
         return this.§?!p§[param1];
      }
   }
}
