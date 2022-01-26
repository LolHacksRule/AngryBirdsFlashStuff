package §_-lV§
{
   import §_-OS§.§_-rl§;
   import flash.utils.Dictionary;
   
   public class §_-mC§ extends §_-ZS§
   {
       
      
      protected var §_-6Q§:Dictionary;
      
      protected var §_-YF§:Object = null;
      
      protected var §_-Rq§:Dictionary;
      
      protected var §_-bg§:Dictionary;
      
      public function §_-mC§()
      {
         this.§_-bg§ = new Dictionary();
         this.§_-6Q§ = new Dictionary();
         this.§_-Rq§ = new Dictionary();
         super();
      }
      
      public static function §_-5B§(param1:§_-rl§) : void
      {
         param1.§_-We§(§_-mC§,Object,"*");
      }
      
      override public function setObject(param1:String, param2:Object) : void
      {
         this.§_-YF§[param1] = param2;
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§_-6Q§[param1] = param2;
         this.§_-Rq§["dest." + param1] = param3;
      }
      
      override protected function newInstance() : §_-ZS§
      {
         return new §_-mC§();
      }
      
      override public function get target() : Object
      {
         return this.§_-YF§;
      }
      
      private function §_-7H§(param1:Object, param2:Object) : void
      {
         var _loc3_:* = null;
         for(_loc3_ in param2)
         {
            param1[_loc3_] = param2[_loc3_];
         }
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§_-bg§[param1] = param2;
         this.§_-Rq§["source." + param1] = param3;
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc6_:* = null;
         var _loc2_:Number = 1 - param1;
         var _loc3_:Object = this.§_-YF§;
         var _loc4_:Dictionary = this.§_-6Q§;
         var _loc5_:Dictionary = this.§_-bg§;
         for(_loc6_ in _loc4_)
         {
            _loc3_[_loc6_] = _loc5_[_loc6_] * _loc2_ + _loc4_[_loc6_] * param1;
         }
      }
      
      override public function set target(param1:Object) : void
      {
         this.§_-YF§ = param1;
      }
      
      override protected function resolveValues() : void
      {
         var _loc1_:* = null;
         var _loc2_:Object = this.§_-YF§;
         var _loc3_:Dictionary = this.§_-bg§;
         var _loc4_:Dictionary = this.§_-6Q§;
         var _loc5_:Dictionary = this.§_-Rq§;
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
         return this.§_-YF§[param1];
      }
      
      override protected function copyFrom(param1:§_-ZS§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§_-mC§ = param1 as §_-mC§;
         this.§_-YF§ = _loc2_.§_-YF§;
         this.§_-7H§(this.§_-bg§,_loc2_.§_-bg§);
         this.§_-7H§(this.§_-6Q§,_loc2_.§_-6Q§);
         this.§_-7H§(this.§_-Rq§,_loc2_.§_-Rq§);
      }
   }
}
