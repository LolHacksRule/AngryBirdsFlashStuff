package §^1§
{
   import § #_§.§?!>§;
   import §6#x§.§'!G§;
   import §>#s§.§@^§;
   import §?o§.§4#?§;
   
   public class §';§ extends §'!G§
   {
       
      
      protected var mLevelManager:§4#?§;
      
      public function §';§(param1:§4#?§, param2:Boolean, param3:String, param4:§?!>§)
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
         AngryBirdsBase.singleton.§6%§.addLocalizationTarget(this);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         AngryBirdsBase.singleton.§6%§.removeLocalizationTarget(this);
      }
      
      override protected function runAnimations(param1:Number) : void
      {
         if(§]"I§ && §-#K§ != §@^§.§""=§ && !AngryBirdsBase.singleton.popupManager.§!=§())
         {
            §]"I§.run(param1);
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
