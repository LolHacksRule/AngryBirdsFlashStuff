package §1m§
{
   import §"!I§.§^!2§;
   import §3!b§.§;F§;
   
   public class §0!%§ extends §;F§
   {
       
      
      public function §0!%§(param1:§^!2§, param2:String = null, param3:Boolean = true, param4:Number = 1.0)
      {
         super(param1,param2,param3);
         §1!6§ = param4;
      }
      
      override public function init() : void
      {
         §=!V§.initEmptyEnvironment(§!A§,§5B§);
         §=!V§.camera.initSlowScroll(§1!6§);
         §=!V§.camera.manualScale = 0.4;
      }
   }
}
