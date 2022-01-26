package §_-D8§
{
   import §_-wn§.§_-S7§;
   import flash.utils.Dictionary;
   
   public class §_-55§ extends §_-wR§
   {
       
      
      protected var §_-Ia§:Dictionary;
      
      protected var §_-x7§:Object = null;
      
      protected var §_-Sd§:Dictionary;
      
      protected var §_-gP§:Dictionary;
      
      public function §_-55§()
      {
         this.§_-gP§ = new Dictionary();
         this.§_-Ia§ = new Dictionary();
         this.§_-Sd§ = new Dictionary();
         super();
      }
      
      public static function §_-Vo§(param1:§_-S7§) : void
      {
         param1.§_-Vg§(§_-55§,Object,"*");
      }
      
      override public function setObject(param1:String, param2:Object) : void
      {
         this.§_-x7§[param1] = param2;
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§_-Ia§[param1] = param2;
         this.§_-Sd§["dest." + param1] = param3;
      }
      
      override protected function newInstance() : §_-wR§
      {
         return new §_-55§();
      }
      
      override public function get target() : Object
      {
         return this.§_-x7§;
      }
      
      private function §_-K6§(param1:Object, param2:Object) : void
      {
         var _loc3_:* = null;
         for(_loc3_ in param2)
         {
            param1[_loc3_] = param2[_loc3_];
         }
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§_-gP§[param1] = param2;
         this.§_-Sd§["source." + param1] = param3;
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc6_:* = null;
         var _loc2_:Number = 1 - param1;
         var _loc3_:Object = this.§_-x7§;
         var _loc4_:Dictionary = this.§_-Ia§;
         var _loc5_:Dictionary = this.§_-gP§;
         for(_loc6_ in _loc4_)
         {
            _loc3_[_loc6_] = _loc5_[_loc6_] * _loc2_ + _loc4_[_loc6_] * param1;
         }
      }
      
      override public function set target(param1:Object) : void
      {
         this.§_-x7§ = param1;
      }
      
      override protected function resolveValues() : void
      {
         var _loc1_:* = null;
         var _loc2_:Object = this.§_-x7§;
         var _loc3_:Dictionary = this.§_-gP§;
         var _loc4_:Dictionary = this.§_-Ia§;
         var _loc5_:Dictionary = this.§_-Sd§;
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
         }
      }
      
      override public function getObject(param1:String) : Object
      {
         return this.§_-x7§[param1];
      }
      
      override protected function copyFrom(param1:§_-wR§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§_-55§ = param1 as §_-55§;
         this.§_-x7§ = _loc2_.§_-x7§;
         this.§_-K6§(this.§_-gP§,_loc2_.§_-gP§);
         this.§_-K6§(this.§_-Ia§,_loc2_.§_-Ia§);
         this.§_-K6§(this.§_-Sd§,_loc2_.§_-Sd§);
      }
   }
}
