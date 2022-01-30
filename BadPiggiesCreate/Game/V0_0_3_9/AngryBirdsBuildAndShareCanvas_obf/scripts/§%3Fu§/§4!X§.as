package §?u§
{
   import §`!?§.§6!K§;
   import flash.utils.Dictionary;
   
   public class §4!X§ implements §`_§
   {
       
      
      protected var §8H§:§6!K§ = null;
      
      protected var §?$§:Dictionary;
      
      protected var §9!O§:Number = 0.0;
      
      protected var §<"%§:Boolean = false;
      
      protected var §@u§:Object = null;
      
      protected var §4!1§:Dictionary;
      
      protected var §&G§:Dictionary;
      
      protected var §^Z§:Dictionary;
      
      public function §4!X§()
      {
         this.§^Z§ = new Dictionary();
         this.§?$§ = new Dictionary();
         this.§&G§ = new Dictionary();
         this.§4!1§ = new Dictionary();
         super();
      }
      
      public function setObject(param1:String, param2:Object) : void
      {
         this.§@u§[param1] = param2;
      }
      
      public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§?$§[param1] = param2;
         this.§&G§["dest." + param1] = param3;
      }
      
      protected function copyFrom(param1:§4!X§) : void
      {
         var _loc2_:§4!X§ = param1 as §4!X§;
         this.§@u§ = _loc2_.§@u§;
         this.§8H§ = _loc2_.§8H§;
         this.§]!V§(this.§^Z§,_loc2_.§^Z§);
         this.§]!V§(this.§?$§,_loc2_.§?$§);
         this.§]!V§(this.§&G§,_loc2_.§&G§);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc9_:* = null;
         if(!this.§<"%§)
         {
            this.resolveValues();
         }
         var _loc3_:Object = this.§@u§;
         var _loc4_:§6!K§ = this.§8H§;
         var _loc5_:Dictionary = this.§?$§;
         var _loc6_:Dictionary = this.§^Z§;
         var _loc8_:Dictionary = this.§4!1§;
         for(_loc9_ in _loc5_)
         {
            if(param1 >= _loc8_[_loc9_])
            {
               _loc3_[_loc9_] = _loc5_[_loc9_];
            }
            else
            {
               _loc7_ = _loc6_[_loc9_];
               _loc3_[_loc9_] = _loc4_.§<l§(param1,_loc7_,_loc5_[_loc9_] - _loc7_);
            }
         }
      }
      
      private function §]!V§(param1:Object, param2:Object) : void
      {
         var _loc3_:* = null;
         for(_loc3_ in param2)
         {
            param1[_loc3_] = param2[_loc3_];
         }
      }
      
      public function get duration() : Number
      {
         if(!this.§<"%§)
         {
            this.resolveValues();
         }
         return this.§9!O§;
      }
      
      protected function newInstance() : §4!X§
      {
         return new §4!X§();
      }
      
      public function set §,@§(param1:§6!K§) : void
      {
         this.§8H§ = param1;
      }
      
      public function get target() : Object
      {
         return this.§@u§;
      }
      
      public function clone() : §'S§
      {
         var _loc1_:§4!X§ = this.newInstance();
         if(_loc1_ != null)
         {
            _loc1_.copyFrom(this);
         }
         return _loc1_;
      }
      
      public function set target(param1:Object) : void
      {
         this.§@u§ = param1;
      }
      
      public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§^Z§[param1] = param2;
         this.§&G§["source." + param1] = param3;
      }
      
      protected function resolveValues() : void
      {
         var _loc1_:* = null;
         var _loc7_:Number = NaN;
         var _loc2_:Object = this.§@u§;
         var _loc3_:Dictionary = this.§^Z§;
         var _loc4_:Dictionary = this.§?$§;
         var _loc5_:Dictionary = this.§&G§;
         var _loc6_:Dictionary = this.§4!1§;
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
            _loc7_ = this.§8H§.§<!R§(_loc3_[_loc1_],_loc4_[_loc1_] - _loc3_[_loc1_]);
            _loc6_[_loc1_] = _loc7_;
            if(_loc8_ < _loc7_)
            {
               _loc8_ = _loc7_;
            }
         }
         this.§9!O§ = _loc8_;
         this.§<"%§ = true;
      }
      
      public function get §,@§() : §6!K§
      {
         return this.§8H§;
      }
      
      public function getObject(param1:String) : Object
      {
         return this.§@u§[param1];
      }
   }
}
