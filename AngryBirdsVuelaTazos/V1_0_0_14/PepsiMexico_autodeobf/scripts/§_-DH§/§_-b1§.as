package §_-DH§
{
   import §_-C5§.§_-3l§;
   import flash.utils.Dictionary;
   
   public class §_-b1§ extends §_-tv§
   {
       
      
      protected var §_-OR§:Dictionary;
      
      protected var §_-lg§:Object = null;
      
      protected var §_-uY§:Dictionary;
      
      protected var §_-Ov§:Dictionary;
      
      public function §_-b1§()
      {
         this.§_-Ov§ = new Dictionary();
         this.§_-OR§ = new Dictionary();
         this.§_-uY§ = new Dictionary();
         super();
      }
      
      public static function §_-FR§(param1:§_-3l§) : void
      {
         param1.§_-zO§(§_-b1§,Object,"*");
      }
      
      override public function setObject(param1:String, param2:Object) : void
      {
         this.§_-lg§[param1] = param2;
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§_-OR§[param1] = param2;
         this.§_-uY§["dest." + param1] = param3;
      }
      
      override protected function newInstance() : §_-tv§
      {
         return new §_-b1§();
      }
      
      override public function get target() : Object
      {
         return this.§_-lg§;
      }
      
      private function §_-QQ§(param1:Object, param2:Object) : void
      {
         var _loc3_:* = null;
         for(_loc3_ in param2)
         {
            param1[_loc3_] = param2[_loc3_];
         }
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         this.§_-Ov§[param1] = param2;
         this.§_-uY§["source." + param1] = param3;
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc6_:* = null;
         var _loc2_:Number = 1 - param1;
         var _loc3_:Object = this.§_-lg§;
         var _loc4_:Dictionary = this.§_-OR§;
         var _loc5_:Dictionary = this.§_-Ov§;
         for(_loc6_ in _loc4_)
         {
            _loc3_[_loc6_] = _loc5_[_loc6_] * _loc2_ + _loc4_[_loc6_] * param1;
         }
      }
      
      override public function set target(param1:Object) : void
      {
         this.§_-lg§ = param1;
      }
      
      override protected function resolveValues() : void
      {
         var _loc1_:* = null;
         var _loc2_:Object = this.§_-lg§;
         var _loc3_:Dictionary = this.§_-Ov§;
         var _loc4_:Dictionary = this.§_-OR§;
         var _loc5_:Dictionary = this.§_-uY§;
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
         return this.§_-lg§[param1];
      }
      
      override protected function copyFrom(param1:§_-tv§) : void
      {
         super.copyFrom(param1);
         var _loc2_:§_-b1§ = param1 as §_-b1§;
         this.§_-lg§ = _loc2_.§_-lg§;
         this.§_-QQ§(this.§_-Ov§,_loc2_.§_-Ov§);
         this.§_-QQ§(this.§_-OR§,_loc2_.§_-OR§);
         this.§_-QQ§(this.§_-uY§,_loc2_.§_-uY§);
      }
   }
}
