package §_-60§
{
   import §_-lT§.§_-g7§;
   
   public class §_-eo§ implements §_-HC§
   {
       
      
      private var §_-0z§:§_-HC§;
      
      private var §_-FY§:String;
      
      private var §_-N4§:§_-HC§;
      
      private var §_-tU§:Number = 0.0;
      
      public function §_-eo§(param1:§_-HC§, param2:§_-HC§, param3:String)
      {
         super();
         this.§_-0z§ = param1;
         this.§_-N4§ = param2;
         this.§_-FY§ = param3;
         this.§_-tU§ = param2.duration;
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
      
      public function get child() : §_-HC§
      {
         return this.§_-N4§;
      }
      
      public function set §_-H9§(param1:§_-g7§) : void
      {
      }
      
      public function update(param1:Number) : void
      {
         this.§_-N4§.update(param1);
         this.§_-0z§.setObject(this.§_-FY§,this.§_-N4§.target);
      }
      
      public function set target(param1:Object) : void
      {
      }
      
      public function get duration() : Number
      {
         return this.§_-tU§;
      }
      
      public function get parent() : §_-HC§
      {
         return this.§_-0z§;
      }
      
      public function resolveValues() : void
      {
      }
      
      public function get §_-H9§() : §_-g7§
      {
         return null;
      }
      
      public function getObject(param1:String) : Object
      {
         return null;
      }
      
      public function clone() : §_-he§
      {
         return new §_-eo§(this.§_-0z§,this.§_-N4§,this.§_-FY§);
      }
   }
}
