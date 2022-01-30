package § !3§
{
   import §4!x§.§7"?§;
   
   public class §<!l§ implements §5!e§
   {
       
      
      private var §#f§:§5!e§;
      
      private var §%!+§:String;
      
      private var §5""§:§5!e§;
      
      private var §+6§:Number = 0.0;
      
      public function §<!l§(param1:§5!e§, param2:§5!e§, param3:String)
      {
         super();
         this.§#f§ = param1;
         this.§5""§ = param2;
         this.§%!+§ = param3;
         this.§+6§ = param2.duration;
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
      
      public function get child() : §5!e§
      {
         return this.§5""§;
      }
      
      public function set §=&§(param1:§7"?§) : void
      {
      }
      
      public function update(param1:Number) : void
      {
         this.§5""§.update(param1);
         this.§#f§.setObject(this.§%!+§,this.§5""§.target);
      }
      
      public function set target(param1:Object) : void
      {
      }
      
      public function get duration() : Number
      {
         return this.§+6§;
      }
      
      public function get parent() : §5!e§
      {
         return this.§#f§;
      }
      
      public function resolveValues() : void
      {
      }
      
      public function get §=&§() : §7"?§
      {
         return null;
      }
      
      public function getObject(param1:String) : Object
      {
         return null;
      }
      
      public function clone() : §5"&§
      {
         return new §<!l§(this.§#f§,this.§5""§,this.§%!+§);
      }
   }
}
