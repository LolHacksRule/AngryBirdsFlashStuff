package §_-V7§
{
   public class §_-YG§ implements §_-S1§
   {
       
      
      private var §_-AP§:§_-S1§;
      
      private var §_-al§:String;
      
      private var §_-uk§:§_-S1§;
      
      public function §_-YG§(param1:§_-S1§, param2:§_-S1§, param3:String)
      {
         super();
         this.§_-AP§ = param1;
         this.§_-uk§ = param2;
         this.§_-al§ = param3;
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
         this.§_-uk§.update(param1);
         this.§_-AP§.setObject(this.§_-al§,this.§_-uk§.target);
      }
      
      public function get child() : §_-S1§
      {
         return this.§_-uk§;
      }
      
      public function clone() : §_-S1§
      {
         return new §_-YG§(this.§_-AP§,this.§_-uk§,this.§_-al§);
      }
      
      public function get target() : Object
      {
         return null;
      }
      
      public function set target(param1:Object) : void
      {
      }
      
      public function get parent() : §_-S1§
      {
         return this.§_-AP§;
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
