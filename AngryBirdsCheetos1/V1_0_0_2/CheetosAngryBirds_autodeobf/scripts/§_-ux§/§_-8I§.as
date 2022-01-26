package §_-ux§
{
   import §_-Kz§.§_-c3§;
   
   public class §_-8I§ extends §_-tH§
   {
       
      
      private var §_-z5§:String = null;
      
      private var §_-eG§:Boolean = true;
      
      protected var §_-0-a§:Number = 1.0;
      
      public function §_-8I§(param1:§_-c3§, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§_-z5§ = param2;
         this.§_-eG§ = param3;
      }
      
      override public function init() : void
      {
         §_-GF§.initEmptyEnvironment(this.§_-z5§,this.§_-eG§);
         §_-GF§.camera.initSlowScroll(this.§_-0-a§);
      }
   }
}
