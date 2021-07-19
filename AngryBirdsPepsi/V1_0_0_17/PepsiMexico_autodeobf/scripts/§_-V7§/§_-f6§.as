package §_-V7§
{
   import §_-5y§.§_-Bf§;
   import flash.utils.Dictionary;
   
   public class §_-f6§ implements §_-gL§
   {
       
      
      protected var §_-yQ§:§_-Bf§ = null;
      
      protected var §_-3D§:Dictionary;
      
      protected var §_-2Q§:Number = 0.0;
      
      protected var §_-C8§:Boolean = false;
      
      protected var §_-9Z§:Object = null;
      
      protected var §_-7A§:Dictionary;
      
      protected var §_-6C§:Dictionary;
      
      protected var §_-CQ§:Dictionary;
      
      public function §_-f6§()
      {
         this.§_-CQ§ = new Dictionary();
         this.§_-3D§ = new Dictionary();
         this.§_-6C§ = new Dictionary();
         this.§_-7A§ = new Dictionary();
         super();
      }
      
      public function setObject(param1:String, param2:Object) : void
      {
         this.§_-9Z§[param1] = param2;
      }
      
      public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§_-3D§[param1] = param2;
         this.§_-6C§["dest." + param1] = param3;
      }
      
      protected function copyFrom(param1:§_-f6§) : void
      {
         var _loc2_:§_-f6§ = param1 as §_-f6§;
         this.§_-9Z§ = _loc2_.§_-9Z§;
         this.§_-yQ§ = _loc2_.§_-yQ§;
         this.§_-Kh§(this.§_-CQ§,_loc2_.§_-CQ§);
         this.§_-Kh§(this.§_-3D§,_loc2_.§_-3D§);
         this.§_-Kh§(this.§_-6C§,_loc2_.§_-6C§);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc9_:* = null;
         if(!this.§_-C8§)
         {
            this.resolveValues();
         }
         var _loc3_:Object = this.§_-9Z§;
         var _loc4_:§_-Bf§ = this.§_-yQ§;
         var _loc5_:Dictionary = this.§_-3D§;
         var _loc6_:Dictionary = this.§_-CQ§;
         var _loc8_:Dictionary = this.§_-7A§;
         for(_loc9_ in _loc5_)
         {
            if(param1 >= _loc8_[_loc9_])
            {
               _loc3_[_loc9_] = _loc5_[_loc9_];
            }
            else
            {
               _loc7_ = _loc6_[_loc9_];
               _loc3_[_loc9_] = _loc4_.§_-3u§(param1,_loc7_,_loc5_[_loc9_] - _loc7_);
            }
         }
      }
      
      private function §_-Kh§(param1:Object, param2:Object) : void
      {
         var _loc3_:* = null;
         for(_loc3_ in param2)
         {
            param1[_loc3_] = param2[_loc3_];
         }
      }
      
      public function get duration() : Number
      {
         if(!this.§_-C8§)
         {
            this.resolveValues();
         }
         return this.§_-2Q§;
      }
      
      protected function newInstance() : §_-f6§
      {
         return new §_-f6§();
      }
      
      public function set §_-5E§(param1:§_-Bf§) : void
      {
         this.§_-yQ§ = param1;
      }
      
      public function get target() : Object
      {
         return this.§_-9Z§;
      }
      
      public function clone() : §_-S1§
      {
         var _loc1_:§_-f6§ = this.newInstance();
         if(_loc1_ != null)
         {
            _loc1_.copyFrom(this);
         }
         return _loc1_;
      }
      
      public function set target(param1:Object) : void
      {
         this.§_-9Z§ = param1;
      }
      
      public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§_-CQ§[param1] = param2;
         this.§_-6C§["source." + param1] = param3;
      }
      
      protected function resolveValues() : void
      {
         var _loc1_:* = null;
         var _loc7_:Number = NaN;
         var _loc2_:Object = this.§_-9Z§;
         var _loc3_:Dictionary = this.§_-CQ§;
         var _loc4_:Dictionary = this.§_-3D§;
         var _loc5_:Dictionary = this.§_-6C§;
         var _loc6_:Dictionary = this.§_-7A§;
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
            _loc7_ = this.§_-yQ§.§_-up§(_loc3_[_loc1_],_loc4_[_loc1_] - _loc3_[_loc1_]);
            _loc6_[_loc1_] = _loc7_;
            if(_loc8_ < _loc7_)
            {
               _loc8_ = _loc7_;
            }
         }
         this.§_-2Q§ = _loc8_;
         this.§_-C8§ = true;
      }
      
      public function get §_-5E§() : §_-Bf§
      {
         return this.§_-yQ§;
      }
      
      public function getObject(param1:String) : Object
      {
         return this.§_-9Z§[param1];
      }
   }
}
