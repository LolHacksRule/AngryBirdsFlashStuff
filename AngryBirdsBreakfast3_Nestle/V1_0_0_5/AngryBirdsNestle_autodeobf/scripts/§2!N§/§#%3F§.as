package §2!N§
{
   import § !T§.§ q§;
   import §]k§.§<S§;
   
   public class §#?§ extends §<!N§
   {
       
      
      protected var §4!B§:String = null;
      
      protected var §3R§:Boolean = true;
      
      protected var §%!x§:Number = 1.0;
      
      public function §#?§(param1:§<S§, param2:§ q§, param3:String = null, param4:Boolean = true)
      {
         super(param1,param2);
         this.§4!B§ = param3;
         this.§3R§ = param4;
      }
      
      override public function init() : void
      {
         §#g§.initializeEmptyEnvironment(this.§4!B§,this.§3R§);
         §#g§.camera.initSlowScroll(this.§%!x§);
      }
   }
}
