package §_-9w§
{
   import §_-JU§.§_-Is§;
   
   public class §_-Qo§ implements §_-HK§
   {
       
      
      private var §_-Za§:§_-HK§;
      
      private var §_-Vl§:String;
      
      private var §_-to§:§_-HK§;
      
      private var §_-sA§:Number = 0.0;
      
      public function §_-Qo§(param1:§_-HK§, param2:§_-HK§, param3:String)
      {
         super();
         this.§_-Za§ = param1;
         this.§_-to§ = param2;
         this.§_-Vl§ = param3;
         this.§_-sA§ = param2.duration;
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
      
      public function get child() : §_-HK§
      {
         return this.§_-to§;
      }
      
      public function set §_-gl§(param1:§_-Is§) : void
      {
      }
      
      public function update(param1:Number) : void
      {
         this.§_-to§.update(param1);
         this.§_-Za§.setObject(this.§_-Vl§,this.§_-to§.target);
      }
      
      public function set target(param1:Object) : void
      {
      }
      
      public function get duration() : Number
      {
         return this.§_-sA§;
      }
      
      public function get parent() : §_-HK§
      {
         return this.§_-Za§;
      }
      
      public function resolveValues() : void
      {
      }
      
      public function get §_-gl§() : §_-Is§
      {
         return null;
      }
      
      public function getObject(param1:String) : Object
      {
         return null;
      }
      
      public function clone() : §_-l2§
      {
         return new §_-Qo§(this.§_-Za§,this.§_-to§,this.§_-Vl§);
      }
   }
}
