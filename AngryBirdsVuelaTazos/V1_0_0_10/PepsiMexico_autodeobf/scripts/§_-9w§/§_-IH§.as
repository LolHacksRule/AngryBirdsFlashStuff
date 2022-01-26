package §_-9w§
{
   public class §_-IH§ implements §_-l2§
   {
       
      
      protected var §_-Yv§:Boolean = false;
      
      public function §_-IH§()
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
         if(!this.§_-Yv§)
         {
            this.resolveValues();
            this.§_-Yv§ = true;
         }
         this.updateObject(param1);
      }
      
      protected function newInstance() : §_-IH§
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
      
      public function clone() : §_-l2§
      {
         var _loc1_:§_-IH§ = this.newInstance();
         if(_loc1_ != null)
         {
            _loc1_.copyFrom(this);
         }
         return _loc1_;
      }
      
      protected function copyFrom(param1:§_-IH§) : void
      {
      }
   }
}
