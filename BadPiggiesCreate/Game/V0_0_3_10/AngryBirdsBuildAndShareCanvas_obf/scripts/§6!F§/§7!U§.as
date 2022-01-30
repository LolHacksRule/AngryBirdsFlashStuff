package §6!F§
{
   import § !R§.§5!-§;
   import flash.utils.Dictionary;
   
   public class §7!U§ extends §>!%§
   {
       
      
      protected var §,!f§:Dictionary;
      
      protected var §>!C§:Object = null;
      
      protected var §%V§:Dictionary;
      
      protected var §1[§:Dictionary;
      
      public function §7!U§()
      {
         this.§1[§ = new Dictionary();
         this.§,!f§ = new Dictionary();
         this.§%V§ = new Dictionary();
         super();
      }
      
      public static function §8!m§(param1:§5!-§) : void
      {
         param1.§&!C§(§7!U§,Object,"*");
      }
      
      override public function setObject(param1:String, param2:Object) : void
      {
         this.§>!C§[param1] = param2;
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§,!f§[param1] = param2;
         this.§%V§["dest." + param1] = param3;
      }
      
      override protected function newInstance() : §>!%§
      {
         return new §7!U§();
      }
      
      override public function get target() : Object
      {
         return this.§>!C§;
      }
      
      private function §2l§(param1:Object, param2:Object) : void
      {
         var _loc3_:* = null;
         for(_loc3_ in param2)
         {
            param1[_loc3_] = param2[_loc3_];
         }
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§1[§[param1] = param2;
         this.§%V§["source." + param1] = param3;
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc6_:* = null;
         var _loc2_:Number = 1 - param1;
         var _loc3_:Object = this.§>!C§;
         var _loc4_:Dictionary = this.§,!f§;
         var _loc5_:Dictionary = this.§1[§;
         for(_loc6_ in _loc4_)
         {
            _loc3_[_loc6_] = _loc5_[_loc6_] * _loc2_ + _loc4_[_loc6_] * param1;
         }
      }
      
      override public function set target(param1:Object) : void
      {
         this.§>!C§ = param1;
      }
      
      override protected function resolveValues() : void
      {
         var _loc1_:* = null;
         var _loc2_:Object = this.§>!C§;
         var _loc3_:Dictionary = this.§1[§;
         var _loc4_:Dictionary = this.§,!f§;
         var _loc5_:Dictionary = this.§%V§;
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
         return this.§>!C§[param1];
      }
      
      override protected function copyFrom(param1:§>!%§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§7!U§ = param1 as §7!U§;
         this.§>!C§ = _loc2_.§>!C§;
         this.§2l§(this.§1[§,_loc2_.§1[§);
         this.§2l§(this.§,!f§,_loc2_.§,!f§);
         this.§2l§(this.§%V§,_loc2_.§%V§);
      }
   }
}
