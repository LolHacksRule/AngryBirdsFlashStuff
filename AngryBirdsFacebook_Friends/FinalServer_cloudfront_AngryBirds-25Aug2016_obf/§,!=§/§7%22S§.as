package §,!=§
{
   import §#v§.§#!?§;
   import §'U§.§]#[§;
   import §1#T§.§ #<§;
   import §9"#§.§4$5§;
   
   public class §7"S§ extends §4$5§
   {
       
      
      protected var mLevelManager:§#!?§;
      
      public function §7"S§(param1:§#!?§, param2:Boolean, param3:String, param4:§]#[§)
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
         AngryBirdsBase.singleton.§1#%§.addLocalizationTarget(this);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         AngryBirdsBase.singleton.§1#%§.removeLocalizationTarget(this);
      }
      
      override protected function runAnimations(param1:Number) : void
      {
         if(§]!g§ && §,#^§ != § #<§.§?`§ && !AngryBirdsBase.singleton.popupManager.§5"'§())
         {
            §]!g§.run(param1);
         }
      }
   }
}
