package §=!N§
{
   import §4"4§.§-!G§;
   
   public class §%W§ implements §]k§
   {
       
      
      private var §0!^§:§]k§;
      
      private var § !w§:String;
      
      private var §<!T§:§]k§;
      
      private var §['§:Number = 0.0;
      
      public function §%W§(param1:§]k§, param2:§]k§, param3:String)
      {
         super();
         this.§0!^§ = param1;
         this.§<!T§ = param2;
         this.§ !w§ = param3;
         this.§['§ = param2.duration;
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
      
      public function get child() : §]k§
      {
         return this.§<!T§;
      }
      
      public function set §2!U§(param1:§-!G§) : void
      {
      }
      
      public function update(param1:Number) : void
      {
         this.§<!T§.update(param1);
         this.§0!^§.setObject(this.§ !w§,this.§<!T§.target);
      }
      
      public function set target(param1:Object) : void
      {
      }
      
      public function get duration() : Number
      {
         return this.§['§;
      }
      
      public function get parent() : §]k§
      {
         return this.§0!^§;
      }
      
      public function resolveValues() : void
      {
      }
      
      public function get §2!U§() : §-!G§
      {
         return null;
      }
      
      public function getObject(param1:String) : Object
      {
         return null;
      }
      
      public function clone() : §!"4§
      {
         return new §%W§(this.§0!^§,this.§<!T§,this.§ !w§);
      }
   }
}
