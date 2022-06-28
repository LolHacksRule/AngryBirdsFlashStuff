package §<!S§
{
   import § D§.§]!B§;
   import §"L§.LevelManager;
   import §,!_§.DynamicContentManager;
   import §,!_§.TextureManager;
   import §0P§.Starling;
   import §4!9§.§6"§;
   import §4!9§.§>!^§;
   import §4H§.StateBase;
   import §4u§.CutScene;
   import §4u§.CutSceneManager;
   import §>!-§.UIEventListenerRovio;
   import flash.events.Event;
   
   public class StateCutScene extends StateBase
   {
      
      public static const STATE_NAME:String = "StateCutScene";
      
      private static const SKIP_BUTTON_DELAY_LENGHT:Number = 500;
       
      
      private var §+t§:CutScene;
      
      private var §1n§:Boolean;
      
      private var §[!§:Number = 0;
      
      private var §6%§:Number = 0;
      
      private var §;O§:DynamicContentManager;
      
      public function StateCutScene(initState:Boolean = true, name:String = "StateCutScene")
      {
         super(initState,name);
      }
      
      override public function init() : void
      {
         super.init();
         §5!M§ = new §6"§(this);
         §5!M§.init(§>!^§.§8'§.Views.View_CutScene[0]);
      }
      
      protected function §do §(cutscene:String) : Boolean
      {
         if(cutscene)
         {
            if(this.§;O§)
            {
               §5!M§.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§;O§.removeEventListener(Event.COMPLETE,this.§@!8§);
               this.§;O§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
               this.§;O§.addEventListener(Event.COMPLETE,this.§@!8§);
               this.§;O§.addEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
               this.§;O§.§'m§("cutscene_" + cutscene);
            }
            else
            {
               this.§,!R§();
            }
            return true;
         }
         return false;
      }
      
      private function §@!8§(e:Event) : void
      {
         if(this.§;O§)
         {
            this.§;O§.removeEventListener(Event.COMPLETE,this.§@!8§);
            this.§;O§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
            this.§,!R§();
         }
      }
      
      private function §,!R§() : void
      {
         §5!M§.getItemByName("MovieClip_Loading").setVisibility(false);
         var cutSceneName:String = this.§0n§();
         var textureManager:TextureManager = TextureManager.§8!X§;
         if(this.§;O§)
         {
            textureManager = this.§;O§.textureManager;
         }
         this.§+t§ = CutSceneManager.§ _§(cutSceneName,textureManager);
         if(this.§+t§)
         {
            AngryBirdsFP11.sUserProgress.§27§(cutSceneName);
            §]!B§.§>F§.§,>§(true);
            §]!B§.§>F§.§1F§(false);
            this.§+t§.update(0);
            §]!B§.§>F§.§,F§.addChild(this.§+t§.sprite);
         }
      }
      
      protected function onCutSceneNotAvailable(e:Event) : void
      {
         if(this.§;O§)
         {
            this.§;O§.removeEventListener(Event.COMPLETE,this.§@!8§);
            this.§;O§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
         }
         this.end();
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§;O§)
         {
            this.§;O§ = §]!B§.§>F§.§>-§;
         }
         if(Starling.§!!F§)
         {
            Starling.§!!F§.color = 0;
         }
         this.§[!§ = 0;
         this.§6%§ = 0;
         §5!M§.getItemByName("Button_Skip").setVisibility(false);
         §5!M§.getItemByName("Button_Skip").mClip.alpha = this.§[!§;
         AngryBirdsFP11.§2!#§();
         this.§1n§ = false;
         §5!M§.getItemByName("MovieClip_Loading").setVisibility(false);
         var cutSceneName:String = this.§0n§();
         if(!this.§do §(cutSceneName))
         {
            this.end();
         }
      }
      
      protected function §0n§() : String
      {
         var levelId:String = LevelManager.§;p§;
         var cutScene:String = LevelManager.§&!e§().§9!Z§(levelId + "-OUTRO");
         if(!cutScene)
         {
            levelId = LevelManager.§var§;
            cutScene = LevelManager.§&!e§().§9!Z§(levelId + "-INTRO");
         }
         return cutScene;
      }
      
      override public function deActivate() : void
      {
         if(this.§+t§)
         {
            §]!B§.§>F§.§,F§.removeChild(this.§+t§.sprite);
            this.§+t§.dispose();
            this.§+t§ = null;
         }
         if(this.§;O§)
         {
            this.§;O§.removeEventListener(Event.COMPLETE,this.§@!8§);
            this.§;O§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
         }
         §]!B§.§>F§.§1F§(true);
         LevelManager.§;p§ = null;
         super.deActivate();
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         switch(eventName)
         {
            case "SKIP":
               this.§1n§ = true;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§5V§.§>J§();
         }
      }
      
      override public function run(deltaTime:Number) : int
      {
         if(this.§6%§ > SKIP_BUTTON_DELAY_LENGHT)
         {
            §5!M§.getItemByName("Button_Skip").setVisibility(true);
            this.§[!§ += deltaTime / 1000;
            §5!M§.getItemByName("Button_Skip").mClip.alpha = this.§[!§;
            if(this.§[!§ > 1)
            {
               this.§[!§ = 1;
            }
         }
         else
         {
            this.§6%§ += deltaTime;
         }
         if(this.§1n§)
         {
            this.end();
            return StateBase.STATE_STATUS_COMPLETED;
         }
         var superReturn:int = super.run(deltaTime);
         if(superReturn != StateBase.STATE_STATUS_RUNNING)
         {
            return superReturn;
         }
         if(mNextState.length > 0)
         {
            return StateBase.STATE_STATUS_COMPLETED;
         }
         if(this.§+t§ && !this.§+t§.update(deltaTime))
         {
            this.end();
         }
         return StateBase.STATE_STATUS_RUNNING;
      }
      
      private function end() : void
      {
         var currentLevel:String = null;
         if(this.§+t§ && this.§+t§.§^!"§ == CutScene.§@e§)
         {
            StateLevelSelection.sPreviousState = StateCutScene.STATE_NAME;
            mNextState = StateLevelSelection.STATE_NAME;
         }
         else if(this.§+t§ && this.§+t§.§^!"§ == CutScene.§5!_§)
         {
            mNextState = StateCreditsNew.STATE_NAME;
         }
         else
         {
            currentLevel = LevelManager.§var§;
            if(currentLevel)
            {
               mNextState = this.§%b§();
            }
            else
            {
               mNextState = StateLevelSelection.STATE_NAME;
            }
         }
      }
      
      protected function §%b§() : String
      {
         return StateLevelLoadClassic.STATE_NAME;
      }
   }
}
