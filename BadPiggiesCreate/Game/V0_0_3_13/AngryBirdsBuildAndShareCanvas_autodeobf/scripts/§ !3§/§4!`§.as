package § !3§
{
   import §4!x§.§7"?§;
   import flash.utils.Dictionary;
   
   public class §4!`§ implements §5!e§
   {
       
      
      protected var §7E§:§7"?§ = null;
      
      protected var § x§:Dictionary;
      
      protected var §4$§:Number = 0.0;
      
      protected var §!Y§:Boolean = false;
      
      protected var §-"7§:Object = null;
      
      protected var §+6§:Dictionary;
      
      protected var §3>§:Dictionary;
      
      protected var §4]§:Dictionary;
      
      public function §4!`§()
      {
         this.§4]§ = new Dictionary();
         this.§ x§ = new Dictionary();
         this.§3>§ = new Dictionary();
         this.§+6§ = new Dictionary();
         super();
      }
      
      public function setObject(param1:String, param2:Object) : void
      {
         this.§-"7§[param1] = param2;
      }
      
      public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§ x§[param1] = param2;
         this.§3>§["dest." + param1] = param3;
      }
      
      protected function copyFrom(param1:§4!`§) : void
      {
         var _loc2_:§4!`§ = param1 as §4!`§;
         this.§-"7§ = _loc2_.§-"7§;
         this.§7E§ = _loc2_.§7E§;
         this.§,I§(this.§4]§,_loc2_.§4]§);
         this.§,I§(this.§ x§,_loc2_.§ x§);
         this.§,I§(this.§3>§,_loc2_.§3>§);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc9_:* = null;
         if(!this.§!Y§)
         {
            this.resolveValues();
         }
         var _loc3_:Object = this.§-"7§;
         var _loc4_:§7"?§ = this.§7E§;
         var _loc5_:Dictionary = this.§ x§;
         var _loc6_:Dictionary = this.§4]§;
         var _loc8_:Dictionary = this.§+6§;
         for(_loc9_ in _loc5_)
         {
            if(param1 >= _loc8_[_loc9_])
            {
               _loc3_[_loc9_] = _loc5_[_loc9_];
            }
            else
            {
               _loc7_ = _loc6_[_loc9_];
               _loc3_[_loc9_] = _loc4_.§%!"§(param1,_loc7_,_loc5_[_loc9_] - _loc7_);
            }
         }
      }
      
      private function §,I§(param1:Object, param2:Object) : void
      {
         var _loc3_:* = null;
         for(_loc3_ in param2)
         {
            param1[_loc3_] = param2[_loc3_];
         }
      }
      
      public function get duration() : Number
      {
         if(!this.§!Y§)
         {
            this.resolveValues();
         }
         return this.§4$§;
      }
      
      protected function newInstance() : §4!`§
      {
         return new §4!`§();
      }
      
      public function set §=&§(param1:§7"?§) : void
      {
         this.§7E§ = param1;
      }
      
      public function get target() : Object
      {
         return this.§-"7§;
      }
      
      public function clone() : §5"&§
      {
         var _loc1_:§4!`§ = this.newInstance();
         if(_loc1_ != null)
         {
            _loc1_.copyFrom(this);
         }
         return _loc1_;
      }
      
      public function set target(param1:Object) : void
      {
         this.§-"7§ = param1;
      }
      
      public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§4]§[param1] = param2;
         this.§3>§["source." + param1] = param3;
      }
      
      protected function resolveValues() : void
      {
         var _loc1_:* = null;
         var _loc7_:Number = NaN;
         var _loc2_:Object = this.§-"7§;
         var _loc3_:Dictionary = this.§4]§;
         var _loc4_:Dictionary = this.§ x§;
         var _loc5_:Dictionary = this.§3>§;
         var _loc6_:Dictionary = this.§+6§;
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
            _loc7_ = this.§7E§.§3w§(_loc3_[_loc1_],_loc4_[_loc1_] - _loc3_[_loc1_]);
            _loc6_[_loc1_] = _loc7_;
            if(_loc8_ < _loc7_)
            {
               _loc8_ = _loc7_;
            }
         }
         this.§4$§ = _loc8_;
         this.§!Y§ = true;
      }
      
      public function get §=&§() : §7"?§
      {
         return this.§7E§;
      }
      
      public function getObject(param1:String) : Object
      {
         return this.§-"7§[param1];
      }
   }
}
