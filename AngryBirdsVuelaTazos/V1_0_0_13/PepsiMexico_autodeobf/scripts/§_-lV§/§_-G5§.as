package §_-lV§
{
   import §_-Wa§.§_-8X§;
   import flash.utils.Dictionary;
   
   public class §_-G5§ implements §_-v§
   {
       
      
      protected var §_-nC§:§_-8X§ = null;
      
      protected var §_-6Q§:Dictionary;
      
      protected var §_-n§:Number = 0.0;
      
      protected var §_-FH§:Boolean = false;
      
      protected var §_-YF§:Object = null;
      
      protected var §_-Hr§:Dictionary;
      
      protected var §_-Rq§:Dictionary;
      
      protected var §_-bg§:Dictionary;
      
      public function §_-G5§()
      {
         this.§_-bg§ = new Dictionary();
         this.§_-6Q§ = new Dictionary();
         this.§_-Rq§ = new Dictionary();
         this.§_-Hr§ = new Dictionary();
         super();
      }
      
      public function setObject(param1:String, param2:Object) : void
      {
         this.§_-YF§[param1] = param2;
      }
      
      public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§_-6Q§[param1] = param2;
         this.§_-Rq§["dest." + param1] = param3;
      }
      
      protected function copyFrom(param1:§_-G5§) : void
      {
         var _loc2_:§_-G5§ = param1 as §_-G5§;
         this.§_-YF§ = _loc2_.§_-YF§;
         this.§_-nC§ = _loc2_.§_-nC§;
         this.§_-7H§(this.§_-bg§,_loc2_.§_-bg§);
         this.§_-7H§(this.§_-6Q§,_loc2_.§_-6Q§);
         this.§_-7H§(this.§_-Rq§,_loc2_.§_-Rq§);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc9_:* = null;
         if(!this.§_-FH§)
         {
            this.resolveValues();
         }
         var _loc3_:Object = this.§_-YF§;
         var _loc4_:§_-8X§ = this.§_-nC§;
         var _loc5_:Dictionary = this.§_-6Q§;
         var _loc6_:Dictionary = this.§_-bg§;
         var _loc8_:Dictionary = this.§_-Hr§;
         for(_loc9_ in _loc5_)
         {
            if(param1 >= _loc8_[_loc9_])
            {
               _loc3_[_loc9_] = _loc5_[_loc9_];
            }
            else
            {
               _loc7_ = _loc6_[_loc9_];
               _loc3_[_loc9_] = _loc4_.§_-eV§(param1,_loc7_,_loc5_[_loc9_] - _loc7_);
            }
         }
      }
      
      private function §_-7H§(param1:Object, param2:Object) : void
      {
         var _loc3_:* = null;
         for(_loc3_ in param2)
         {
            param1[_loc3_] = param2[_loc3_];
         }
      }
      
      public function get duration() : Number
      {
         if(!this.§_-FH§)
         {
            this.resolveValues();
         }
         return this.§_-n§;
      }
      
      protected function newInstance() : §_-G5§
      {
         return new §_-G5§();
      }
      
      public function set §_-4g§(param1:§_-8X§) : void
      {
         this.§_-nC§ = param1;
      }
      
      public function get target() : Object
      {
         return this.§_-YF§;
      }
      
      public function clone() : §_-i2§
      {
         var _loc1_:§_-G5§ = this.newInstance();
         if(_loc1_ != null)
         {
            _loc1_.copyFrom(this);
         }
         return _loc1_;
      }
      
      public function set target(param1:Object) : void
      {
         this.§_-YF§ = param1;
      }
      
      public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§_-bg§[param1] = param2;
         this.§_-Rq§["source." + param1] = param3;
      }
      
      protected function resolveValues() : void
      {
         var _loc1_:* = null;
         var _loc7_:Number = NaN;
         var _loc2_:Object = this.§_-YF§;
         var _loc3_:Dictionary = this.§_-bg§;
         var _loc4_:Dictionary = this.§_-6Q§;
         var _loc5_:Dictionary = this.§_-Rq§;
         var _loc6_:Dictionary = this.§_-Hr§;
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
            _loc7_ = this.§_-nC§.§_-6-§(_loc3_[_loc1_],_loc4_[_loc1_] - _loc3_[_loc1_]);
            _loc6_[_loc1_] = _loc7_;
            if(_loc8_ < _loc7_)
            {
               _loc8_ = _loc7_;
            }
         }
         this.§_-n§ = _loc8_;
         this.§_-FH§ = true;
      }
      
      public function get §_-4g§() : §_-8X§
      {
         return this.§_-nC§;
      }
      
      public function getObject(param1:String) : Object
      {
         return this.§_-YF§[param1];
      }
   }
}
