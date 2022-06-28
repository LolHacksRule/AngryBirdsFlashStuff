package §9c§
{
   import §"$§.Starling;
   import §#!X§.LevelManager;
   import §-!>§.§4!T§;
   import §8!?§.DynamicContentManager;
   import §8!?§.TextureManager;
   import §>!<§.UIEventListenerRovio;
   import §?$§.CutScene;
   import §?$§.CutSceneManager;
   import §@!H§.§-!H§;
   import §@!H§.§3!5§;
   import §[!>§.StateBase;
   import flash.events.Event;
   
   public class StateCutScene extends StateBase
   {
      
      public static const STATE_NAME:String = "StateCutScene";
      
      private static const SKIP_BUTTON_DELAY_LENGHT:Number = 500;
       
      
      private var §+!e§:CutScene;
      
      private var §>E§:Boolean;
      
      private var §8!>§:Number = 0;
      
      private var §,f§:Number = 0;
      
      private var §;!,§:DynamicContentManager;
      
      public function StateCutScene(initState:Boolean = true, name:String = "StateCutScene")
      {
         super(initState,name);
      }
      
      override public function init() : void
      {
         super.init();
         §^,§ = new §-!H§(this);
         §^,§.init(§3!5§.§4@§.Views.View_CutScene[0]);
      }
      
      protected function §%$§(cutscene:String) : Boolean
      {
         if(cutscene)
         {
            if(this.§;!,§)
            {
               §^,§.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§;!,§.removeEventListener(Event.COMPLETE,this.§,!V§);
               this.§;!,§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
               this.§;!,§.addEventListener(Event.COMPLETE,this.§,!V§);
               this.§;!,§.addEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
               this.§;!,§.§'!9§("cutscene_" + cutscene);
            }
            else
            {
               this.§ l§();
            }
            return true;
         }
         return false;
      }
      
      private function §,!V§(e:Event) : void
      {
         if(this.§;!,§)
         {
            this.§;!,§.removeEventListener(Event.COMPLETE,this.§,!V§);
            this.§;!,§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
            this.§ l§();
         }
      }
      
      private function § l§() : void
      {
         §^,§.getItemByName("MovieClip_Loading").setVisibility(false);
         var cutSceneName:String = this.§6+§();
         var textureManager:TextureManager = TextureManager.§&!'§;
         if(this.§;!,§)
         {
            textureManager = this.§;!,§.textureManager;
         }
         this.§+!e§ = CutSceneManager.§5h§(cutSceneName,textureManager);
         if(this.§+!e§)
         {
            AngryBirdsFP11.sUserProgress.§,n§(cutSceneName);
            §4!T§.§1t§.§@!F§(true);
            §4!T§.§1t§.§;!1§(false);
            this.§+!e§.update(0);
            §4!T§.§1t§.§7B§.addChild(this.§+!e§.sprite);
         }
      }
      
      protected function onCutSceneNotAvailable(e:Event) : void
      {
         if(this.§;!,§)
         {
            this.§;!,§.removeEventListener(Event.COMPLETE,this.§,!V§);
            this.§;!,§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
         }
         this.end();
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§;!,§)
         {
            this.§;!,§ = §4!T§.§1t§.§6J§;
         }
         if(Starling.§'!A§)
         {
            Starling.§'!A§.color = 0;
         }
         this.§8!>§ = 0;
         this.§,f§ = 0;
         §^,§.getItemByName("Button_Skip").setVisibility(false);
         §^,§.getItemByName("Button_Skip").mClip.alpha = this.§8!>§;
         AngryBirdsFP11.§@!9§();
         this.§>E§ = false;
         §^,§.getItemByName("MovieClip_Loading").setVisibility(false);
         var cutSceneName:String = this.§6+§();
         if(!this.§%$§(cutSceneName))
         {
            this.end();
         }
      }
      
      protected function §6+§() : String
      {
         var levelId:String = LevelManager.§ !Y§;
         var cutScene:String = LevelManager.§7+§().§#L§(levelId + "-OUTRO");
         if(!cutScene)
         {
            levelId = LevelManager.§!=§;
            cutScene = LevelManager.§7+§().§#L§(levelId + "-INTRO");
         }
         return cutScene;
      }
      
      override public function deActivate() : void
      {
         if(this.§+!e§)
         {
            §4!T§.§1t§.§7B§.removeChild(this.§+!e§.sprite);
            this.§+!e§.dispose();
            this.§+!e§ = null;
         }
         if(this.§;!,§)
         {
            this.§;!,§.removeEventListener(Event.COMPLETE,this.§,!V§);
            this.§;!,§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
         }
         §4!T§.§1t§.§;!1§(true);
         LevelManager.§ !Y§ = null;
         super.deActivate();
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         switch(eventName)
         {
            case "SKIP":
               this.§>E§ = true;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§8R§.§,!f§();
         }
      }
      
      override public function run(deltaTime:Number) : int
      {
         if(this.§,f§ > SKIP_BUTTON_DELAY_LENGHT)
         {
            §^,§.getItemByName("Button_Skip").setVisibility(true);
            this.§8!>§ += deltaTime / 1000;
            §^,§.getItemByName("Button_Skip").mClip.alpha = this.§8!>§;
            if(this.§8!>§ > 1)
            {
               this.§8!>§ = 1;
            }
         }
         else
         {
            this.§,f§ += deltaTime;
         }
         if(this.§>E§)
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
         if(this.§+!e§ && !this.§+!e§.update(deltaTime))
         {
            this.end();
         }
         return StateBase.STATE_STATUS_RUNNING;
      }
      
      private function end() : void
      {
         var currentLevel:String = null;
         if(this.§+!e§ && this.§+!e§.§%p§ == CutScene.§;F§)
         {
            StateLevelSelection.sPreviousState = StateCutScene.STATE_NAME;
            mNextState = StateLevelSelection.STATE_NAME;
         }
         else if(this.§+!e§ && this.§+!e§.§%p§ == CutScene.§@s§)
         {
            mNextState = StateCreditsNew.STATE_NAME;
         }
         else
         {
            currentLevel = LevelManager.§!=§;
            if(currentLevel)
            {
               mNextState = this.§1!2§();
            }
            else
            {
               mNextState = StateLevelSelection.STATE_NAME;
            }
         }
      }
      
      protected function §1!2§() : String
      {
         return StateLevelLoadClassic.STATE_NAME;
      }
   }
}
