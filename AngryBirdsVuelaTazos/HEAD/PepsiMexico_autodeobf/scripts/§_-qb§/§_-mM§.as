package §_-qb§
{
   import §_-Di§.§_-ix§;
   
   public class §_-mM§ extends §_-AU§
   {
       
      
      private var §_-9Q§:String = null;
      
      private var §_-Xy§:Boolean = true;
      
      public function §_-mM§(param1:§_-ix§, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§_-9Q§ = param2;
         this.§_-Xy§ = param3;
      }
      
      override public function init() : void
      {
         §_-JH§.initEmptyEnvironment(this.§_-9Q§,this.§_-Xy§);
         §_-JH§.camera.initSlowScroll();
      }
   }
}
