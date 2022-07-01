package §^x§
{
   import §!P§.§5!1§;
   import §]A§.§[d§;
   
   public class §!b§ extends §"b§
   {
       
      
      protected var §!!-§:String = null;
      
      protected var §<!W§:Boolean = true;
      
      protected var §%!A§:Number = 1.0;
      
      public function §!b§(param1:§[d§, param2:§5!1§, param3:String = null, param4:Boolean = true)
      {
         super(param1,param2);
         this.§!!-§ = param3;
         this.§<!W§ = param4;
      }
      
      override public function init() : void
      {
         §+"1§.initializeEmptyEnvironment(this.§!!-§,this.§<!W§);
         §+"1§.camera.initSlowScroll(this.§%!A§);
      }
   }
}
