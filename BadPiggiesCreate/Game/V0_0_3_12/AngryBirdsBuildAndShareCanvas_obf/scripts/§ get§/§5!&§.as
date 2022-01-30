package § get§
{
   import §4!H§.§05§;
   import flash.utils.Dictionary;
   
   public class §5!&§ implements §#!K§
   {
       
      
      protected var §1n§:§05§ = null;
      
      protected var §%!r§:Dictionary;
      
      protected var §-!S§:Number = 0.0;
      
      protected var §&! §:Boolean = false;
      
      protected var §<"$§:Object = null;
      
      protected var §,!O§:Dictionary;
      
      protected var §const§:Dictionary;
      
      protected var §;!g§:Dictionary;
      
      public function §5!&§()
      {
         this.§;!g§ = new Dictionary();
         this.§%!r§ = new Dictionary();
         this.§const§ = new Dictionary();
         this.§,!O§ = new Dictionary();
         super();
      }
      
      public function setObject(param1:String, param2:Object) : void
      {
         this.§<"$§[param1] = param2;
      }
      
      public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§%!r§[param1] = param2;
         this.§const§["dest." + param1] = param3;
      }
      
      protected function copyFrom(param1:§5!&§) : void
      {
         var _loc2_:§5!&§ = param1 as §5!&§;
         this.§<"$§ = _loc2_.§<"$§;
         this.§1n§ = _loc2_.§1n§;
         this.§<,§(this.§;!g§,_loc2_.§;!g§);
         this.§<,§(this.§%!r§,_loc2_.§%!r§);
         this.§<,§(this.§const§,_loc2_.§const§);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc9_:* = null;
         if(!this.§&! §)
         {
            this.resolveValues();
         }
         var _loc3_:Object = this.§<"$§;
         var _loc4_:§05§ = this.§1n§;
         var _loc5_:Dictionary = this.§%!r§;
         var _loc6_:Dictionary = this.§;!g§;
         var _loc8_:Dictionary = this.§,!O§;
         for(_loc9_ in _loc5_)
         {
            if(param1 >= _loc8_[_loc9_])
            {
               _loc3_[_loc9_] = _loc5_[_loc9_];
            }
            else
            {
               _loc7_ = _loc6_[_loc9_];
               _loc3_[_loc9_] = _loc4_.§6r§(param1,_loc7_,_loc5_[_loc9_] - _loc7_);
            }
         }
      }
      
      private function §<,§(param1:Object, param2:Object) : void
      {
         var _loc3_:* = null;
         for(_loc3_ in param2)
         {
            param1[_loc3_] = param2[_loc3_];
         }
      }
      
      public function get duration() : Number
      {
         if(!this.§&! §)
         {
            this.resolveValues();
         }
         return this.§-!S§;
      }
      
      protected function newInstance() : §5!&§
      {
         return new §5!&§();
      }
      
      public function set §1<§(param1:§05§) : void
      {
         this.§1n§ = param1;
      }
      
      public function get target() : Object
      {
         return this.§<"$§;
      }
      
      public function clone() : §,B§
      {
         var _loc1_:§5!&§ = this.newInstance();
         if(_loc1_ != null)
         {
            _loc1_.copyFrom(this);
         }
         return _loc1_;
      }
      
      public function set target(param1:Object) : void
      {
         this.§<"$§ = param1;
      }
      
      public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§;!g§[param1] = param2;
         this.§const§["source." + param1] = param3;
      }
      
      protected function resolveValues() : void
      {
         var _loc1_:* = null;
         var _loc7_:Number = NaN;
         var _loc2_:Object = this.§<"$§;
         var _loc3_:Dictionary = this.§;!g§;
         var _loc4_:Dictionary = this.§%!r§;
         var _loc5_:Dictionary = this.§const§;
         var _loc6_:Dictionary = this.§,!O§;
         var _loc8_:Number = 0;
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
            _loc7_ = this.§1n§.§2!j§(_loc3_[_loc1_],_loc4_[_loc1_] - _loc3_[_loc1_]);
            _loc6_[_loc1_] = _loc7_;
            if(_loc8_ < _loc7_)
            {
               _loc8_ = _loc7_;
            }
         }
         this.§-!S§ = _loc8_;
         this.§&! § = true;
      }
      
      public function get §1<§() : §05§
      {
         return this.§1n§;
      }
      
      public function getObject(param1:String) : Object
      {
         return this.§<"$§[param1];
      }
   }
}
