package §2";§
{
   import § !j§.§4#c§;
   import §,"v§.§;"n§;
   import §>"W§.§7Y§;
   import §?"Q§.§2!Z§;
   
   public class §7!z§ extends §7Y§
   {
       
      
      protected var mLevelManager:§;"n§;
      
      public function §7!z§(param1:§;"n§, param2:Boolean, param3:String, param4:§4#c§)
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
         AngryBirdsBase.singleton.§-U§.addLocalizationTarget(this);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         AngryBirdsBase.singleton.§-U§.removeLocalizationTarget(this);
      }
      
      override protected function runAnimations(param1:Number) : void
      {
         if(§5!?§ && §"#f§ != §2!Z§.§7"4§ && !AngryBirdsBase.singleton.popupManager.§?"N§())
         {
            §5!?§.run(param1);
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
