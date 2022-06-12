package §0§
{
   public class §#!^§ implements §-!G§
   {
       
      
      private var §9!#§:§-!G§;
      
      private var §1'§:String;
      
      private var §>F§:§-!G§;
      
      public function §#!^§(param1:§-!G§, param2:§-!G§, param3:String)
      {
         super();
         this.§9!#§ = param1;
         this.§>F§ = param2;
         this.§1'§ = param3;
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
         this.§>F§.update(param1);
         this.§9!#§.setObject(this.§1'§,this.§>F§.target);
      }
      
      public function get child() : §-!G§
      {
         return this.§>F§;
      }
      
      public function clone() : §-!G§
      {
         return new §#!^§(this.§9!#§,this.§>F§,this.§1'§);
      }
      
      public function get target() : Object
      {
         return null;
      }
      
      public function set target(param1:Object) : void
      {
      }
      
      public function get parent() : §-!G§
      {
         return this.§9!#§;
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
