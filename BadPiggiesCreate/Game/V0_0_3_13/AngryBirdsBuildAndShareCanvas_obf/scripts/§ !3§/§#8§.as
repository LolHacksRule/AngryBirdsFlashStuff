package § !3§
{
   public class §#8§ implements §5"&§
   {
       
      
      private var §#f§:§5"&§;
      
      private var §%!+§:String;
      
      private var §5""§:§5"&§;
      
      public function §#8§(param1:§5"&§, param2:§5"&§, param3:String)
      {
         super();
         this.§#f§ = param1;
         this.§5""§ = param2;
         this.§%!+§ = param3;
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
         this.§5""§.update(param1);
         this.§#f§.setObject(this.§%!+§,this.§5""§.target);
      }
      
      public function get child() : §5"&§
      {
         return this.§5""§;
      }
      
      public function clone() : §5"&§
      {
         return new §#8§(this.§#f§,this.§5""§,this.§%!+§);
      }
      
      public function get target() : Object
      {
         return null;
      }
      
      public function set target(param1:Object) : void
      {
      }
      
      public function get parent() : §5"&§
      {
         return this.§#f§;
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
