package §6!F§
{
   public class §>!%§ implements §8w§
   {
       
      
      protected var §6!s§:Boolean = false;
      
      public function §>!%§()
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
         if(!this.§6!s§)
         {
            this.resolveValues();
            this.§6!s§ = true;
         }
         this.updateObject(param1);
      }
      
      protected function newInstance() : §>!%§
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
      
      public function clone() : §8w§
      {
         var _loc1_:§>!%§ = this.newInstance();
         if(_loc1_ != null)
         {
            _loc1_.copyFrom(this);
         }
         return _loc1_;
      }
      
      protected function copyFrom(param1:§>!%§) : void
      {
      }
   }
}
