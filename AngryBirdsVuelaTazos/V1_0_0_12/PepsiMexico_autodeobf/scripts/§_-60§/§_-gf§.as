package §_-60§
{
   import §_-lT§.§_-g7§;
   import flash.utils.Dictionary;
   
   public class §_-gf§ implements §_-HC§
   {
       
      
      protected var §_-4g§:§_-g7§ = null;
      
      protected var §_-32§:Dictionary;
      
      protected var §_-w3§:Number = 0.0;
      
      protected var §_-Oi§:Boolean = false;
      
      protected var §_-Db§:Object = null;
      
      protected var §_-tU§:Dictionary;
      
      protected var §_-xU§:Dictionary;
      
      protected var §_-7A§:Dictionary;
      
      public function §_-gf§()
      {
         this.§_-7A§ = new Dictionary();
         this.§_-32§ = new Dictionary();
         this.§_-xU§ = new Dictionary();
         this.§_-tU§ = new Dictionary();
         super();
      }
      
      public function setObject(param1:String, param2:Object) : void
      {
         this.§_-Db§[param1] = param2;
      }
      
      public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§_-32§[param1] = param2;
         this.§_-xU§["dest." + param1] = param3;
      }
      
      protected function copyFrom(param1:§_-gf§) : void
      {
         var _loc2_:§_-gf§ = param1 as §_-gf§;
         this.§_-Db§ = _loc2_.§_-Db§;
         this.§_-4g§ = _loc2_.§_-4g§;
         this.§_-IN§(this.§_-7A§,_loc2_.§_-7A§);
         this.§_-IN§(this.§_-32§,_loc2_.§_-32§);
         this.§_-IN§(this.§_-xU§,_loc2_.§_-xU§);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc9_:* = null;
         if(!this.§_-Oi§)
         {
            this.resolveValues();
         }
         var _loc3_:Object = this.§_-Db§;
         var _loc4_:§_-g7§ = this.§_-4g§;
         var _loc5_:Dictionary = this.§_-32§;
         var _loc6_:Dictionary = this.§_-7A§;
         var _loc8_:Dictionary = this.§_-tU§;
         for(_loc9_ in _loc5_)
         {
            if(param1 >= _loc8_[_loc9_])
            {
               _loc3_[_loc9_] = _loc5_[_loc9_];
            }
            else
            {
               _loc7_ = _loc6_[_loc9_];
               _loc3_[_loc9_] = _loc4_.§_-YJ§(param1,_loc7_,_loc5_[_loc9_] - _loc7_);
            }
         }
      }
      
      private function §_-IN§(param1:Object, param2:Object) : void
      {
         var _loc3_:* = null;
         for(_loc3_ in param2)
         {
            param1[_loc3_] = param2[_loc3_];
         }
      }
      
      public function get duration() : Number
      {
         if(!this.§_-Oi§)
         {
            this.resolveValues();
         }
         return this.§_-w3§;
      }
      
      protected function newInstance() : §_-gf§
      {
         return new §_-gf§();
      }
      
      public function set §_-H9§(param1:§_-g7§) : void
      {
         this.§_-4g§ = param1;
      }
      
      public function get target() : Object
      {
         return this.§_-Db§;
      }
      
      public function clone() : §_-he§
      {
         var _loc1_:§_-gf§ = this.newInstance();
         if(_loc1_ != null)
         {
            _loc1_.copyFrom(this);
         }
         return _loc1_;
      }
      
      public function set target(param1:Object) : void
      {
         this.§_-Db§ = param1;
      }
      
      public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§_-7A§[param1] = param2;
         this.§_-xU§["source." + param1] = param3;
      }
      
      protected function resolveValues() : void
      {
         var _loc1_:* = null;
         var _loc7_:Number = NaN;
         var _loc2_:Object = this.§_-Db§;
         var _loc3_:Dictionary = this.§_-7A§;
         var _loc4_:Dictionary = this.§_-32§;
         var _loc5_:Dictionary = this.§_-xU§;
         var _loc6_:Dictionary = this.§_-tU§;
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
            _loc7_ = this.§_-4g§.§_-EE§(_loc3_[_loc1_],_loc4_[_loc1_] - _loc3_[_loc1_]);
            _loc6_[_loc1_] = _loc7_;
            if(_loc8_ < _loc7_)
            {
               _loc8_ = _loc7_;
            }
         }
         this.§_-w3§ = _loc8_;
         this.§_-Oi§ = true;
      }
      
      public function get §_-H9§() : §_-g7§
      {
         return this.§_-4g§;
      }
      
      public function getObject(param1:String) : Object
      {
         return this.§_-Db§[param1];
      }
   }
}
