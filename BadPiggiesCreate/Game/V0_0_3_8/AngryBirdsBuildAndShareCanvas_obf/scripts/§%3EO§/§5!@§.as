package §>O§
{
   import §9g§.§-f§;
   import flash.utils.Dictionary;
   
   public class §5!@§ implements §4Q§
   {
       
      
      protected var §+!v§:§-f§ = null;
      
      protected var §]q§:Dictionary;
      
      protected var §2!#§:Number = 0.0;
      
      protected var §-j§:Boolean = false;
      
      protected var §,@§:Object = null;
      
      protected var §"!,§:Dictionary;
      
      protected var §&N§:Dictionary;
      
      protected var § [§:Dictionary;
      
      public function §5!@§()
      {
         this.§ [§ = new Dictionary();
         this.§]q§ = new Dictionary();
         this.§&N§ = new Dictionary();
         this.§"!,§ = new Dictionary();
         super();
      }
      
      public function setObject(param1:String, param2:Object) : void
      {
         this.§,@§[param1] = param2;
      }
      
      public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§]q§[param1] = param2;
         this.§&N§["dest." + param1] = param3;
      }
      
      protected function copyFrom(param1:§5!@§) : void
      {
         var _loc2_:§5!@§ = param1 as §5!@§;
         this.§,@§ = _loc2_.§,@§;
         this.§+!v§ = _loc2_.§+!v§;
         this.§0"$§(this.§ [§,_loc2_.§ [§);
         this.§0"$§(this.§]q§,_loc2_.§]q§);
         this.§0"$§(this.§&N§,_loc2_.§&N§);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc9_:* = null;
         if(!this.§-j§)
         {
            this.resolveValues();
         }
         var _loc3_:Object = this.§,@§;
         var _loc4_:§-f§ = this.§+!v§;
         var _loc5_:Dictionary = this.§]q§;
         var _loc6_:Dictionary = this.§ [§;
         var _loc8_:Dictionary = this.§"!,§;
         for(_loc9_ in _loc5_)
         {
            if(param1 >= _loc8_[_loc9_])
            {
               _loc3_[_loc9_] = _loc5_[_loc9_];
            }
            else
            {
               _loc7_ = _loc6_[_loc9_];
               _loc3_[_loc9_] = _loc4_.§<!"§(param1,_loc7_,_loc5_[_loc9_] - _loc7_);
            }
         }
      }
      
      private function §0"$§(param1:Object, param2:Object) : void
      {
         var _loc3_:* = null;
         for(_loc3_ in param2)
         {
            param1[_loc3_] = param2[_loc3_];
         }
      }
      
      public function get duration() : Number
      {
         if(!this.§-j§)
         {
            this.resolveValues();
         }
         return this.§2!#§;
      }
      
      protected function newInstance() : §5!@§
      {
         return new §5!@§();
      }
      
      public function set §7!V§(param1:§-f§) : void
      {
         this.§+!v§ = param1;
      }
      
      public function get target() : Object
      {
         return this.§,@§;
      }
      
      public function clone() : §18§
      {
         var _loc1_:§5!@§ = this.newInstance();
         if(_loc1_ != null)
         {
            _loc1_.copyFrom(this);
         }
         return _loc1_;
      }
      
      public function set target(param1:Object) : void
      {
         this.§,@§ = param1;
      }
      
      public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§ [§[param1] = param2;
         this.§&N§["source." + param1] = param3;
      }
      
      protected function resolveValues() : void
      {
         var _loc1_:* = null;
         var _loc7_:Number = NaN;
         var _loc2_:Object = this.§,@§;
         var _loc3_:Dictionary = this.§ [§;
         var _loc4_:Dictionary = this.§]q§;
         var _loc5_:Dictionary = this.§&N§;
         var _loc6_:Dictionary = this.§"!,§;
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
            _loc7_ = this.§+!v§.§5!I§(_loc3_[_loc1_],_loc4_[_loc1_] - _loc3_[_loc1_]);
            _loc6_[_loc1_] = _loc7_;
            if(_loc8_ < _loc7_)
            {
               _loc8_ = _loc7_;
            }
         }
         this.§2!#§ = _loc8_;
         this.§-j§ = true;
      }
      
      public function get §7!V§() : §-f§
      {
         return this.§+!v§;
      }
      
      public function getObject(param1:String) : Object
      {
         return this.§,@§[param1];
      }
   }
}
