package §"!@§
{
   import §5P§.§""C§;
   import §7"§.§`#@§;
   import §;$3§.§8=§;
   import §?"f§.§!Y§;
   
   public class §@"S§ extends §`#@§
   {
       
      
      protected var mLevelManager:§8=§;
      
      public function §@"S§(param1:§8=§, param2:Boolean, param3:String, param4:§""C§)
      {
         this.mLevelManager = param1;
         super(param2,param3,param4);
      }
      
      public function prepareToLoadNextClassicLevel() : void
      {
         this.mLevelManager.loadLevel(this.mLevelManager.getNextLevelId());
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         AngryBirdsBase.singleton.§+U§.addLocalizationTarget(this);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         AngryBirdsBase.singleton.§+U§.removeLocalizationTarget(this);
      }
      
      override protected function runAnimations(param1:Number) : void
      {
         if(§2#R§ && §7"q§ != §!Y§.§9?§ && !AngryBirdsBase.singleton.popupManager.§#"q§())
         {
            §2#R§.run(param1);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         this.updateUIScale();
      }
      
      protected function updateUIScale() : void
      {
      }
   }
}
