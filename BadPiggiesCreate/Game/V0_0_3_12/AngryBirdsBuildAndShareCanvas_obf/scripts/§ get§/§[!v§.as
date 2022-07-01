package § get§
{
   public class §[!v§ implements §,B§
   {
       
      
      private var §9!h§:§,B§;
      
      private var §#!_§:String;
      
      private var §#!f§:§,B§;
      
      public function §[!v§(param1:§,B§, param2:§,B§, param3:String)
      {
         super();
         this.§9!h§ = param1;
         this.§#!f§ = param2;
         this.§#!_§ = param3;
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
         this.§#!f§.update(param1);
         this.§9!h§.setObject(this.§#!_§,this.§#!f§.target);
      }
      
      public function get child() : §,B§
      {
         return this.§#!f§;
      }
      
      public function clone() : §,B§
      {
         return new §[!v§(this.§9!h§,this.§#!f§,this.§#!_§);
      }
      
      public function get target() : Object
      {
         return null;
      }
      
      public function set target(param1:Object) : void
      {
      }
      
      public function get parent() : §,B§
      {
         return this.§9!h§;
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
