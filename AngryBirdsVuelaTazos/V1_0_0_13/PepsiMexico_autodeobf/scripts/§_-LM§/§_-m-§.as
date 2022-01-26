package §_-LM§
{
   import §_-FQ§.§_-7W§;
   
   public class §_-m-§ extends §_-sY§
   {
       
      
      private var §_-r1§:String = null;
      
      private var §_-0l§:Boolean = true;
      
      public function §_-m-§(param1:§_-7W§, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§_-r1§ = param2;
         this.§_-0l§ = param3;
      }
      
      override public function init() : void
      {
         §_-6q§.initEmptyEnvironment(this.§_-r1§,this.§_-0l§);
         §_-6q§.camera.initSlowScroll();
      }
   }
}
