package §_-9w§
{
   import §_-rM§.§_-1E§;
   import flash.utils.Dictionary;
   
   public class §_-PC§ extends §_-IH§
   {
       
      
      protected var §_-nk§:Dictionary;
      
      protected var §_-CB§:Object = null;
      
      protected var §_-aj§:Dictionary;
      
      protected var §_-nm§:Dictionary;
      
      public function §_-PC§()
      {
         this.§_-nm§ = new Dictionary();
         this.§_-nk§ = new Dictionary();
         this.§_-aj§ = new Dictionary();
         super();
      }
      
      public static function §_-Mv§(param1:§_-1E§) : void
      {
         param1.§_-4Y§(§_-PC§,Object,"*");
      }
      
      override public function setObject(param1:String, param2:Object) : void
      {
         this.§_-CB§[param1] = param2;
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§_-nk§[param1] = param2;
         this.§_-aj§["dest." + param1] = param3;
      }
      
      override protected function newInstance() : §_-IH§
      {
         return new §_-PC§();
      }
      
      override public function get target() : Object
      {
         return this.§_-CB§;
      }
      
      private function §_-cg§(param1:Object, param2:Object) : void
      {
         var _loc3_:* = null;
         for(_loc3_ in param2)
         {
            param1[_loc3_] = param2[_loc3_];
         }
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§_-nm§[param1] = param2;
         this.§_-aj§["source." + param1] = param3;
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc6_:* = null;
         var _loc2_:Number = 1 - param1;
         var _loc3_:Object = this.§_-CB§;
         var _loc4_:Dictionary = this.§_-nk§;
         var _loc5_:Dictionary = this.§_-nm§;
         for(_loc6_ in _loc4_)
         {
            _loc3_[_loc6_] = _loc5_[_loc6_] * _loc2_ + _loc4_[_loc6_] * param1;
         }
      }
      
      override public function set target(param1:Object) : void
      {
         this.§_-CB§ = param1;
      }
      
      override protected function resolveValues() : void
      {
         var _loc1_:* = null;
         var _loc2_:Object = this.§_-CB§;
         var _loc3_:Dictionary = this.§_-nm§;
         var _loc4_:Dictionary = this.§_-nk§;
         var _loc5_:Dictionary = this.§_-aj§;
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
         return this.§_-CB§[param1];
      }
      
      override protected function copyFrom(param1:§_-IH§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§_-PC§ = param1 as §_-PC§;
         this.§_-CB§ = _loc2_.§_-CB§;
         this.§_-cg§(this.§_-nm§,_loc2_.§_-nm§);
         this.§_-cg§(this.§_-nk§,_loc2_.§_-nk§);
         this.§_-cg§(this.§_-aj§,_loc2_.§_-aj§);
      }
   }
}
