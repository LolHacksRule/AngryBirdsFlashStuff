package §=!N§
{
   import §7!N§.§]!U§;
   import flash.utils.Dictionary;
   
   public class §,!r§ extends §%!O§
   {
       
      
      protected var §`"%§:Dictionary;
      
      protected var §&J§:Object = null;
      
      protected var §@E§:Dictionary;
      
      protected var §,H§:Dictionary;
      
      public function §,!r§()
      {
         this.§,H§ = new Dictionary();
         this.§`"%§ = new Dictionary();
         this.§@E§ = new Dictionary();
         super();
      }
      
      public static function §=f§(param1:§]!U§) : void
      {
         param1.§7J§(§,!r§,Object,"*");
      }
      
      override public function setObject(param1:String, param2:Object) : void
      {
         this.§&J§[param1] = param2;
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§`"%§[param1] = param2;
         this.§@E§["dest." + param1] = param3;
      }
      
      override protected function newInstance() : §%!O§
      {
         return new §,!r§();
      }
      
      override public function get target() : Object
      {
         return this.§&J§;
      }
      
      private function §0N§(param1:Object, param2:Object) : void
      {
         var _loc3_:* = null;
         for(_loc3_ in param2)
         {
            param1[_loc3_] = param2[_loc3_];
         }
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§,H§[param1] = param2;
         this.§@E§["source." + param1] = param3;
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc6_:* = null;
         var _loc2_:Number = 1 - param1;
         var _loc3_:Object = this.§&J§;
         var _loc4_:Dictionary = this.§`"%§;
         var _loc5_:Dictionary = this.§,H§;
         for(_loc6_ in _loc4_)
         {
            _loc3_[_loc6_] = _loc5_[_loc6_] * _loc2_ + _loc4_[_loc6_] * param1;
         }
      }
      
      override public function set target(param1:Object) : void
      {
         this.§&J§ = param1;
      }
      
      override protected function resolveValues() : void
      {
         var _loc1_:* = null;
         var _loc2_:Object = this.§&J§;
         var _loc3_:Dictionary = this.§,H§;
         var _loc4_:Dictionary = this.§`"%§;
         var _loc5_:Dictionary = this.§@E§;
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
         return this.§&J§[param1];
      }
      
      override protected function copyFrom(param1:§%!O§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§,!r§ = param1 as §,!r§;
         this.§&J§ = _loc2_.§&J§;
         this.§0N§(this.§,H§,_loc2_.§,H§);
         this.§0N§(this.§`"%§,_loc2_.§`"%§);
         this.§0N§(this.§@E§,_loc2_.§@E§);
      }
   }
}
