package §0§
{
   import §"E§.§&!h§;
   import flash.utils.Dictionary;
   
   public class §`B§ extends §#![§
   {
       
      
      protected var §8A§:Dictionary;
      
      protected var §[l§:Object = null;
      
      protected var §=!9§:Dictionary;
      
      protected var §`v§:Dictionary;
      
      public function §`B§()
      {
         this.§`v§ = new Dictionary();
         this.§8A§ = new Dictionary();
         this.§=!9§ = new Dictionary();
         super();
      }
      
      public static function §;-§(param1:§&!h§) : void
      {
         param1.§]!n§(§`B§,Object,"*");
      }
      
      override public function setObject(param1:String, param2:Object) : void
      {
         this.§[l§[param1] = param2;
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§8A§[param1] = param2;
         this.§=!9§["dest." + param1] = param3;
      }
      
      override protected function newInstance() : §#![§
      {
         return new §`B§();
      }
      
      override public function get target() : Object
      {
         return this.§[l§;
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
         this.§`v§[param1] = param2;
         this.§=!9§["source." + param1] = param3;
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc6_:* = null;
         var _loc2_:Number = 1 - param1;
         var _loc3_:Object = this.§[l§;
         var _loc4_:Dictionary = this.§8A§;
         var _loc5_:Dictionary = this.§`v§;
         for(_loc6_ in _loc4_)
         {
            _loc3_[_loc6_] = _loc5_[_loc6_] * _loc2_ + _loc4_[_loc6_] * param1;
         }
      }
      
      override public function set target(param1:Object) : void
      {
         this.§[l§ = param1;
      }
      
      override protected function resolveValues() : void
      {
         var _loc1_:* = null;
         var _loc2_:Object = this.§[l§;
         var _loc3_:Dictionary = this.§`v§;
         var _loc4_:Dictionary = this.§8A§;
         var _loc5_:Dictionary = this.§=!9§;
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
         return this.§[l§[param1];
      }
      
      override protected function copyFrom(param1:§#![§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§`B§ = param1 as §`B§;
         this.§[l§ = _loc2_.§[l§;
         this.§ !+§(this.§`v§,_loc2_.§`v§);
         this.§ !+§(this.§8A§,_loc2_.§8A§);
         this.§ !+§(this.§=!9§,_loc2_.§=!9§);
      }
   }
}
