package §_-DH§
{
   public class §_-tv§ implements §_-AO§
   {
       
      
      protected var §_-hT§:Boolean = false;
      
      public function §_-tv§()
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
         if(!this.§_-hT§)
         {
            this.resolveValues();
            this.§_-hT§ = true;
         }
         this.updateObject(param1);
      }
      
      protected function newInstance() : §_-tv§
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
      
      public function clone() : §_-AO§
      {
         var _loc1_:§_-tv§ = this.newInstance();
         if(_loc1_ != null)
         {
            _loc1_.copyFrom(this);
         }
         return _loc1_;
      }
      
      protected function copyFrom(param1:§_-tv§) : void
      {
      }
   }
}
