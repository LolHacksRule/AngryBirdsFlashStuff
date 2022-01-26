package §_-Kb§
{
   import §_-5Y§.§_-yw§;
   
   public class §_-Vs§ extends §_-e§
   {
       
      
      private var §_-TB§:String = null;
      
      private var §_-7v§:Boolean = true;
      
      public function §_-Vs§(param1:§_-yw§, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§_-TB§ = param2;
         this.§_-7v§ = param3;
      }
      
      override public function init() : void
      {
         §_-Fx§.initEmptyEnvironment(this.§_-TB§,this.§_-7v§);
         §_-Fx§.camera.initSlowScroll();
      }
   }
}
