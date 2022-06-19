package §_-5i§
{
   import §_-2r§.§_-sn§;
   
   public class §if§ extends §_-l5§
   {
       
      
      private var §_-KW§:String = null;
      
      private var §_-ua§:Boolean = true;
      
      protected var §_-t§:Number = 1.0;
      
      public function §if§(param1:§_-sn§, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§_-KW§ = param2;
         this.§_-ua§ = param3;
      }
      
      override public function init() : void
      {
         §_-5F§.initEmptyEnvironment(this.§_-KW§,this.§_-ua§);
         §_-5F§.camera.initSlowScroll(this.§_-t§);
      }
   }
}
