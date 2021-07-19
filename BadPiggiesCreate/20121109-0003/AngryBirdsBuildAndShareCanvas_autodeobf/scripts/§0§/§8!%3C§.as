package §0§
{
   import §0x§.§?"3§;
   
   public class §8!<§ implements §,l§
   {
       
      
      private var §9!#§:§,l§;
      
      private var §1'§:String;
      
      private var §>F§:§,l§;
      
      private var §!"-§:Number = 0.0;
      
      public function §8!<§(param1:§,l§, param2:§,l§, param3:String)
      {
         super();
         this.§9!#§ = param1;
         this.§>F§ = param2;
         this.§1'§ = param3;
         this.§!"-§ = param2.duration;
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
      
      public function get child() : §,l§
      {
         return this.§>F§;
      }
      
      public function set §3!`§(param1:§?"3§) : void
      {
      }
      
      public function update(param1:Number) : void
      {
         this.§>F§.update(param1);
         this.§9!#§.setObject(this.§1'§,this.§>F§.target);
      }
      
      public function set target(param1:Object) : void
      {
      }
      
      public function get duration() : Number
      {
         return this.§!"-§;
      }
      
      public function get parent() : §,l§
      {
         return this.§9!#§;
      }
      
      public function resolveValues() : void
      {
      }
      
      public function get §3!`§() : §?"3§
      {
         return null;
      }
      
      public function getObject(param1:String) : Object
      {
         return null;
      }
      
      public function clone() : §-!G§
      {
         return new §8!<§(this.§9!#§,this.§>F§,this.§1'§);
      }
   }
}
