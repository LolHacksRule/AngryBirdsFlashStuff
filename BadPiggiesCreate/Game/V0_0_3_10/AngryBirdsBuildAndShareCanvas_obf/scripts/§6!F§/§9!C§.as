package §6!F§
{
   public class §9!C§ implements §8w§
   {
       
      
      private var §`D§:§8w§;
      
      private var §^!1§:String;
      
      private var each:§8w§;
      
      public function §9!C§(param1:§8w§, param2:§8w§, param3:String)
      {
         super();
         this.§`D§ = param1;
         this.each = param2;
         this.§^!1§ = param3;
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
         this.each.update(param1);
         this.§`D§.setObject(this.§^!1§,this.each.target);
      }
      
      public function get child() : §8w§
      {
         return this.each;
      }
      
      public function clone() : §8w§
      {
         return new §9!C§(this.§`D§,this.each,this.§^!1§);
      }
      
      public function get target() : Object
      {
         return null;
      }
      
      public function set target(param1:Object) : void
      {
      }
      
      public function get parent() : §8w§
      {
         return this.§`D§;
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
