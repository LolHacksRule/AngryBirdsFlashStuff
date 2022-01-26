package §_-D8§
{
   import §_-7X§.§_-R-§;
   
   public class §_-DM§ implements §_-mB§
   {
       
      
      private var §_-1I§:§_-mB§;
      
      private var §_-37§:String;
      
      private var §_-XU§:§_-mB§;
      
      private var §_-hZ§:Number = 0.0;
      
      public function §_-DM§(param1:§_-mB§, param2:§_-mB§, param3:String)
      {
         super();
         this.§_-1I§ = param1;
         this.§_-XU§ = param2;
         this.§_-37§ = param3;
         this.§_-hZ§ = param2.duration;
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
      
      public function get child() : §_-mB§
      {
         return this.§_-XU§;
      }
      
      public function set §_-HB§(param1:§_-R-§) : void
      {
      }
      
      public function update(param1:Number) : void
      {
         this.§_-XU§.update(param1);
         this.§_-1I§.setObject(this.§_-37§,this.§_-XU§.target);
      }
      
      public function set target(param1:Object) : void
      {
      }
      
      public function get duration() : Number
      {
         return this.§_-hZ§;
      }
      
      public function get parent() : §_-mB§
      {
         return this.§_-1I§;
      }
      
      public function resolveValues() : void
      {
      }
      
      public function get §_-HB§() : §_-R-§
      {
         return null;
      }
      
      public function getObject(param1:String) : Object
      {
         return null;
      }
      
      public function clone() : §_-LY§
      {
         return new §_-DM§(this.§_-1I§,this.§_-XU§,this.§_-37§);
      }
   }
}
