package § A§
{
   import §0V§.§`!O§;
   
   public class §9c§ extends §<!D§
   {
       
      
      protected var §;!%§:String = null;
      
      protected var §%d§:Boolean = true;
      
      protected var §#!D§:Number = 1.0;
      
      public function §9c§(param1:§`!O§, param2:String = null, param3:Boolean = true)
      {
         super(param1);
         this.§;!%§ = param2;
         this.§%d§ = param3;
      }
      
      override public function init() : void
      {
         §!q§.initEmptyEnvironment(this.§;!%§,this.§%d§);
         §!q§.camera.initSlowScroll(this.§#!D§);
      }
   }
}
