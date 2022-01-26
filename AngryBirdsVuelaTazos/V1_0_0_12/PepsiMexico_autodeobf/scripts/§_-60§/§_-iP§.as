package §_-60§
{
   public class §_-iP§ implements §_-he§
   {
       
      
      private var §_-0z§:§_-he§;
      
      private var §_-FY§:String;
      
      private var §_-N4§:§_-he§;
      
      public function §_-iP§(param1:§_-he§, param2:§_-he§, param3:String)
      {
         super();
         this.§_-0z§ = param1;
         this.§_-N4§ = param2;
         this.§_-FY§ = param3;
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
         this.§_-N4§.update(param1);
         this.§_-0z§.setObject(this.§_-FY§,this.§_-N4§.target);
      }
      
      public function get child() : §_-he§
      {
         return this.§_-N4§;
      }
      
      public function clone() : §_-he§
      {
         return new §_-iP§(this.§_-0z§,this.§_-N4§,this.§_-FY§);
      }
      
      public function get target() : Object
      {
         return null;
      }
      
      public function set target(param1:Object) : void
      {
      }
      
      public function get parent() : §_-he§
      {
         return this.§_-0z§;
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
