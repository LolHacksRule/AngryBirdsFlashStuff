package § !3§
{
   public class §1!§ implements §5"&§
   {
       
      
      protected var §!Y§:Boolean = false;
      
      public function §1!§()
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
         if(!this.§!Y§)
         {
            this.resolveValues();
            this.§!Y§ = true;
         }
         this.updateObject(param1);
      }
      
      protected function newInstance() : §1!§
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
      
      public function clone() : §5"&§
      {
         var _loc1_:§1!§ = this.newInstance();
         if(_loc1_ != null)
         {
            _loc1_.copyFrom(this);
         }
         return _loc1_;
      }
      
      protected function copyFrom(param1:§1!§) : void
      {
      }
   }
}
