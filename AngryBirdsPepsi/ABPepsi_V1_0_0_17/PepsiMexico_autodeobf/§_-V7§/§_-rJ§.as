package §_-V7§
{
   public class §_-rJ§ implements §_-S1§
   {
       
      
      protected var §_-C8§:Boolean = false;
      
      public function §_-rJ§()
      {
         super();
      }
      
      public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
      }
      
      public function setObject(param1:String, param2:Object) : void
      {
      }
      
      public function set target(param1:Object) : void
      {
      }
      
      public function update(param1:Number) : void
      {
         if(!this.§_-C8§)
         {
            this.resolveValues();
            this.§_-C8§ = true;
         }
         this.updateObject(param1);
      }
      
      protected function newInstance() : §_-rJ§
      {
         return null;
      }
      
      protected function resolveValues() : void
      {
      }
      
      protected function updateObject(param1:Number) : void
      {
      }
      
      public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
      }
      
      public function get target() : Object
      {
         return null;
      }
      
      public function getObject(param1:String) : Object
      {
         return null;
      }
      
      public function clone() : §_-S1§
      {
         var _loc1_:§_-rJ§ = this.newInstance();
         if(_loc1_ != null)
         {
            _loc1_.copyFrom(this);
         }
         return _loc1_;
      }
      
      protected function copyFrom(param1:§_-rJ§) : void
      {
      }
   }
}
