package §_-9w§
{
   import §_-JU§.§_-Is§;
   import flash.utils.Dictionary;
   
   public class §_-TT§ implements §_-HK§
   {
       
      
      protected var §_-TE§:§_-Is§ = null;
      
      protected var §_-nk§:Dictionary;
      
      protected var §_-3q§:Number = 0.0;
      
      protected var §_-Yv§:Boolean = false;
      
      protected var §_-CB§:Object = null;
      
      protected var §_-sA§:Dictionary;
      
      protected var §_-aj§:Dictionary;
      
      protected var §_-nm§:Dictionary;
      
      public function §_-TT§()
      {
         this.§_-nm§ = new Dictionary();
         this.§_-nk§ = new Dictionary();
         this.§_-aj§ = new Dictionary();
         this.§_-sA§ = new Dictionary();
         super();
      }
      
      public function setObject(param1:String, param2:Object) : void
      {
         this.§_-CB§[param1] = param2;
      }
      
      public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§_-nk§[param1] = param2;
         this.§_-aj§["dest." + param1] = param3;
      }
      
      protected function copyFrom(param1:§_-TT§) : void
      {
         var _loc2_:§_-TT§ = param1 as §_-TT§;
         this.§_-CB§ = _loc2_.§_-CB§;
         this.§_-TE§ = _loc2_.§_-TE§;
         this.§_-cg§(this.§_-nm§,_loc2_.§_-nm§);
         this.§_-cg§(this.§_-nk§,_loc2_.§_-nk§);
         this.§_-cg§(this.§_-aj§,_loc2_.§_-aj§);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc9_:* = null;
         if(!this.§_-Yv§)
         {
            this.resolveValues();
         }
         var _loc3_:Object = this.§_-CB§;
         var _loc4_:§_-Is§ = this.§_-TE§;
         var _loc5_:Dictionary = this.§_-nk§;
         var _loc6_:Dictionary = this.§_-nm§;
         var _loc8_:Dictionary = this.§_-sA§;
         for(_loc9_ in _loc5_)
         {
            if(param1 >= _loc8_[_loc9_])
            {
               _loc3_[_loc9_] = _loc5_[_loc9_];
            }
            else
            {
               _loc7_ = _loc6_[_loc9_];
               _loc3_[_loc9_] = _loc4_.§_-WA§(param1,_loc7_,_loc5_[_loc9_] - _loc7_);
            }
         }
      }
      
      private function §_-cg§(param1:Object, param2:Object) : void
      {
         var _loc3_:* = null;
         for(_loc3_ in param2)
         {
            param1[_loc3_] = param2[_loc3_];
         }
      }
      
      public function get duration() : Number
      {
         if(!this.§_-Yv§)
         {
            this.resolveValues();
         }
         return this.§_-3q§;
      }
      
      protected function newInstance() : §_-TT§
      {
         return new §_-TT§();
      }
      
      public function set §_-gl§(param1:§_-Is§) : void
      {
         this.§_-TE§ = param1;
      }
      
      public function get target() : Object
      {
         return this.§_-CB§;
      }
      
      public function clone() : §_-l2§
      {
         var _loc1_:§_-TT§ = this.newInstance();
         if(_loc1_ != null)
         {
            _loc1_.copyFrom(this);
         }
         return _loc1_;
      }
      
      public function set target(param1:Object) : void
      {
         this.§_-CB§ = param1;
      }
      
      public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§_-nm§[param1] = param2;
         this.§_-aj§["source." + param1] = param3;
      }
      
      protected function resolveValues() : void
      {
         var _loc1_:* = null;
         var _loc7_:Number = NaN;
         var _loc2_:Object = this.§_-CB§;
         var _loc3_:Dictionary = this.§_-nm§;
         var _loc4_:Dictionary = this.§_-nk§;
         var _loc5_:Dictionary = this.§_-aj§;
         var _loc6_:Dictionary = this.§_-sA§;
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
            _loc7_ = this.§_-TE§.§_-Fn§(_loc3_[_loc1_],_loc4_[_loc1_] - _loc3_[_loc1_]);
            _loc6_[_loc1_] = _loc7_;
            if(_loc8_ < _loc7_)
            {
               _loc8_ = _loc7_;
            }
         }
         this.§_-3q§ = _loc8_;
         this.§_-Yv§ = true;
      }
      
      public function get §_-gl§() : §_-Is§
      {
         return this.§_-TE§;
      }
      
      public function getObject(param1:String) : Object
      {
         return this.§_-CB§[param1];
      }
   }
}
