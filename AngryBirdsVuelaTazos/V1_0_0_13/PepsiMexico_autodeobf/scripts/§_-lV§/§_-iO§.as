package §_-lV§
{
   import §_-Wa§.§_-8X§;
   
   public class §_-iO§ implements §_-v§
   {
       
      
      private var §_-K-§:§_-v§;
      
      private var §_-b4§:String;
      
      private var §_-76§:§_-v§;
      
      private var §_-Hr§:Number = 0.0;
      
      public function §_-iO§(param1:§_-v§, param2:§_-v§, param3:String)
      {
         super();
         this.§_-K-§ = param1;
         this.§_-76§ = param2;
         this.§_-b4§ = param3;
         this.§_-Hr§ = param2.duration;
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
      
      public function get child() : §_-v§
      {
         return this.§_-76§;
      }
      
      public function set §_-4g§(param1:§_-8X§) : void
      {
      }
      
      public function update(param1:Number) : void
      {
         this.§_-76§.update(param1);
         this.§_-K-§.setObject(this.§_-b4§,this.§_-76§.target);
      }
      
      public function set target(param1:Object) : void
      {
      }
      
      public function get duration() : Number
      {
         return this.§_-Hr§;
      }
      
      public function get parent() : §_-v§
      {
         return this.§_-K-§;
      }
      
      public function resolveValues() : void
      {
      }
      
      public function get §_-4g§() : §_-8X§
      {
         return null;
      }
      
      public function getObject(param1:String) : Object
      {
         return null;
      }
      
      public function clone() : §_-i2§
      {
         return new §_-iO§(this.§_-K-§,this.§_-76§,this.§_-b4§);
      }
   }
}
