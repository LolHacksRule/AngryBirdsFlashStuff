package §_-D8§
{
   public class §_-wR§ implements §_-LY§
   {
       
      
      protected var §_-Wd§:Boolean = false;
      
      public function §_-wR§()
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
         if(!this.§_-Wd§)
         {
            this.resolveValues();
            this.§_-Wd§ = true;
         }
         this.updateObject(param1);
      }
      
      protected function newInstance() : §_-wR§
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
      
      public function clone() : §_-LY§
      {
         var _loc1_:§_-wR§ = this.newInstance();
         if(_loc1_ != null)
         {
            _loc1_.copyFrom(this);
         }
         return _loc1_;
      }
      
      protected function copyFrom(param1:§_-wR§) : void
      {
      }
   }
}
