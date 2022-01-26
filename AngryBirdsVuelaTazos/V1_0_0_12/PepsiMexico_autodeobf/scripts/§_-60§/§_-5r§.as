package §_-60§
{
   public class §_-5r§ implements §_-he§
   {
       
      
      protected var §_-Oi§:Boolean = false;
      
      public function §_-5r§()
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
         if(!this.§_-Oi§)
         {
            this.resolveValues();
            this.§_-Oi§ = true;
         }
         this.updateObject(param1);
      }
      
      protected function newInstance() : §_-5r§
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
      
      public function clone() : §_-he§
      {
         var _loc1_:§_-5r§ = this.newInstance();
         if(_loc1_ != null)
         {
            _loc1_.copyFrom(this);
         }
         return _loc1_;
      }
      
      protected function copyFrom(param1:§_-5r§) : void
      {
      }
   }
}
