package §6!F§
{
   import §7"+§.§]F§;
   
   public class §-!W§ implements §1!]§
   {
       
      
      private var §`D§:§1!]§;
      
      private var §^!1§:String;
      
      private var each:§1!]§;
      
      private var §4!V§:Number = 0.0;
      
      public function §-!W§(param1:§1!]§, param2:§1!]§, param3:String)
      {
         super();
         this.§`D§ = param1;
         this.each = param2;
         this.§^!1§ = param3;
         this.§4!V§ = param2.duration;
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
      
      public function get child() : §1!]§
      {
         return this.each;
      }
      
      public function set §-5§(param1:§]F§) : void
      {
      }
      
      public function update(param1:Number) : void
      {
         this.each.update(param1);
         this.§`D§.setObject(this.§^!1§,this.each.target);
      }
      
      public function set target(param1:Object) : void
      {
      }
      
      public function get duration() : Number
      {
         return this.§4!V§;
      }
      
      public function get parent() : §1!]§
      {
         return this.§`D§;
      }
      
      public function resolveValues() : void
      {
      }
      
      public function get §-5§() : §]F§
      {
         return null;
      }
      
      public function getObject(param1:String) : Object
      {
         return null;
      }
      
      public function clone() : §8w§
      {
         return new §-!W§(this.§`D§,this.each,this.§^!1§);
      }
   }
}
