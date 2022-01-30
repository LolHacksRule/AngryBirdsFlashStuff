package § !3§
{
   import §#!,§.§='§;
   import flash.utils.Dictionary;
   
   public class §9!d§ extends §1!§
   {
       
      
      protected var § x§:Dictionary;
      
      protected var §-"7§:Object = null;
      
      protected var §3>§:Dictionary;
      
      protected var §4]§:Dictionary;
      
      public function §9!d§()
      {
         this.§4]§ = new Dictionary();
         this.§ x§ = new Dictionary();
         this.§3>§ = new Dictionary();
         super();
      }
      
      public static function §3a§(param1:§='§) : void
      {
         param1.§2!,§(§9!d§,Object,"*");
      }
      
      override public function setObject(param1:String, param2:Object) : void
      {
         this.§-"7§[param1] = param2;
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§ x§[param1] = param2;
         this.§3>§["dest." + param1] = param3;
      }
      
      override protected function newInstance() : §1!§
      {
         return new §9!d§();
      }
      
      override public function get target() : Object
      {
         return this.§-"7§;
      }
      
      private function §,I§(param1:Object, param2:Object) : void
      {
         var _loc3_:* = null;
         for(_loc3_ in param2)
         {
            param1[_loc3_] = param2[_loc3_];
         }
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§4]§[param1] = param2;
         this.§3>§["source." + param1] = param3;
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc6_:* = null;
         var _loc2_:Number = 1 - param1;
         var _loc3_:Object = this.§-"7§;
         var _loc4_:Dictionary = this.§ x§;
         var _loc5_:Dictionary = this.§4]§;
         for(_loc6_ in _loc4_)
         {
            _loc3_[_loc6_] = _loc5_[_loc6_] * _loc2_ + _loc4_[_loc6_] * param1;
         }
      }
      
      override public function set target(param1:Object) : void
      {
         this.§-"7§ = param1;
      }
      
      override protected function resolveValues() : void
      {
         var _loc1_:* = null;
         var _loc2_:Object = this.§-"7§;
         var _loc3_:Dictionary = this.§4]§;
         var _loc4_:Dictionary = this.§ x§;
         var _loc5_:Dictionary = this.§3>§;
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
         return this.§-"7§[param1];
      }
      
      override protected function copyFrom(param1:§1!§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§9!d§ = param1 as §9!d§;
         this.§-"7§ = _loc2_.§-"7§;
         this.§,I§(this.§4]§,_loc2_.§4]§);
         this.§,I§(this.§ x§,_loc2_.§ x§);
         this.§,I§(this.§3>§,_loc2_.§3>§);
      }
   }
}
