package §?u§
{
   public class §="8§ implements §'S§
   {
       
      
      private var §<a§:§'S§;
      
      private var §06§:String;
      
      private var §%A§:§'S§;
      
      public function §="8§(param1:§'S§, param2:§'S§, param3:String)
      {
         super();
         this.§<a§ = param1;
         this.§%A§ = param2;
         this.§06§ = param3;
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
         this.§%A§.update(param1);
         this.§<a§.setObject(this.§06§,this.§%A§.target);
      }
      
      public function get child() : §'S§
      {
         return this.§%A§;
      }
      
      public function clone() : §'S§
      {
         return new §="8§(this.§<a§,this.§%A§,this.§06§);
      }
      
      public function get target() : Object
      {
         return null;
      }
      
      public function set target(param1:Object) : void
      {
      }
      
      public function get parent() : §'S§
      {
         return this.§<a§;
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
