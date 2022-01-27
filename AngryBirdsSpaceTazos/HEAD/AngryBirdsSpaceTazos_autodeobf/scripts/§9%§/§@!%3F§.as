package §9%§
{
   import §%!P§.§0![§;
   import §%!P§.§;"H§;
   import §%"%§.§2Z§;
   import §1z§.§^!@§;
   import §3>§.§[8§;
   
   public class §@!?§ extends §^! §
   {
       
      
      protected var §!d§:§[8§;
      
      public function §@!?§(param1:§^!@§, param2:§2Z§, param3:§[8§, param4:Boolean = true, param5:String = "LevelLoadStateClassic")
      {
         this.§!d§ = param3;
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
      
      override protected function initPackageManager() : §;"H§
      {
         return new §0![§(§#"=§,this.§!d§);
      }
      
      override public function onLevelLoadError() : void
      {
         § !I§(StateEpisodeSelection.STATE_NAME);
      }
   }
}
