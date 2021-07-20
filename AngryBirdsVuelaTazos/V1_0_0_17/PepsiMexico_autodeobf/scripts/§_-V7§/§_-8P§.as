package §_-V7§
{
   import §_-wT§.§_-c9§;
   import flash.utils.Dictionary;
   
   public class §_-8P§ extends §_-rJ§
   {
       
      
      protected var §_-3D§:Dictionary;
      
      protected var §_-9Z§:Object = null;
      
      protected var §_-6C§:Dictionary;
      
      protected var §_-CQ§:Dictionary;
      
      public function §_-8P§()
      {
         this.§_-CQ§ = new Dictionary();
         this.§_-3D§ = new Dictionary();
         this.§_-6C§ = new Dictionary();
         super();
      }
      
      public static function §_-mO§(param1:§_-c9§) : void
      {
         param1.§_-Ym§(§_-8P§,Object,"*");
      }
      
      override public function setObject(param1:String, param2:Object) : void
      {
         this.§_-9Z§[param1] = param2;
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§_-3D§[param1] = param2;
         this.§_-6C§["dest." + param1] = param3;
      }
      
      override protected function newInstance() : §_-rJ§
      {
         return new §_-8P§();
      }
      
      override public function get target() : Object
      {
         return this.§_-9Z§;
      }
      
      private function §_-Kh§(param1:Object, param2:Object) : void
      {
         var _loc3_:* = null;
         for(_loc3_ in param2)
         {
            param1[_loc3_] = param2[_loc3_];
         }
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§_-CQ§[param1] = param2;
         this.§_-6C§["source." + param1] = param3;
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc6_:* = null;
         var _loc2_:Number = 1 - param1;
         var _loc3_:Object = this.§_-9Z§;
         var _loc4_:Dictionary = this.§_-3D§;
         var _loc5_:Dictionary = this.§_-CQ§;
         for(_loc6_ in _loc4_)
         {
            _loc3_[_loc6_] = _loc5_[_loc6_] * _loc2_ + _loc4_[_loc6_] * param1;
         }
      }
      
      override public function set target(param1:Object) : void
      {
         this.§_-9Z§ = param1;
      }
      
      override protected function resolveValues() : void
      {
         var _loc1_:* = null;
         var _loc2_:Object = this.§_-9Z§;
         var _loc3_:Dictionary = this.§_-CQ§;
         var _loc4_:Dictionary = this.§_-3D§;
         var _loc5_:Dictionary = this.§_-6C§;
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
         return this.§_-9Z§[param1];
      }
      
      override protected function copyFrom(param1:§_-rJ§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§_-8P§ = param1 as §_-8P§;
         this.§_-9Z§ = _loc2_.§_-9Z§;
         this.§_-Kh§(this.§_-CQ§,_loc2_.§_-CQ§);
         this.§_-Kh§(this.§_-3D§,_loc2_.§_-3D§);
         this.§_-Kh§(this.§_-6C§,_loc2_.§_-6C§);
      }
   }
}
