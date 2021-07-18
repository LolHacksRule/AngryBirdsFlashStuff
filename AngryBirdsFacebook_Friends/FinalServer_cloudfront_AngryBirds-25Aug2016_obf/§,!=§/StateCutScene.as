package §,!=§
{
   import §#v§.§#!?§;
   import §'!U§.§0!?§;
   import §'U§.§]#[§;
   import §3!a§.§#!-§;
   import §3!a§.§["b§;
   import §<!O§.§'k§;
   import §<!O§.§@#`§;
   import §?§.§>"$§;
   import §@"§.§&!=§;
   import §@"§.§,"A§;
   import §^a§.Starling;
   import flash.events.Event;
   
   public class StateCutScene extends §7"S§
   {
      
      public static const STATE_NAME:String = "StateCutScene";
      
      private static const §>"A§:Number = 500;
       
      
      protected var §>#>§:§#!-§;
      
      protected var §+e§:Boolean;
      
      private var §"2§:Number = 0;
      
      private var §-!m§:Number = 0;
      
      protected var §=#j§:§,"A§;
      
      public function StateCutScene(param1:§#!?§, param2:§]#[§, param3:Boolean = true, param4:String = "StateCutScene")
      {
         super(param1,param3,param4,param2);
      }
      
      protected function get §9"^§() : §#!-§
      {
         return this.§>#>§;
      }
      
      override protected function init() : void
      {
         super.init();
         §!$§ = new §'k§(this);
         §!$§.init(§@#`§.§#!c§.Views.View_CutScene[0]);
      }
      
      protected function §!!-§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§=#j§)
            {
               §!$§.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§=#j§.removeEventListener(Event.COMPLETE,this.§##9§);
               this.§=#j§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
               this.§=#j§.addEventListener(Event.COMPLETE,this.§##9§);
               this.§=#j§.addEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
               this.§&K§(param1);
            }
            else
            {
               this.startCutScene();
            }
            return true;
         }
         return false;
      }
      
      protected function §&K§(param1:String) : void
      {
         this.§=#j§.§[!z§("cutscene_" + param1);
      }
      
      protected function §##9§(param1:Event) : void
      {
         if(this.§=#j§)
         {
            this.§=#j§.removeEventListener(Event.COMPLETE,this.§##9§);
            this.§=#j§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
            this.startCutScene();
         }
      }
      
      protected function startCutScene() : void
      {
         §!$§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.getCutSceneName();
         var _loc2_:§&!=§ = §&!=§.§3!]§;
         if(this.§=#j§)
         {
            _loc2_ = this.§=#j§.textureManager;
         }
         this.§>#>§ = §["b§.§5"o§(_loc1_,_loc2_);
         if(this.§>#>§)
         {
            AngryBirdsBase.singleton.dataModel.userProgress.§=8§(_loc1_);
            §>"$§.§3#'§.§5'§(true);
            §>"$§.§3#'§.§;W§(false);
            this.§>#>§.update(0);
            §>"$§.§3#'§.§&"L§.addChild(this.§>#>§.sprite);
         }
      }
      
      protected function onCutSceneNotAvailable(param1:Event) : void
      {
         if(this.§=#j§)
         {
            this.§=#j§.removeEventListener(Event.COMPLETE,this.§##9§);
            this.§=#j§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
         }
         this.end();
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §>"$§.§3#'§.clearLevel();
         §>"$§.§3#'§.§5'§(false);
         §>"$§.§3#'§.addEventListeners();
         if(!this.§=#j§)
         {
            this.§=#j§ = §>"$§.§3#'§.§2§;
         }
         if(Starling.§<#`§)
         {
            Starling.§<#`§.color = 0;
         }
         this.§"2§ = 0;
         this.§-!m§ = 0;
         §!$§.getItemByName("Button_Skip").setVisibility(false);
         §!$§.getItemByName("Button_Skip").mClip.alpha = this.§"2§;
         this.stopThemeMusic();
         this.§+e§ = false;
         §!$§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc2_:String = this.getCutSceneName();
         if(!this.§!!-§(_loc2_))
         {
            this.end();
         }
      }
      
      protected function stopThemeMusic() : void
      {
         AngryBirdsBase.singleton.stopThemeMusic();
      }
      
      protected function getCutSceneName() : String
      {
         var _loc1_:String = mLevelManager.previousLevel;
         var _loc2_:String = mLevelManager.getCurrentEpisodeModel().getCutScene(_loc1_ + "-OUTRO");
         if(!_loc2_)
         {
            _loc1_ = mLevelManager.currentLevel;
            _loc2_ = mLevelManager.getCurrentEpisodeModel().getCutScene(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§>#>§)
         {
            §>"$§.§3#'§.§&"L§.removeChild(this.§>#>§.sprite);
            this.§>#>§.dispose();
            this.§>#>§ = null;
         }
         if(this.§=#j§)
         {
            this.§=#j§.removeEventListener(Event.COMPLETE,this.§##9§);
            this.§=#j§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
         }
         §>"$§.§3#'§.§;W§(true);
         super.deActivate();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§0!?§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§+e§ = true;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsBase.singleton.§&f§();
         }
      }
      
      override protected function update(param1:Number) : void
      {
         if(this.§-!m§ > §>"A§)
         {
            §!$§.getItemByName("Button_Skip").setVisibility(true);
            this.§"2§ += param1 / 1000;
            §!$§.getItemByName("Button_Skip").mClip.alpha = this.§"2§;
            if(this.§"2§ > 1)
            {
               this.§"2§ = 1;
            }
         }
         else
         {
            this.§-!m§ += param1;
         }
         if(this.§+e§ || this.§>#>§ && !this.§>#>§.update(param1))
         {
            this.end();
         }
      }
      
      protected function end() : void
      {
         if(this.§=#j§)
         {
            this.§=#j§.removeEventListener(Event.COMPLETE,this.§##9§);
            this.§=#j§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
         }
         if(this.§>#>§ && this.§>#>§.cutSceneType == §#!-§.§^""§)
         {
            §<!B§.§+R§ = StateCutScene.STATE_NAME;
            §7P§(§<!B§.STATE_NAME);
         }
         else if(this.§>#>§ && this.§>#>§.cutSceneType == §#!-§.§,#V§)
         {
            §7P§(§"$6§.STATE_NAME);
         }
         else
         {
            this.§'"d§();
         }
      }
      
      protected function §'"d§() : void
      {
         var _loc1_:String = mLevelManager.currentLevel;
         if(_loc1_)
         {
            §7P§(this.getLevelLoadState());
         }
         else
         {
            §7P§(this.§"!f§);
         }
      }
      
      protected function get §"!f§() : String
      {
         return §<!B§.STATE_NAME;
      }
      
      protected function getLevelLoadState() : String
      {
         return §@#j§.STATE_NAME;
      }
   }
}
