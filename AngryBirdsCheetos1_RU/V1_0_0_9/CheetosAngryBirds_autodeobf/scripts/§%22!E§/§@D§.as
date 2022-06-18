package §"!E§
{
   import §3E§.§6w§;
   
   public class §@D§ extends §=!3§
   {
       
      
      protected var §%!'§:String = null;
      
      protected var §9'§:Boolean = true;
      
      protected var §5!%§:Number = 1.0;
      
      public function §@D§(param1:§6w§, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§%!'§ = param2;
         this.§9'§ = param3;
      }
      
      override public function init() : void
      {
         §]v§.initEmptyEnvironment(this.§%!'§,this.§9'§);
         §]v§.camera.initSlowScroll(this.§5!%§);
      }
   }
}
