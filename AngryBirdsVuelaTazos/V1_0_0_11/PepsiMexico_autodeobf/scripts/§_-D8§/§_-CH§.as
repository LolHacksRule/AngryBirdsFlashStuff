package §_-D8§
{
   import §_-7X§.§_-R-§;
   import flash.utils.Dictionary;
   
   public class §_-CH§ implements §_-mB§
   {
       
      
      protected var §_-XO§:§_-R-§ = null;
      
      protected var §_-Ia§:Dictionary;
      
      protected var §_-AO§:Number = 0.0;
      
      protected var §_-Wd§:Boolean = false;
      
      protected var §_-x7§:Object = null;
      
      protected var §_-hZ§:Dictionary;
      
      protected var §_-Sd§:Dictionary;
      
      protected var §_-gP§:Dictionary;
      
      public function §_-CH§()
      {
         this.§_-gP§ = new Dictionary();
         this.§_-Ia§ = new Dictionary();
         this.§_-Sd§ = new Dictionary();
         this.§_-hZ§ = new Dictionary();
         super();
      }
      
      public function setObject(param1:String, param2:Object) : void
      {
         this.§_-x7§[param1] = param2;
      }
      
      public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§_-Ia§[param1] = param2;
         this.§_-Sd§["dest." + param1] = param3;
      }
      
      protected function copyFrom(param1:§_-CH§) : void
      {
         var _loc2_:§_-CH§ = param1 as §_-CH§;
         this.§_-x7§ = _loc2_.§_-x7§;
         this.§_-XO§ = _loc2_.§_-XO§;
         this.§_-K6§(this.§_-gP§,_loc2_.§_-gP§);
         this.§_-K6§(this.§_-Ia§,_loc2_.§_-Ia§);
         this.§_-K6§(this.§_-Sd§,_loc2_.§_-Sd§);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc9_:* = null;
         if(!this.§_-Wd§)
         {
            this.resolveValues();
         }
         var _loc3_:Object = this.§_-x7§;
         var _loc4_:§_-R-§ = this.§_-XO§;
         var _loc5_:Dictionary = this.§_-Ia§;
         var _loc6_:Dictionary = this.§_-gP§;
         var _loc8_:Dictionary = this.§_-hZ§;
         for(_loc9_ in _loc5_)
         {
            if(param1 >= _loc8_[_loc9_])
            {
               _loc3_[_loc9_] = _loc5_[_loc9_];
            }
            else
            {
               _loc7_ = _loc6_[_loc9_];
               _loc3_[_loc9_] = _loc4_.§_-OY§(param1,_loc7_,_loc5_[_loc9_] - _loc7_);
            }
         }
      }
      
      private function §_-K6§(param1:Object, param2:Object) : void
      {
         var _loc3_:* = null;
         for(_loc3_ in param2)
         {
            param1[_loc3_] = param2[_loc3_];
         }
      }
      
      public function get duration() : Number
      {
         if(!this.§_-Wd§)
         {
            this.resolveValues();
         }
         return this.§_-AO§;
      }
      
      protected function newInstance() : §_-CH§
      {
         return new §_-CH§();
      }
      
      public function set §_-HB§(param1:§_-R-§) : void
      {
         this.§_-XO§ = param1;
      }
      
      public function get target() : Object
      {
         return this.§_-x7§;
      }
      
      public function clone() : §_-LY§
      {
         var _loc1_:§_-CH§ = this.newInstance();
         if(_loc1_ != null)
         {
            _loc1_.copyFrom(this);
         }
         return _loc1_;
      }
      
      public function set target(param1:Object) : void
      {
         this.§_-x7§ = param1;
      }
      
      public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§_-gP§[param1] = param2;
         this.§_-Sd§["source." + param1] = param3;
      }
      
      protected function resolveValues() : void
      {
         var _loc1_:* = null;
         var _loc7_:Number = NaN;
         var _loc2_:Object = this.§_-x7§;
         var _loc3_:Dictionary = this.§_-gP§;
         var _loc4_:Dictionary = this.§_-Ia§;
         var _loc5_:Dictionary = this.§_-Sd§;
         var _loc6_:Dictionary = this.§_-hZ§;
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
            _loc7_ = this.§_-XO§.§_-bj§(_loc3_[_loc1_],_loc4_[_loc1_] - _loc3_[_loc1_]);
            _loc6_[_loc1_] = _loc7_;
            if(_loc8_ < _loc7_)
            {
               _loc8_ = _loc7_;
            }
         }
         this.§_-AO§ = _loc8_;
         this.§_-Wd§ = true;
      }
      
      public function get §_-HB§() : §_-R-§
      {
         return this.§_-XO§;
      }
      
      public function getObject(param1:String) : Object
      {
         return this.§_-x7§[param1];
      }
   }
}
