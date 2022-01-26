package §_-lV§
{
   public class §_-ZS§ implements §_-i2§
   {
       
      
      protected var §_-FH§:Boolean = false;
      
      public function §_-ZS§()
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
         if(!this.§_-FH§)
         {
            this.resolveValues();
            this.§_-FH§ = true;
         }
         this.updateObject(param1);
      }
      
      protected function newInstance() : §_-ZS§
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
      
      public function clone() : §_-i2§
      {
         var _loc1_:§_-ZS§ = this.newInstance();
         if(_loc1_ != null)
         {
            _loc1_.copyFrom(this);
         }
         return _loc1_;
      }
      
      protected function copyFrom(param1:§_-ZS§) : void
      {
      }
   }
}
