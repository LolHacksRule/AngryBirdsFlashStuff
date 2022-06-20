package §]§
{
   import §##x§.§7$<§;
   import §+`§.§%"q§;
   import §7#$§.§]#q§;
   import §[c§.§ #a§;
   
   public class §1$?§ extends § #a§
   {
       
      
      protected var mLevelManager:§]#q§;
      
      public function §1$?§(param1:§]#q§, param2:Boolean, param3:String, param4:§%"q§)
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
         AngryBirdsBase.singleton.§,%§.addLocalizationTarget(this);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         AngryBirdsBase.singleton.§,%§.removeLocalizationTarget(this);
      }
      
      override protected function runAnimations(param1:Number) : void
      {
         if(§0#l§ && §["C§ != §7$<§.§3h§ && !AngryBirdsBase.singleton.popupManager.§[#a§())
         {
            §0#l§.run(param1);
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
