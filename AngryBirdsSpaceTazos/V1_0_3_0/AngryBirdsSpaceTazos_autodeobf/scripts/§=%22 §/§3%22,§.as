package §=" §
{
   import §4",§.§,!j§;
   import §5R§.§0!P§;
   import §5R§.§3w§;
   import §6!M§.§3Y§;
   import §71§.§;l§;
   
   public class §3",§ extends § Q§
   {
       
      
      protected var §2!?§:§3Y§;
      
      public function §3",§(param1:§,!j§, param2:§;l§, param3:§3Y§, param4:Boolean = true, param5:String = "LevelLoadStateClassic")
      {
         this.§2!?§ = param3;
         super(param1,param2,param4,param5);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override protected function initPackageManager() : §0!P§
      {
         return new §3w§(§]m§,this.§2!?§);
      }
      
      override public function onLevelLoadError() : void
      {
         §'Q§(StateEpisodeSelection.STATE_NAME);
      }
   }
}
