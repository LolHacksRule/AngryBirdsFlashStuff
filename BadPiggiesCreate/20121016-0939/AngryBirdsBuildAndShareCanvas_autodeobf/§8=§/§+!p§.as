package §8=§
{
   import §<!3§.§"`§;
   import flash.utils.Dictionary;
   
   public class §+!p§ extends §4"+§
   {
       
      
      protected var §,_§:Dictionary;
      
      protected var §"!c§:Object = null;
      
      protected var §^"?§:Dictionary;
      
      protected var §-!m§:Dictionary;
      
      public function §+!p§()
      {
         this.§-!m§ = new Dictionary();
         this.§,_§ = new Dictionary();
         this.§^"?§ = new Dictionary();
         super();
      }
      
      public static function §>!X§(param1:§"`§) : void
      {
         param1.§0!B§(§+!p§,Object,"*");
      }
      
      override public function setObject(param1:String, param2:Object) : void
      {
         this.§"!c§[param1] = param2;
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§,_§[param1] = param2;
         this.§^"?§["dest." + param1] = param3;
      }
      
      override protected function newInstance() : §4"+§
      {
         return new §+!p§();
      }
      
      override public function get target() : Object
      {
         return this.§"!c§;
      }
      
      private function §&'§(param1:Object, param2:Object) : void
      {
         var _loc3_:* = null;
         for(_loc3_ in param2)
         {
            param1[_loc3_] = param2[_loc3_];
         }
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§-!m§[param1] = param2;
         this.§^"?§["source." + param1] = param3;
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc6_:* = null;
         var _loc2_:Number = 1 - param1;
         var _loc3_:Object = this.§"!c§;
         var _loc4_:Dictionary = this.§,_§;
         var _loc5_:Dictionary = this.§-!m§;
         for(_loc6_ in _loc4_)
         {
            _loc3_[_loc6_] = _loc5_[_loc6_] * _loc2_ + _loc4_[_loc6_] * param1;
         }
      }
      
      override public function set target(param1:Object) : void
      {
         this.§"!c§ = param1;
      }
      
      override protected function resolveValues() : void
      {
         var _loc1_:* = null;
         var _loc2_:Object = this.§"!c§;
         var _loc3_:Dictionary = this.§-!m§;
         var _loc4_:Dictionary = this.§,_§;
         var _loc5_:Dictionary = this.§^"?§;
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
         return this.§"!c§[param1];
      }
      
      override protected function copyFrom(param1:§4"+§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§+!p§ = param1 as §+!p§;
         this.§"!c§ = _loc2_.§"!c§;
         this.§&'§(this.§-!m§,_loc2_.§-!m§);
         this.§&'§(this.§,_§,_loc2_.§,_§);
         this.§&'§(this.§^"?§,_loc2_.§^"?§);
      }
   }
}
