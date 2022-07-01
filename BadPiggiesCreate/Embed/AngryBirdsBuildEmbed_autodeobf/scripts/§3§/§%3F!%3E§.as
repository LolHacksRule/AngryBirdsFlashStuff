package §3§
{
   import §]s§.§&[§;
   import flash.utils.Dictionary;
   
   public class §?!>§ extends §8Y§
   {
       
      
      protected var §;u§:Dictionary;
      
      protected var §?!p§:Object = null;
      
      protected var §'!?§:Dictionary;
      
      protected var §%f§:Dictionary;
      
      public function §?!>§()
      {
         this.§%f§ = new Dictionary();
         this.§;u§ = new Dictionary();
         this.§'!?§ = new Dictionary();
         super();
      }
      
      public static function §-V§(param1:§&[§) : void
      {
         param1.§3!3§(§?!>§,Object,"*");
      }
      
      override public function setObject(param1:String, param2:Object) : void
      {
         this.§?!p§[param1] = param2;
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§;u§[param1] = param2;
         this.§'!?§["dest." + param1] = param3;
      }
      
      override protected function newInstance() : §8Y§
      {
         return new §?!>§();
      }
      
      override public function get target() : Object
      {
         return this.§?!p§;
      }
      
      private function § !+§(param1:Object, param2:Object) : void
      {
         var _loc3_:* = null;
         for(_loc3_ in param2)
         {
            param1[_loc3_] = param2[_loc3_];
         }
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§%f§[param1] = param2;
         this.§'!?§["source." + param1] = param3;
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc6_:* = null;
         var _loc2_:Number = 1 - param1;
         var _loc3_:Object = this.§?!p§;
         var _loc4_:Dictionary = this.§;u§;
         var _loc5_:Dictionary = this.§%f§;
         for(_loc6_ in _loc4_)
         {
            _loc3_[_loc6_] = _loc5_[_loc6_] * _loc2_ + _loc4_[_loc6_] * param1;
         }
      }
      
      override public function set target(param1:Object) : void
      {
         this.§?!p§ = param1;
      }
      
      override protected function resolveValues() : void
      {
         var _loc1_:* = null;
         var _loc2_:Object = this.§?!p§;
         var _loc3_:Dictionary = this.§%f§;
         var _loc4_:Dictionary = this.§;u§;
         var _loc5_:Dictionary = this.§'!?§;
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
         return this.§?!p§[param1];
      }
      
      override protected function copyFrom(param1:§8Y§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§?!>§ = param1 as §?!>§;
         this.§?!p§ = _loc2_.§?!p§;
         this.§ !+§(this.§%f§,_loc2_.§%f§);
         this.§ !+§(this.§;u§,_loc2_.§;u§);
         this.§ !+§(this.§'!?§,_loc2_.§'!?§);
      }
   }
}
