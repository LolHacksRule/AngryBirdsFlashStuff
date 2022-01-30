package §6!F§
{
   import §7"+§.§]F§;
   import flash.utils.Dictionary;
   
   public class §2%§ implements §1!]§
   {
       
      
      protected var §'+§:§]F§ = null;
      
      protected var §,!f§:Dictionary;
      
      protected var §#!H§:Number = 0.0;
      
      protected var §6!s§:Boolean = false;
      
      protected var §>!C§:Object = null;
      
      protected var §4!V§:Dictionary;
      
      protected var §%V§:Dictionary;
      
      protected var §1[§:Dictionary;
      
      public function §2%§()
      {
         this.§1[§ = new Dictionary();
         this.§,!f§ = new Dictionary();
         this.§%V§ = new Dictionary();
         this.§4!V§ = new Dictionary();
         super();
      }
      
      public function setObject(param1:String, param2:Object) : void
      {
         this.§>!C§[param1] = param2;
      }
      
      public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§,!f§[param1] = param2;
         this.§%V§["dest." + param1] = param3;
      }
      
      protected function copyFrom(param1:§2%§) : void
      {
         var _loc2_:§2%§ = param1 as §2%§;
         this.§>!C§ = _loc2_.§>!C§;
         this.§'+§ = _loc2_.§'+§;
         this.§2l§(this.§1[§,_loc2_.§1[§);
         this.§2l§(this.§,!f§,_loc2_.§,!f§);
         this.§2l§(this.§%V§,_loc2_.§%V§);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc9_:* = null;
         if(!this.§6!s§)
         {
            this.resolveValues();
         }
         var _loc3_:Object = this.§>!C§;
         var _loc4_:§]F§ = this.§'+§;
         var _loc5_:Dictionary = this.§,!f§;
         var _loc6_:Dictionary = this.§1[§;
         var _loc8_:Dictionary = this.§4!V§;
         for(_loc9_ in _loc5_)
         {
            if(param1 >= _loc8_[_loc9_])
            {
               _loc3_[_loc9_] = _loc5_[_loc9_];
            }
            else
            {
               _loc7_ = _loc6_[_loc9_];
               _loc3_[_loc9_] = _loc4_.§2!i§(param1,_loc7_,_loc5_[_loc9_] - _loc7_);
            }
         }
      }
      
      private function §2l§(param1:Object, param2:Object) : void
      {
         var _loc3_:* = null;
         for(_loc3_ in param2)
         {
            param1[_loc3_] = param2[_loc3_];
         }
      }
      
      public function get duration() : Number
      {
         if(!this.§6!s§)
         {
            this.resolveValues();
         }
         return this.§#!H§;
      }
      
      protected function newInstance() : §2%§
      {
         return new §2%§();
      }
      
      public function set §-5§(param1:§]F§) : void
      {
         this.§'+§ = param1;
      }
      
      public function get target() : Object
      {
         return this.§>!C§;
      }
      
      public function clone() : §8w§
      {
         var _loc1_:§2%§ = this.newInstance();
         if(_loc1_ != null)
         {
            _loc1_.copyFrom(this);
         }
         return _loc1_;
      }
      
      public function set target(param1:Object) : void
      {
         this.§>!C§ = param1;
      }
      
      public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§1[§[param1] = param2;
         this.§%V§["source." + param1] = param3;
      }
      
      protected function resolveValues() : void
      {
         var _loc1_:* = null;
         var _loc7_:Number = NaN;
         var _loc2_:Object = this.§>!C§;
         var _loc3_:Dictionary = this.§1[§;
         var _loc4_:Dictionary = this.§,!f§;
         var _loc5_:Dictionary = this.§%V§;
         var _loc6_:Dictionary = this.§4!V§;
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
            _loc7_ = this.§'+§.§+! §(_loc3_[_loc1_],_loc4_[_loc1_] - _loc3_[_loc1_]);
            _loc6_[_loc1_] = _loc7_;
            if(_loc8_ < _loc7_)
            {
               _loc8_ = _loc7_;
            }
         }
         this.§#!H§ = _loc8_;
         this.§6!s§ = true;
      }
      
      public function get §-5§() : §]F§
      {
         return this.§'+§;
      }
      
      public function getObject(param1:String) : Object
      {
         return this.§>!C§[param1];
      }
   }
}
