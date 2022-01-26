package §_-DH§
{
   public class §_-7§ implements §_-AO§
   {
       
      
      private var §_-r3§:§_-AO§;
      
      private var §else§:String;
      
      private var §_-rd§:§_-AO§;
      
      public function §_-7§(param1:§_-AO§, param2:§_-AO§, param3:String)
      {
         super();
         this.§_-r3§ = param1;
         this.§_-rd§ = param2;
         this.§else§ = param3;
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
         this.§_-rd§.update(param1);
         this.§_-r3§.setObject(this.§else§,this.§_-rd§.target);
      }
      
      public function get child() : §_-AO§
      {
         return this.§_-rd§;
      }
      
      public function clone() : §_-AO§
      {
         return new §_-7§(this.§_-r3§,this.§_-rd§,this.§else§);
      }
      
      public function get target() : Object
      {
         return null;
      }
      
      public function set target(param1:Object) : void
      {
      }
      
      public function get parent() : §_-AO§
      {
         return this.§_-r3§;
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
