package §]§
{
   import §"#k§.Starling;
   import §";§.§%"X§;
   import §";§.§false§;
   import §+`§.§%"q§;
   import §7"T§.§#"^§;
   import §7"T§.§6!G§;
   import §7#$§.§]#q§;
   import §8$=§.§4#=§;
   import §8$=§.§=$7§;
   import §?#z§.§]$?§;
   import §^"3§.§`$4§;
   import flash.events.Event;
   
   public class StateCutScene extends §1$?§
   {
      
      public static const STATE_NAME:String = "StateCutScene";
      
      private static const §&$?§:Number = 500;
       
      
      protected var §&#T§:§=$7§;
      
      protected var §"Y§:Boolean;
      
      private var §2b§:Number = 0;
      
      private var §>w§:Number = 0;
      
      protected var §;t§:§6!G§;
      
      public function StateCutScene(param1:§]#q§, param2:§%"q§, param3:Boolean = true, param4:String = "StateCutScene")
      {
         super(param1,param3,param4,param2);
      }
      
      protected function get §&#H§() : §=$7§
      {
         return this.§&#T§;
      }
      
      override protected function init() : void
      {
         super.init();
         §;!w§ = new §%"X§(this);
         §;!w§.init(§false§.§4#;§.Views.View_CutScene[0]);
      }
      
      protected function §8!Z§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§;t§)
            {
               §;!w§.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§;t§.removeEventListener(Event.COMPLETE,this.§@"x§);
               this.§;t§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
               this.§;t§.addEventListener(Event.COMPLETE,this.§@"x§);
               this.§;t§.addEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
               this.§3#c§(param1);
            }
            else
            {
               this.startCutScene();
            }
            return true;
         }
         return false;
      }
      
      protected function §3#c§(param1:String) : void
      {
         this.§;t§.§[#Q§("cutscene_" + param1);
      }
      
      protected function §@"x§(param1:Event) : void
      {
         if(this.§;t§)
         {
            this.§;t§.removeEventListener(Event.COMPLETE,this.§@"x§);
            this.§;t§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
            this.startCutScene();
         }
      }
      
      protected function startCutScene() : void
      {
         §;!w§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.getCutSceneName();
         var _loc2_:§#"^§ = §#"^§.§+!,§;
         if(this.§;t§)
         {
            _loc2_ = this.§;t§.textureManager;
         }
         this.§&#T§ = §4#=§.§[M§(_loc1_,_loc2_);
         if(this.§&#T§)
         {
            AngryBirdsBase.singleton.dataModel.userProgress.§-!8§(_loc1_);
            §]$?§.§2#§.setVisible(true);
            §]$?§.§2#§.§9!S§(false);
            this.§&#T§.update(0);
            §]$?§.§2#§.§7!i§.addChild(this.§&#T§.sprite);
         }
      }
      
      protected function onCutSceneNotAvailable(param1:Event) : void
      {
         if(this.§;t§)
         {
            this.§;t§.removeEventListener(Event.COMPLETE,this.§@"x§);
            this.§;t§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
         }
         this.end();
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §]$?§.§2#§.clearLevel();
         §]$?§.§2#§.setVisible(false);
         §]$?§.§2#§.addEventListeners();
         if(!this.§;t§)
         {
            this.§;t§ = §]$?§.§2#§.§>!@§;
         }
         if(Starling.§4$#§)
         {
            Starling.§4$#§.color = 0;
         }
         this.§2b§ = 0;
         this.§>w§ = 0;
         §;!w§.getItemByName("Button_Skip").setVisibility(false);
         §;!w§.getItemByName("Button_Skip").mClip.alpha = this.§2b§;
         this.stopThemeMusic();
         this.§"Y§ = false;
         §;!w§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc2_:String = this.getCutSceneName();
         if(!this.§8!Z§(_loc2_))
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
         if(this.§&#T§)
         {
            §]$?§.§2#§.§7!i§.removeChild(this.§&#T§.sprite);
            this.§&#T§.dispose();
            this.§&#T§ = null;
         }
         if(this.§;t§)
         {
            this.§;t§.removeEventListener(Event.COMPLETE,this.§@"x§);
            this.§;t§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
         }
         §]$?§.§2#§.§9!S§(true);
         super.deActivate();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§`$4§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§"Y§ = true;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsBase.singleton.§`<§();
         }
      }
      
      override protected function update(param1:Number) : void
      {
         if(this.§>w§ > §&$?§)
         {
            §;!w§.getItemByName("Button_Skip").setVisibility(true);
            this.§2b§ += param1 / 1000;
            §;!w§.getItemByName("Button_Skip").mClip.alpha = this.§2b§;
            if(this.§2b§ > 1)
            {
               this.§2b§ = 1;
            }
         }
         else
         {
            this.§>w§ += param1;
         }
         if(this.§"Y§ || this.§&#T§ && !this.§&#T§.update(param1))
         {
            this.end();
         }
      }
      
      protected function end() : void
      {
         if(this.§;t§)
         {
            this.§;t§.removeEventListener(Event.COMPLETE,this.§@"x§);
            this.§;t§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
         }
         if(this.§&#T§ && this.§&#T§.cutSceneType == §=$7§.§#d§)
         {
            §#!$§.§!"Q§ = StateCutScene.STATE_NAME;
            §3#§(§#!$§.STATE_NAME);
         }
         else if(this.§&#T§ && this.§&#T§.cutSceneType == §=$7§.§3"C§)
         {
            §3#§(§[#t§.STATE_NAME);
         }
         else
         {
            this.§^!h§();
         }
      }
      
      protected function §^!h§() : void
      {
         var _loc1_:String = mLevelManager.currentLevel;
         if(_loc1_)
         {
            §3#§(this.getLevelLoadState());
         }
         else
         {
            §3#§(this.§ #b§);
         }
      }
      
      protected function get § #b§() : String
      {
         return §#!$§.STATE_NAME;
      }
      
      protected function getLevelLoadState() : String
      {
         return §8$C§.STATE_NAME;
      }
   }
}
