package §9!E§
{
   import §,!V§.§5!-§;
   import §9!'§.§0!%§;
   
   public class §'!U§ extends §5!-§
   {
       
      
      public function §'!U§(param1:§0!%§, param2:String = null, param3:Boolean = true, param4:Number = 1.0)
      {
         super(param1,param2,param3);
         §`!f§ = param4;
      }
      
      override public function init() : void
      {
         §]B§.initEmptyEnvironment(§-a§,§@?§);
         §]B§.camera.initSlowScroll(§`!f§);
         §]B§.camera.manualScale = 0.4;
      }
   }
}
