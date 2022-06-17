package §3=§
{
   import § "q§.§@!'§;
   import §"$=§.§'![§;
   import §3"G§.§16§;
   import §?#h§.§3#=§;
   
   public class §-"4§ extends §3#=§
   {
       
      
      protected var mLevelManager:§'![§;
      
      public function §-"4§(param1:§'![§, param2:Boolean, param3:String, param4:§16§)
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
         AngryBirdsBase.singleton.§6"-§.addLocalizationTarget(this);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         AngryBirdsBase.singleton.§6"-§.removeLocalizationTarget(this);
      }
      
      override protected function runAnimations(param1:Number) : void
      {
         if(§[$2§ && §@#F§ != §@!'§.§,u§ && !AngryBirdsBase.singleton.popupManager.§`'§())
         {
            §[$2§.run(param1);
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
