package §_-DH§
{
   import §_-kn§.§_-kA§;
   
   public class §_-fV§ implements §_-Rt§
   {
       
      
      private var §_-r3§:§_-Rt§;
      
      private var §else§:String;
      
      private var §_-rd§:§_-Rt§;
      
      private var §_-jI§:Number = 0.0;
      
      public function §_-fV§(param1:§_-Rt§, param2:§_-Rt§, param3:String)
      {
         super();
         this.§_-r3§ = param1;
         this.§_-rd§ = param2;
         this.§else§ = param3;
         this.§_-jI§ = param2.duration;
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
      
      public function get child() : §_-Rt§
      {
         return this.§_-rd§;
      }
      
      public function set §_-Bi§(param1:§_-kA§) : void
      {
      }
      
      public function update(param1:Number) : void
      {
         this.§_-rd§.update(param1);
         this.§_-r3§.setObject(this.§else§,this.§_-rd§.target);
      }
      
      public function set target(param1:Object) : void
      {
      }
      
      public function get duration() : Number
      {
         return this.§_-jI§;
      }
      
      public function get parent() : §_-Rt§
      {
         return this.§_-r3§;
      }
      
      public function resolveValues() : void
      {
      }
      
      public function get §_-Bi§() : §_-kA§
      {
         return null;
      }
      
      public function getObject(param1:String) : Object
      {
         return null;
      }
      
      public function clone() : §_-AO§
      {
         return new §_-fV§(this.§_-r3§,this.§_-rd§,this.§else§);
      }
   }
}
