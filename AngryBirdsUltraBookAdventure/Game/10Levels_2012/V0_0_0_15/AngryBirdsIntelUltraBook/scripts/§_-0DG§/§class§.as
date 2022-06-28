package §_-0Dg§
{
   import §_-TG§.§_-00u§;
   
   public class §class§ extends §_-056§
   {
       
      
      protected var §_-6N§:String = null;
      
      protected var §_-xk§:Boolean = true;
      
      protected var §_-Q3§:Number = 1.0;
      
      public function §class§(param1:§_-00u§, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§_-6N§ = param2;
         this.§_-xk§ = param3;
      }
      
      override public function init() : void
      {
         §_-6A§.initEmptyEnvironment(this.§_-6N§,this.§_-xk§);
         §_-6A§.camera.initSlowScroll(this.§_-Q3§);
      }
   }
}
