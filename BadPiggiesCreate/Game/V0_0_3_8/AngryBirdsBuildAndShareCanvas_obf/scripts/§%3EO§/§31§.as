package §>O§
{
   import §9g§.§-f§;
   
   public class §31§ implements §4Q§
   {
       
      
      private var §2!R§:§4Q§;
      
      private var §3!-§:String;
      
      private var §&D§:§4Q§;
      
      private var §"!,§:Number = 0.0;
      
      public function §31§(param1:§4Q§, param2:§4Q§, param3:String)
      {
         super();
         this.§2!R§ = param1;
         this.§&D§ = param2;
         this.§3!-§ = param3;
         this.§"!,§ = param2.duration;
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
      
      public function get child() : §4Q§
      {
         return this.§&D§;
      }
      
      public function set §7!V§(param1:§-f§) : void
      {
      }
      
      public function update(param1:Number) : void
      {
         this.§&D§.update(param1);
         this.§2!R§.setObject(this.§3!-§,this.§&D§.target);
      }
      
      public function set target(param1:Object) : void
      {
      }
      
      public function get duration() : Number
      {
         return this.§"!,§;
      }
      
      public function get parent() : §4Q§
      {
         return this.§2!R§;
      }
      
      public function resolveValues() : void
      {
      }
      
      public function get §7!V§() : §-f§
      {
         return null;
      }
      
      public function getObject(param1:String) : Object
      {
         return null;
      }
      
      public function clone() : §18§
      {
         return new §31§(this.§2!R§,this.§&D§,this.§3!-§);
      }
   }
}
