package §8!_§
{
   import §!?§.§,!8§;
   import §!?§.§@"C§;
   import §"!&§.§8"F§;
   import §%!r§.§3!'§;
   import §`!j§.§9"!§;
   
   public class §6]§ extends §?!#§
   {
       
      
      protected var §3"4§:§8"F§;
      
      public function §6]§(param1:§9"!§, param2:§3!'§, param3:§8"F§, param4:Boolean = true, param5:String = "LevelLoadStateClassic")
      {
         this.§3"4§ = param3;
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
      
      override protected function initPackageManager() : §@"C§
      {
         return new §,!8§(§6u§,this.§3"4§);
      }
      
      override public function onLevelLoadError() : void
      {
         §8!^§(StateEpisodeSelection.STATE_NAME);
      }
   }
}
