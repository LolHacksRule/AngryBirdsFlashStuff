package §7!c§
{
   import §"!>§.§<!o§;
   import §""%§.§"!@§;
   import §""%§.§7"§;
   import §;!0§.;
   import §;"=§.§6!<§;
   
   public class §3!<§ extends §"!H§
   {
       
      
      protected var §@1§:§6!<§;
      
      public function §3!<§(param1:§#2§, param2:§<!o§, param3:§6!<§, param4:Boolean = true, param5:String = "LevelLoadStateClassic")
      {
         this.§@1§ = param3;
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
      
      override protected function initPackageManager() : §"!@§
      {
         return new §7"§(§,W§,this.§@1§);
      }
      
      override public function onLevelLoadError() : void
      {
         §2g§(StateEpisodeSelection.STATE_NAME);
      }
   }
}
