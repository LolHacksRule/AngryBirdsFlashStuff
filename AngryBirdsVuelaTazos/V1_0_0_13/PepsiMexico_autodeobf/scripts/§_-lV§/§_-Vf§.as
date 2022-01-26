package §_-lV§
{
   public class §_-Vf§ implements §_-i2§
   {
       
      
      private var §_-K-§:§_-i2§;
      
      private var §_-b4§:String;
      
      private var §_-76§:§_-i2§;
      
      public function §_-Vf§(param1:§_-i2§, param2:§_-i2§, param3:String)
      {
         super();
         this.§_-K-§ = param1;
         this.§_-76§ = param2;
         this.§_-b4§ = param3;
      }
      
      public function setObject(param1:String, param2:Object) : void
      {
      }
      
      public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
      }
      
      public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
      }
      
      public function update(param1:Number) : void
      {
         this.§_-76§.update(param1);
         this.§_-K-§.setObject(this.§_-b4§,this.§_-76§.target);
      }
      
      public function get child() : §_-i2§
      {
         return this.§_-76§;
      }
      
      public function clone() : §_-i2§
      {
         return new §_-Vf§(this.§_-K-§,this.§_-76§,this.§_-b4§);
      }
      
      public function get target() : Object
      {
         return null;
      }
      
      public function set target(param1:Object) : void
      {
      }
      
      public function get parent() : §_-i2§
      {
         return this.§_-K-§;
      }
      
      public function resolveValues() : void
      {
      }
      
      public function getObject(param1:String) : Object
      {
         return null;
      }
   }
}
