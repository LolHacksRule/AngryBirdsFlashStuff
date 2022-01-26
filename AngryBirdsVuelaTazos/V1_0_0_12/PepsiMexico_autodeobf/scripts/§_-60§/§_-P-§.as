package §_-60§
{
   import §_-Og§.§_-bt§;
   import flash.utils.Dictionary;
   
   public class §_-P-§ extends §_-5r§
   {
       
      
      protected var §_-32§:Dictionary;
      
      protected var §_-Db§:Object = null;
      
      protected var §_-xU§:Dictionary;
      
      protected var §_-7A§:Dictionary;
      
      public function §_-P-§()
      {
         this.§_-7A§ = new Dictionary();
         this.§_-32§ = new Dictionary();
         this.§_-xU§ = new Dictionary();
         super();
      }
      
      public static function §_-0m§(param1:§_-bt§) : void
      {
         param1.§_-jq§(§_-P-§,Object,"*");
      }
      
      override public function setObject(param1:String, param2:Object) : void
      {
         this.§_-Db§[param1] = param2;
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§_-32§[param1] = param2;
         this.§_-xU§["dest." + param1] = param3;
      }
      
      override protected function newInstance() : §_-5r§
      {
         return new §_-P-§();
      }
      
      override public function get target() : Object
      {
         return this.§_-Db§;
      }
      
      private function §_-IN§(param1:Object, param2:Object) : void
      {
         var _loc3_:* = null;
         for(_loc3_ in param2)
         {
            param1[_loc3_] = param2[_loc3_];
         }
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§_-7A§[param1] = param2;
         this.§_-xU§["source." + param1] = param3;
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc6_:* = null;
         var _loc2_:Number = 1 - param1;
         var _loc3_:Object = this.§_-Db§;
         var _loc4_:Dictionary = this.§_-32§;
         var _loc5_:Dictionary = this.§_-7A§;
         for(_loc6_ in _loc4_)
         {
            _loc3_[_loc6_] = _loc5_[_loc6_] * _loc2_ + _loc4_[_loc6_] * param1;
         }
      }
      
      override public function set target(param1:Object) : void
      {
         this.§_-Db§ = param1;
      }
      
      override protected function resolveValues() : void
      {
         var _loc1_:* = null;
         var _loc2_:Object = this.§_-Db§;
         var _loc3_:Dictionary = this.§_-7A§;
         var _loc4_:Dictionary = this.§_-32§;
         var _loc5_:Dictionary = this.§_-xU§;
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
         return this.§_-Db§[param1];
      }
      
      override protected function copyFrom(param1:§_-5r§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§_-P-§ = param1 as §_-P-§;
         this.§_-Db§ = _loc2_.§_-Db§;
         this.§_-IN§(this.§_-7A§,_loc2_.§_-7A§);
         this.§_-IN§(this.§_-32§,_loc2_.§_-32§);
         this.§_-IN§(this.§_-xU§,_loc2_.§_-xU§);
      }
   }
}
