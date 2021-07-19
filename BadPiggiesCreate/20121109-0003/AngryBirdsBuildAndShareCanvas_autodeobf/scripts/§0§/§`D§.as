package §0§
{
   import §0x§.§?"3§;
   import flash.utils.Dictionary;
   
   public class §`D§ implements §,l§
   {
       
      
      protected var §#"+§:§?"3§ = null;
      
      protected var §8A§:Dictionary;
      
      protected var §2!d§:Number = 0.0;
      
      protected var § +§:Boolean = false;
      
      protected var §[l§:Object = null;
      
      protected var §!"-§:Dictionary;
      
      protected var §=!9§:Dictionary;
      
      protected var §`v§:Dictionary;
      
      public function §`D§()
      {
         this.§`v§ = new Dictionary();
         this.§8A§ = new Dictionary();
         this.§=!9§ = new Dictionary();
         this.§!"-§ = new Dictionary();
         super();
      }
      
      public function setObject(param1:String, param2:Object) : void
      {
         this.§[l§[param1] = param2;
      }
      
      public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§8A§[param1] = param2;
         this.§=!9§["dest." + param1] = param3;
      }
      
      protected function copyFrom(param1:§`D§) : void
      {
         var _loc2_:§`D§ = param1 as §`D§;
         this.§[l§ = _loc2_.§[l§;
         this.§#"+§ = _loc2_.§#"+§;
         this.§ !+§(this.§`v§,_loc2_.§`v§);
         this.§ !+§(this.§8A§,_loc2_.§8A§);
         this.§ !+§(this.§=!9§,_loc2_.§=!9§);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc9_:* = null;
         if(!this.§ +§)
         {
            this.resolveValues();
         }
         var _loc3_:Object = this.§[l§;
         var _loc4_:§?"3§ = this.§#"+§;
         var _loc5_:Dictionary = this.§8A§;
         var _loc6_:Dictionary = this.§`v§;
         var _loc8_:Dictionary = this.§!"-§;
         for(_loc9_ in _loc5_)
         {
            if(param1 >= _loc8_[_loc9_])
            {
               _loc3_[_loc9_] = _loc5_[_loc9_];
            }
            else
            {
               _loc7_ = _loc6_[_loc9_];
               _loc3_[_loc9_] = _loc4_.§85§(param1,_loc7_,_loc5_[_loc9_] - _loc7_);
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
         if(!this.§ +§)
         {
            this.resolveValues();
         }
         return this.§2!d§;
      }
      
      protected function newInstance() : §`D§
      {
         return new §`D§();
      }
      
      public function set §3!`§(param1:§?"3§) : void
      {
         this.§#"+§ = param1;
      }
      
      public function get target() : Object
      {
         return this.§[l§;
      }
      
      public function clone() : §-!G§
      {
         var _loc1_:§`D§ = this.newInstance();
         if(_loc1_ != null)
         {
            _loc1_.copyFrom(this);
         }
         return _loc1_;
      }
      
      public function set target(param1:Object) : void
      {
         this.§[l§ = param1;
      }
      
      public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§`v§[param1] = param2;
         this.§=!9§["source." + param1] = param3;
      }
      
      protected function resolveValues() : void
      {
         var _loc1_:* = null;
         var _loc7_:Number = NaN;
         var _loc2_:Object = this.§[l§;
         var _loc3_:Dictionary = this.§`v§;
         var _loc4_:Dictionary = this.§8A§;
         var _loc5_:Dictionary = this.§=!9§;
         var _loc6_:Dictionary = this.§!"-§;
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
            _loc7_ = this.§#"+§.§3!z§(_loc3_[_loc1_],_loc4_[_loc1_] - _loc3_[_loc1_]);
            _loc6_[_loc1_] = _loc7_;
            if(_loc8_ < _loc7_)
            {
               _loc8_ = _loc7_;
            }
         }
         this.§2!d§ = _loc8_;
         this.§ +§ = true;
      }
      
      public function get §3!`§() : §?"3§
      {
         return this.§#"+§;
      }
      
      public function getObject(param1:String) : Object
      {
         return this.§[l§[param1];
      }
   }
}
