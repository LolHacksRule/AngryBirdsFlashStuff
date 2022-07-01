package § get§
{
   import §?"3§.§6!A§;
   import flash.utils.Dictionary;
   
   public class §0!i§ extends §]D§
   {
       
      
      protected var §%!r§:Dictionary;
      
      protected var §<"$§:Object = null;
      
      protected var §const§:Dictionary;
      
      protected var §;!g§:Dictionary;
      
      public function §0!i§()
      {
         this.§;!g§ = new Dictionary();
         this.§%!r§ = new Dictionary();
         this.§const§ = new Dictionary();
         super();
      }
      
      public static function §"!6§(param1:§6!A§) : void
      {
         param1.§5!f§(§0!i§,Object,"*");
      }
      
      override public function setObject(param1:String, param2:Object) : void
      {
         this.§<"$§[param1] = param2;
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§%!r§[param1] = param2;
         this.§const§["dest." + param1] = param3;
      }
      
      override protected function newInstance() : §]D§
      {
         return new §0!i§();
      }
      
      override public function get target() : Object
      {
         return this.§<"$§;
      }
      
      private function §<,§(param1:Object, param2:Object) : void
      {
         var _loc3_:* = null;
         for(_loc3_ in param2)
         {
            param1[_loc3_] = param2[_loc3_];
         }
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§;!g§[param1] = param2;
         this.§const§["source." + param1] = param3;
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc6_:* = null;
         var _loc2_:Number = 1 - param1;
         var _loc3_:Object = this.§<"$§;
         var _loc4_:Dictionary = this.§%!r§;
         var _loc5_:Dictionary = this.§;!g§;
         for(_loc6_ in _loc4_)
         {
            _loc3_[_loc6_] = _loc5_[_loc6_] * _loc2_ + _loc4_[_loc6_] * param1;
         }
      }
      
      override public function set target(param1:Object) : void
      {
         this.§<"$§ = param1;
      }
      
      override protected function resolveValues() : void
      {
         var _loc1_:* = null;
         var _loc2_:Object = this.§<"$§;
         var _loc3_:Dictionary = this.§;!g§;
         var _loc4_:Dictionary = this.§%!r§;
         var _loc5_:Dictionary = this.§const§;
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
         return this.§<"$§[param1];
      }
      
      override protected function copyFrom(param1:§]D§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§0!i§ = param1 as §0!i§;
         this.§<"$§ = _loc2_.§<"$§;
         this.§<,§(this.§;!g§,_loc2_.§;!g§);
         this.§<,§(this.§%!r§,_loc2_.§%!r§);
         this.§<,§(this.§const§,_loc2_.§const§);
      }
   }
}
