package §?u§
{
   import §^!B§.§1!P§;
   import flash.utils.Dictionary;
   
   public class §1!v§ extends §]%§
   {
       
      
      protected var §?$§:Dictionary;
      
      protected var §@u§:Object = null;
      
      protected var §&G§:Dictionary;
      
      protected var §^Z§:Dictionary;
      
      public function §1!v§()
      {
         this.§^Z§ = new Dictionary();
         this.§?$§ = new Dictionary();
         this.§&G§ = new Dictionary();
         super();
      }
      
      public static function §5"+§(param1:§1!P§) : void
      {
         param1.§^!z§(§1!v§,Object,"*");
      }
      
      override public function setObject(param1:String, param2:Object) : void
      {
         this.§@u§[param1] = param2;
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§?$§[param1] = param2;
         this.§&G§["dest." + param1] = param3;
      }
      
      override protected function newInstance() : §]%§
      {
         return new §1!v§();
      }
      
      override public function get target() : Object
      {
         return this.§@u§;
      }
      
      private function §]!V§(param1:Object, param2:Object) : void
      {
         var _loc3_:* = null;
         for(_loc3_ in param2)
         {
            param1[_loc3_] = param2[_loc3_];
         }
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§^Z§[param1] = param2;
         this.§&G§["source." + param1] = param3;
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc6_:* = null;
         var _loc2_:Number = 1 - param1;
         var _loc3_:Object = this.§@u§;
         var _loc4_:Dictionary = this.§?$§;
         var _loc5_:Dictionary = this.§^Z§;
         for(_loc6_ in _loc4_)
         {
            _loc3_[_loc6_] = _loc5_[_loc6_] * _loc2_ + _loc4_[_loc6_] * param1;
         }
      }
      
      override public function set target(param1:Object) : void
      {
         this.§@u§ = param1;
      }
      
      override protected function resolveValues() : void
      {
         var _loc1_:* = null;
         var _loc2_:Object = this.§@u§;
         var _loc3_:Dictionary = this.§^Z§;
         var _loc4_:Dictionary = this.§?$§;
         var _loc5_:Dictionary = this.§&G§;
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
         return this.§@u§[param1];
      }
      
      override protected function copyFrom(param1:§]%§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§1!v§ = param1 as §1!v§;
         this.§@u§ = _loc2_.§@u§;
         this.§]!V§(this.§^Z§,_loc2_.§^Z§);
         this.§]!V§(this.§?$§,_loc2_.§?$§);
         this.§]!V§(this.§&G§,_loc2_.§&G§);
      }
   }
}
