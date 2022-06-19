package §_-be§
{
   import §_-0-K§.§_-FL§;
   
   public class §_-kr§ extends §_-5i§
   {
       
      
      private var §_-7T§:String = null;
      
      private var §_-3t§:Boolean = true;
      
      protected var §_-Hc§:Number = 1.0;
      
      public function §_-kr§(param1:§_-FL§, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§_-7T§ = param2;
         this.§_-3t§ = param3;
      }
      
      override public function init() : void
      {
         §_-mC§.initEmptyEnvironment(this.§_-7T§,this.§_-3t§);
         §_-mC§.camera.initSlowScroll(this.§_-Hc§);
      }
   }
}
