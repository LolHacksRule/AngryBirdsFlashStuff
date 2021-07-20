package §_-V7§
{
   import §_-5y§.§_-Bf§;
   
   public class §_-ag§ implements §_-gL§
   {
       
      
      private var §_-AP§:§_-gL§;
      
      private var §_-al§:String;
      
      private var §_-uk§:§_-gL§;
      
      private var §_-7A§:Number = 0.0;
      
      public function §_-ag§(param1:§_-gL§, param2:§_-gL§, param3:String)
      {
         super();
         this.§_-AP§ = param1;
         this.§_-uk§ = param2;
         this.§_-al§ = param3;
         this.§_-7A§ = param2.duration;
      }
      
      public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
      }
      
      public function setObject(param1:String, param2:Object) : void
      {
      }
      
      public function get target() : Object
      {
         return null;
      }
      
      public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
      }
      
      public function get child() : §_-gL§
      {
         return this.§_-uk§;
      }
      
      public function set §_-5E§(param1:§_-Bf§) : void
      {
      }
      
      public function update(param1:Number) : void
      {
         this.§_-uk§.update(param1);
         this.§_-AP§.setObject(this.§_-al§,this.§_-uk§.target);
      }
      
      public function set target(param1:Object) : void
      {
      }
      
      public function get duration() : Number
      {
         return this.§_-7A§;
      }
      
      public function get parent() : §_-gL§
      {
         return this.§_-AP§;
      }
      
      public function resolveValues() : void
      {
      }
      
      public function get §_-5E§() : §_-Bf§
      {
         return null;
      }
      
      public function getObject(param1:String) : Object
      {
         return null;
      }
      
      public function clone() : §_-S1§
      {
         return new §_-ag§(this.§_-AP§,this.§_-uk§,this.§_-al§);
      }
   }
}
