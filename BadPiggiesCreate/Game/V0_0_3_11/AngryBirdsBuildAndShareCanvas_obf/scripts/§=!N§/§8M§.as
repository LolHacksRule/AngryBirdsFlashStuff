package §=!N§
{
   public class §8M§ implements §!"4§
   {
       
      
      private var §0!^§:§!"4§;
      
      private var § !w§:String;
      
      private var §<!T§:§!"4§;
      
      public function §8M§(param1:§!"4§, param2:§!"4§, param3:String)
      {
         super();
         this.§0!^§ = param1;
         this.§<!T§ = param2;
         this.§ !w§ = param3;
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
         this.§<!T§.update(param1);
         this.§0!^§.setObject(this.§ !w§,this.§<!T§.target);
      }
      
      public function get child() : §!"4§
      {
         return this.§<!T§;
      }
      
      public function clone() : §!"4§
      {
         return new §8M§(this.§0!^§,this.§<!T§,this.§ !w§);
      }
      
      public function get target() : Object
      {
         return null;
      }
      
      public function set target(param1:Object) : void
      {
      }
      
      public function get parent() : §!"4§
      {
         return this.§0!^§;
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
