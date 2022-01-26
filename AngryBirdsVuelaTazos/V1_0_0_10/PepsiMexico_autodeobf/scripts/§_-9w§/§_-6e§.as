package §_-9w§
{
   public class §_-6e§ implements §_-l2§
   {
       
      
      private var §_-Za§:§_-l2§;
      
      private var §_-Vl§:String;
      
      private var §_-to§:§_-l2§;
      
      public function §_-6e§(param1:§_-l2§, param2:§_-l2§, param3:String)
      {
         super();
         this.§_-Za§ = param1;
         this.§_-to§ = param2;
         this.§_-Vl§ = param3;
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
         this.§_-to§.update(param1);
         this.§_-Za§.setObject(this.§_-Vl§,this.§_-to§.target);
      }
      
      public function get child() : §_-l2§
      {
         return this.§_-to§;
      }
      
      public function clone() : §_-l2§
      {
         return new §_-6e§(this.§_-Za§,this.§_-to§,this.§_-Vl§);
      }
      
      public function get target() : Object
      {
         return null;
      }
      
      public function set target(param1:Object) : void
      {
      }
      
      public function get parent() : §_-l2§
      {
         return this.§_-Za§;
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
