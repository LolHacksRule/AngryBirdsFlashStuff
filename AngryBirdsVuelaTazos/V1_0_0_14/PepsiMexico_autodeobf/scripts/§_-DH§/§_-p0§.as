package §_-DH§
{
   import §_-kn§.§_-kA§;
   import flash.utils.Dictionary;
   
   public class §_-p0§ implements §_-Rt§
   {
       
      
      protected var §_-6Y§:§_-kA§ = null;
      
      protected var §_-OR§:Dictionary;
      
      protected var §_-85§:Number = 0.0;
      
      protected var §_-hT§:Boolean = false;
      
      protected var §_-lg§:Object = null;
      
      protected var §_-jI§:Dictionary;
      
      protected var §_-uY§:Dictionary;
      
      protected var §_-Ov§:Dictionary;
      
      public function §_-p0§()
      {
         this.§_-Ov§ = new Dictionary();
         this.§_-OR§ = new Dictionary();
         this.§_-uY§ = new Dictionary();
         this.§_-jI§ = new Dictionary();
         super();
      }
      
      public function setObject(param1:String, param2:Object) : void
      {
         this.§_-lg§[param1] = param2;
      }
      
      public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§_-OR§[param1] = param2;
         this.§_-uY§["dest." + param1] = param3;
      }
      
      protected function copyFrom(param1:§_-p0§) : void
      {
         var _loc2_:§_-p0§ = param1 as §_-p0§;
         this.§_-lg§ = _loc2_.§_-lg§;
         this.§_-6Y§ = _loc2_.§_-6Y§;
         this.§_-QQ§(this.§_-Ov§,_loc2_.§_-Ov§);
         this.§_-QQ§(this.§_-OR§,_loc2_.§_-OR§);
         this.§_-QQ§(this.§_-uY§,_loc2_.§_-uY§);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc9_:* = null;
         if(!this.§_-hT§)
         {
            this.resolveValues();
         }
         var _loc3_:Object = this.§_-lg§;
         var _loc4_:§_-kA§ = this.§_-6Y§;
         var _loc5_:Dictionary = this.§_-OR§;
         var _loc6_:Dictionary = this.§_-Ov§;
         var _loc8_:Dictionary = this.§_-jI§;
         for(_loc9_ in _loc5_)
         {
            if(param1 >= _loc8_[_loc9_])
            {
               _loc3_[_loc9_] = _loc5_[_loc9_];
            }
            else
            {
               _loc7_ = _loc6_[_loc9_];
               _loc3_[_loc9_] = _loc4_.§_-Bq§(param1,_loc7_,_loc5_[_loc9_] - _loc7_);
            }
         }
      }
      
      private function §_-QQ§(param1:Object, param2:Object) : void
      {
         var _loc3_:* = null;
         for(_loc3_ in param2)
         {
            param1[_loc3_] = param2[_loc3_];
         }
      }
      
      public function get duration() : Number
      {
         if(!this.§_-hT§)
         {
            this.resolveValues();
         }
         return this.§_-85§;
      }
      
      protected function newInstance() : §_-p0§
      {
         return new §_-p0§();
      }
      
      public function set §_-Bi§(param1:§_-kA§) : void
      {
         this.§_-6Y§ = param1;
      }
      
      public function get target() : Object
      {
         return this.§_-lg§;
      }
      
      public function clone() : §_-AO§
      {
         var _loc1_:§_-p0§ = this.newInstance();
         if(_loc1_ != null)
         {
            _loc1_.copyFrom(this);
         }
         return _loc1_;
      }
      
      public function set target(param1:Object) : void
      {
         this.§_-lg§ = param1;
      }
      
      public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§_-Ov§[param1] = param2;
         this.§_-uY§["source." + param1] = param3;
      }
      
      protected function resolveValues() : void
      {
         var _loc1_:* = null;
         var _loc7_:Number = NaN;
         var _loc2_:Object = this.§_-lg§;
         var _loc3_:Dictionary = this.§_-Ov§;
         var _loc4_:Dictionary = this.§_-OR§;
         var _loc5_:Dictionary = this.§_-uY§;
         var _loc6_:Dictionary = this.§_-jI§;
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
            _loc7_ = this.§_-6Y§.§_-dt§(_loc3_[_loc1_],_loc4_[_loc1_] - _loc3_[_loc1_]);
            _loc6_[_loc1_] = _loc7_;
            if(_loc8_ < _loc7_)
            {
               _loc8_ = _loc7_;
            }
         }
         this.§_-85§ = _loc8_;
         this.§_-hT§ = true;
      }
      
      public function get §_-Bi§() : §_-kA§
      {
         return this.§_-6Y§;
      }
      
      public function getObject(param1:String) : Object
      {
         return this.§_-lg§[param1];
      }
   }
}
