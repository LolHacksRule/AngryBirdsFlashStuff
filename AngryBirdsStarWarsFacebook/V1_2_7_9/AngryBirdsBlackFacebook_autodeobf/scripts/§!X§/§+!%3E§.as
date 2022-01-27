package §!X§
{
   import §'+§.§="B§;
   import §,#+§.§7!m§;
   import §,#+§.§;"y§;
   import §>P§.§5"3§;
   import §`"8§.§%"?§;
   import §`"8§.§>t§;
   
   public class §+!>§ extends §>!I§
   {
       
      
      protected var §#"§:§5"3§;
      
      public function §+!>§(param1:§7!m§, param2:§5"3§, param3:§="B§, param4:Boolean = true, param5:String = "LevelLoadStateClassic")
      {
         this.§#"§ = param2;
         super(param1,param3,param4,param5);
      }
      
      override protected function initPackageManager() : §%"?§
      {
         return new §>t§(§ !p§,this.§#"§);
      }
      
      override protected function setLoadingText() : void
      {
         §>I§.setText("Loading " + §;"y§(§ !p§).getPrettyLevelString(§ !p§.currentLevel),"TextField_LevelLoading");
      }
   }
}
