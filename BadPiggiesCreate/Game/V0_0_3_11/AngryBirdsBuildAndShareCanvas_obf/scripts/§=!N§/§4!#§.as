package §=!N§
{
   import §4"4§.§-!G§;
   import flash.utils.Dictionary;
   
   public class §4!#§ implements §]k§
   {
       
      
      protected var §6`§:§-!G§ = null;
      
      protected var §`"%§:Dictionary;
      
      protected var §>!#§:Number = 0.0;
      
      protected var §?!E§:Boolean = false;
      
      protected var §&J§:Object = null;
      
      protected var §['§:Dictionary;
      
      protected var §@E§:Dictionary;
      
      protected var §,H§:Dictionary;
      
      public function §4!#§()
      {
         this.§,H§ = new Dictionary();
         this.§`"%§ = new Dictionary();
         this.§@E§ = new Dictionary();
         this.§['§ = new Dictionary();
         super();
      }
      
      public function setObject(param1:String, param2:Object) : void
      {
         this.§&J§[param1] = param2;
      }
      
      public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§`"%§[param1] = param2;
         this.§@E§["dest." + param1] = param3;
      }
      
      protected function copyFrom(param1:§4!#§) : void
      {
         var _loc2_:§4!#§ = param1 as §4!#§;
         this.§&J§ = _loc2_.§&J§;
         this.§6`§ = _loc2_.§6`§;
         this.§0N§(this.§,H§,_loc2_.§,H§);
         this.§0N§(this.§`"%§,_loc2_.§`"%§);
         this.§0N§(this.§@E§,_loc2_.§@E§);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc9_:* = null;
         if(!this.§?!E§)
         {
            this.resolveValues();
         }
         var _loc3_:Object = this.§&J§;
         var _loc4_:§-!G§ = this.§6`§;
         var _loc5_:Dictionary = this.§`"%§;
         var _loc6_:Dictionary = this.§,H§;
         var _loc8_:Dictionary = this.§['§;
         for(_loc9_ in _loc5_)
         {
            if(param1 >= _loc8_[_loc9_])
            {
               _loc3_[_loc9_] = _loc5_[_loc9_];
            }
            else
            {
               _loc7_ = _loc6_[_loc9_];
               _loc3_[_loc9_] = _loc4_.§&w§(param1,_loc7_,_loc5_[_loc9_] - _loc7_);
            }
         }
      }
      
      private function §0N§(param1:Object, param2:Object) : void
      {
         var _loc3_:* = null;
         for(_loc3_ in param2)
         {
            param1[_loc3_] = param2[_loc3_];
         }
      }
      
      public function get duration() : Number
      {
         if(!this.§?!E§)
         {
            this.resolveValues();
         }
         return this.§>!#§;
      }
      
      protected function newInstance() : §4!#§
      {
         return new §4!#§();
      }
      
      public function set §2!U§(param1:§-!G§) : void
      {
         this.§6`§ = param1;
      }
      
      public function get target() : Object
      {
         return this.§&J§;
      }
      
      public function clone() : §!"4§
      {
         var _loc1_:§4!#§ = this.newInstance();
         if(_loc1_ != null)
         {
            _loc1_.copyFrom(this);
         }
         return _loc1_;
      }
      
      public function set target(param1:Object) : void
      {
         this.§&J§ = param1;
      }
      
      public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§,H§[param1] = param2;
         this.§@E§["source." + param1] = param3;
      }
      
      protected function resolveValues() : void
      {
         var _loc1_:* = null;
         var _loc7_:Number = NaN;
         var _loc2_:Object = this.§&J§;
         var _loc3_:Dictionary = this.§,H§;
         var _loc4_:Dictionary = this.§`"%§;
         var _loc5_:Dictionary = this.§@E§;
         var _loc6_:Dictionary = this.§['§;
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
            _loc7_ = this.§6`§.§'"!§(_loc3_[_loc1_],_loc4_[_loc1_] - _loc3_[_loc1_]);
            _loc6_[_loc1_] = _loc7_;
            if(_loc8_ < _loc7_)
            {
               _loc8_ = _loc7_;
            }
         }
         this.§>!#§ = _loc8_;
         this.§?!E§ = true;
      }
      
      public function get §2!U§() : §-!G§
      {
         return this.§6`§;
      }
      
      public function getObject(param1:String) : Object
      {
         return this.§&J§[param1];
      }
   }
}
