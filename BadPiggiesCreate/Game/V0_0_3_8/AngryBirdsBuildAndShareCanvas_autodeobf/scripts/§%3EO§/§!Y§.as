package §>O§
{
   public class §!Y§ implements §18§
   {
       
      
      private var §2!R§:§18§;
      
      private var §3!-§:String;
      
      private var §&D§:§18§;
      
      public function §!Y§(param1:§18§, param2:§18§, param3:String)
      {
         super();
         this.§2!R§ = param1;
         this.§&D§ = param2;
         this.§3!-§ = param3;
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
         this.§&D§.update(param1);
         this.§2!R§.setObject(this.§3!-§,this.§&D§.target);
      }
      
      public function get child() : §18§
      {
         return this.§&D§;
      }
      
      public function clone() : §18§
      {
         return new §!Y§(this.§2!R§,this.§&D§,this.§3!-§);
      }
      
      public function get target() : Object
      {
         return null;
      }
      
      public function set target(param1:Object) : void
      {
      }
      
      public function get parent() : §18§
      {
         return this.§2!R§;
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
