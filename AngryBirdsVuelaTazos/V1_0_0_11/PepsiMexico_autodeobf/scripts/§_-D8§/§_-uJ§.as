package §_-D8§
{
   public class §_-uJ§ implements §_-LY§
   {
       
      
      private var §_-1I§:§_-LY§;
      
      private var §_-37§:String;
      
      private var §_-XU§:§_-LY§;
      
      public function §_-uJ§(param1:§_-LY§, param2:§_-LY§, param3:String)
      {
         super();
         this.§_-1I§ = param1;
         this.§_-XU§ = param2;
         this.§_-37§ = param3;
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
         this.§_-XU§.update(param1);
         this.§_-1I§.setObject(this.§_-37§,this.§_-XU§.target);
      }
      
      public function get child() : §_-LY§
      {
         return this.§_-XU§;
      }
      
      public function clone() : §_-LY§
      {
         return new §_-uJ§(this.§_-1I§,this.§_-XU§,this.§_-37§);
      }
      
      public function get target() : Object
      {
         return null;
      }
      
      public function set target(param1:Object) : void
      {
      }
      
      public function get parent() : §_-LY§
      {
         return this.§_-1I§;
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
