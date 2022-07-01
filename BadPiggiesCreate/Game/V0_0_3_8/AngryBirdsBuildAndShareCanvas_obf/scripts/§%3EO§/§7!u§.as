package §>O§
{
   import §9!j§.§'"#§;
   import flash.utils.Dictionary;
   
   public class §7!u§ extends §4!!§
   {
       
      
      protected var §]q§:Dictionary;
      
      protected var §,@§:Object = null;
      
      protected var §&N§:Dictionary;
      
      protected var § [§:Dictionary;
      
      public function §7!u§()
      {
         this.§ [§ = new Dictionary();
         this.§]q§ = new Dictionary();
         this.§&N§ = new Dictionary();
         super();
      }
      
      public static function §"!%§(param1:§'"#§) : void
      {
         param1.§=!A§(§7!u§,Object,"*");
      }
      
      override public function setObject(param1:String, param2:Object) : void
      {
         this.§,@§[param1] = param2;
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§]q§[param1] = param2;
         this.§&N§["dest." + param1] = param3;
      }
      
      override protected function newInstance() : §4!!§
      {
         return new §7!u§();
      }
      
      override public function get target() : Object
      {
         return this.§,@§;
      }
      
      private function §0"$§(param1:Object, param2:Object) : void
      {
         var _loc3_:* = null;
         for(_loc3_ in param2)
         {
            param1[_loc3_] = param2[_loc3_];
         }
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§ [§[param1] = param2;
         this.§&N§["source." + param1] = param3;
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc6_:* = null;
         var _loc2_:Number = 1 - param1;
         var _loc3_:Object = this.§,@§;
         var _loc4_:Dictionary = this.§]q§;
         var _loc5_:Dictionary = this.§ [§;
         for(_loc6_ in _loc4_)
         {
            _loc3_[_loc6_] = _loc5_[_loc6_] * _loc2_ + _loc4_[_loc6_] * param1;
         }
      }
      
      override public function set target(param1:Object) : void
      {
         this.§,@§ = param1;
      }
      
      override protected function resolveValues() : void
      {
         var _loc1_:* = null;
         var _loc2_:Object = this.§,@§;
         var _loc3_:Dictionary = this.§ [§;
         var _loc4_:Dictionary = this.§]q§;
         var _loc5_:Dictionary = this.§&N§;
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
         return this.§,@§[param1];
      }
      
      override protected function copyFrom(param1:§4!!§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§7!u§ = param1 as §7!u§;
         this.§,@§ = _loc2_.§,@§;
         this.§0"$§(this.§ [§,_loc2_.§ [§);
         this.§0"$§(this.§]q§,_loc2_.§]q§);
         this.§0"$§(this.§&N§,_loc2_.§&N§);
      }
   }
}
