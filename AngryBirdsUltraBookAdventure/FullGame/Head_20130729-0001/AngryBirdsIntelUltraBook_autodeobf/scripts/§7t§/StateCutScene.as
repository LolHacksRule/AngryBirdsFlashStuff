package §7t§
{
   import §%r§.CutScene;
   import §%r§.CutSceneManager;
   import §,!7§.DynamicContentManager;
   import §,!7§.TextureManager;
   import §0!Q§.UIEventListenerRovio;
   import §1N§.StateBase;
   import §7!>§.Starling;
   import §=!5§.§+q§;
   import §=!5§.§`X§;
   import §>!_§.LevelManager;
   import §?!Y§.§`S§;
   import flash.events.Event;
   
   public class StateCutScene extends StateBase
   {
      
      public static const STATE_NAME:String = "StateCutScene";
      
      private static const SKIP_BUTTON_DELAY_LENGHT:Number = 500;
       
      
      private var §4Y§:CutScene;
      
      private var §!j§:Boolean;
      
      private var §[!V§:Number = 0;
      
      private var §2!f§:Number = 0;
      
      private var §<I§:DynamicContentManager;
      
      public function StateCutScene(initState:Boolean = true, name:String = "StateCutScene")
      {
         super(initState,name);
      }
      
      override public function init() : void
      {
         super.init();
         §`=§ = new §`X§(this);
         §`=§.init(§+q§.§%M§.Views.View_CutScene[0]);
      }
      
      protected function §>$§(cutscene:String) : Boolean
      {
         if(cutscene)
         {
            if(this.§<I§)
            {
               §`=§.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§<I§.removeEventListener(Event.COMPLETE,this.§-!H§);
               this.§<I§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
               this.§<I§.addEventListener(Event.COMPLETE,this.§-!H§);
               this.§<I§.addEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
               this.§<I§.§&!&§("cutscene_" + cutscene);
            }
            else
            {
               this.§@!5§();
            }
            return true;
         }
         return false;
      }
      
      private function §-!H§(e:Event) : void
      {
         if(this.§<I§)
         {
            this.§<I§.removeEventListener(Event.COMPLETE,this.§-!H§);
            this.§<I§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
            this.§@!5§();
         }
      }
      
      private function §@!5§() : void
      {
         §`=§.getItemByName("MovieClip_Loading").setVisibility(false);
         var cutSceneName:String = this.§,k§();
         var textureManager:TextureManager = TextureManager.§7!E§;
         if(this.§<I§)
         {
            textureManager = this.§<I§.textureManager;
         }
         this.§4Y§ = CutSceneManager.§?!&§(cutSceneName,textureManager);
         if(this.§4Y§)
         {
            AngryBirdsFP11.sUserProgress.§0!Z§(cutSceneName);
            §`S§.§[o§.§#!$§(true);
            §`S§.§[o§.§9H§(false);
            this.§4Y§.update(0);
            §`S§.§[o§.§!!!§.addChild(this.§4Y§.sprite);
         }
      }
      
      protected function onCutSceneNotAvailable(e:Event) : void
      {
         if(this.§<I§)
         {
            this.§<I§.removeEventListener(Event.COMPLETE,this.§-!H§);
            this.§<I§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
         }
         this.end();
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§<I§)
         {
            this.§<I§ = §`S§.§[o§.§4!G§;
         }
         if(Starling.§7!+§)
         {
            Starling.§7!+§.color = 0;
         }
         this.§[!V§ = 0;
         this.§2!f§ = 0;
         §`=§.getItemByName("Button_Skip").setVisibility(false);
         §`=§.getItemByName("Button_Skip").mClip.alpha = this.§[!V§;
         AngryBirdsFP11.§5!R§();
         this.§!j§ = false;
         §`=§.getItemByName("MovieClip_Loading").setVisibility(false);
         var cutSceneName:String = this.§,k§();
         if(!this.§>$§(cutSceneName))
         {
            this.end();
         }
      }
      
      protected function §,k§() : String
      {
         var levelId:String = LevelManager.§=t§;
         var cutScene:String = LevelManager.§!]§().§+B§(levelId + "-OUTRO");
         if(!cutScene)
         {
            levelId = LevelManager.§1m§;
            cutScene = LevelManager.§!]§().§+B§(levelId + "-INTRO");
         }
         return cutScene;
      }
      
      override public function deActivate() : void
      {
         if(this.§4Y§)
         {
            §`S§.§[o§.§!!!§.removeChild(this.§4Y§.sprite);
            this.§4Y§.dispose();
            this.§4Y§ = null;
         }
         if(this.§<I§)
         {
            this.§<I§.removeEventListener(Event.COMPLETE,this.§-!H§);
            this.§<I§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
         }
         §`S§.§[o§.§9H§(true);
         LevelManager.§=t§ = null;
         super.deActivate();
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         switch(eventName)
         {
            case "SKIP":
               this.§!j§ = true;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§'t§.§0-§();
         }
      }
      
      override public function run(deltaTime:Number) : int
      {
         if(this.§2!f§ > SKIP_BUTTON_DELAY_LENGHT)
         {
            §`=§.getItemByName("Button_Skip").setVisibility(true);
            this.§[!V§ += deltaTime / 1000;
            §`=§.getItemByName("Button_Skip").mClip.alpha = this.§[!V§;
            if(this.§[!V§ > 1)
            {
               this.§[!V§ = 1;
            }
         }
         else
         {
            this.§2!f§ += deltaTime;
         }
         if(this.§!j§)
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
         if(this.§4Y§ && !this.§4Y§.update(deltaTime))
         {
            this.end();
         }
         return StateBase.STATE_STATUS_RUNNING;
      }
      
      private function end() : void
      {
         var currentLevel:String = null;
         if(this.§4Y§ && this.§4Y§.§]p§ == CutScene.§&M§)
         {
            StateLevelSelection.sPreviousState = StateCutScene.STATE_NAME;
            mNextState = StateLevelSelection.STATE_NAME;
         }
         else if(this.§4Y§ && this.§4Y§.§]p§ == CutScene.§[V§)
         {
            mNextState = StateCreditsNew.STATE_NAME;
         }
         else
         {
            currentLevel = LevelManager.§1m§;
            if(currentLevel)
            {
               mNextState = this.§4!6§();
            }
            else
            {
               mNextState = StateLevelSelection.STATE_NAME;
            }
         }
      }
      
      protected function §4!6§() : String
      {
         return StateLevelLoadClassic.STATE_NAME;
      }
   }
}
