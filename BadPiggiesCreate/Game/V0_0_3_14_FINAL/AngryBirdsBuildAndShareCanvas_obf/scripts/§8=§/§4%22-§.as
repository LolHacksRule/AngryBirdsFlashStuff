package §8=§
{
   import §2p§.§1>§;
   import flash.utils.Dictionary;
   
   public class §4"-§ implements §36§
   {
       
      
      protected var §!i§:§1>§ = null;
      
      protected var §,_§:Dictionary;
      
      protected var §?"3§:Number = 0.0;
      
      protected var § "&§:Boolean = false;
      
      protected var §"!c§:Object = null;
      
      protected var §[m§:Dictionary;
      
      protected var §^"?§:Dictionary;
      
      protected var §-!m§:Dictionary;
      
      public function §4"-§()
      {
         this.§-!m§ = new Dictionary();
         this.§,_§ = new Dictionary();
         this.§^"?§ = new Dictionary();
         this.§[m§ = new Dictionary();
         super();
      }
      
      public function setObject(param1:String, param2:Object) : void
      {
         this.§"!c§[param1] = param2;
      }
      
      public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§,_§[param1] = param2;
         this.§^"?§["dest." + param1] = param3;
      }
      
      protected function copyFrom(param1:§4"-§) : void
      {
         var _loc2_:§4"-§ = param1 as §4"-§;
         this.§"!c§ = _loc2_.§"!c§;
         this.§!i§ = _loc2_.§!i§;
         this.§&'§(this.§-!m§,_loc2_.§-!m§);
         this.§&'§(this.§,_§,_loc2_.§,_§);
         this.§&'§(this.§^"?§,_loc2_.§^"?§);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc9_:* = null;
         if(!this.§ "&§)
         {
            this.resolveValues();
         }
         var _loc3_:Object = this.§"!c§;
         var _loc4_:§1>§ = this.§!i§;
         var _loc5_:Dictionary = this.§,_§;
         var _loc6_:Dictionary = this.§-!m§;
         var _loc8_:Dictionary = this.§[m§;
         for(_loc9_ in _loc5_)
         {
            if(param1 >= _loc8_[_loc9_])
            {
               _loc3_[_loc9_] = _loc5_[_loc9_];
            }
            else
            {
               _loc7_ = _loc6_[_loc9_];
               _loc3_[_loc9_] = _loc4_.§6^§(param1,_loc7_,_loc5_[_loc9_] - _loc7_);
            }
         }
      }
      
      private function §&'§(param1:Object, param2:Object) : void
      {
         var _loc3_:* = null;
         for(_loc3_ in param2)
         {
            param1[_loc3_] = param2[_loc3_];
         }
      }
      
      public function get duration() : Number
      {
         if(!this.§ "&§)
         {
            this.resolveValues();
         }
         return this.§?"3§;
      }
      
      protected function newInstance() : §4"-§
      {
         return new §4"-§();
      }
      
      public function set §!!T§(param1:§1>§) : void
      {
         this.§!i§ = param1;
      }
      
      public function get target() : Object
      {
         return this.§"!c§;
      }
      
      public function clone() : §+?§
      {
         var _loc1_:§4"-§ = this.newInstance();
         if(_loc1_ != null)
         {
            _loc1_.copyFrom(this);
         }
         return _loc1_;
      }
      
      public function set target(param1:Object) : void
      {
         this.§"!c§ = param1;
      }
      
      public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§-!m§[param1] = param2;
         this.§^"?§["source." + param1] = param3;
      }
      
      protected function resolveValues() : void
      {
         var _loc1_:* = null;
         var _loc7_:Number = NaN;
         var _loc2_:Object = this.§"!c§;
         var _loc3_:Dictionary = this.§-!m§;
         var _loc4_:Dictionary = this.§,_§;
         var _loc5_:Dictionary = this.§^"?§;
         var _loc6_:Dictionary = this.§[m§;
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
            _loc7_ = this.§!i§.§0G§(_loc3_[_loc1_],_loc4_[_loc1_] - _loc3_[_loc1_]);
            _loc6_[_loc1_] = _loc7_;
            if(_loc8_ < _loc7_)
            {
               _loc8_ = _loc7_;
            }
         }
         this.§?"3§ = _loc8_;
         this.§ "&§ = true;
      }
      
      public function get §!!T§() : §1>§
      {
         return this.§!i§;
      }
      
      public function getObject(param1:String) : Object
      {
         return this.§"!c§[param1];
      }
   }
}
