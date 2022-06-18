package §^1§
{
   import § #_§.§?!>§;
   import §&§.Starling;
   import §+!n§.§+!p§;
   import §+_§.§=$C§;
   import §+_§.§^"Q§;
   import §9#M§.§%"=§;
   import §9#M§.§8§;
   import §<8§.§8!g§;
   import §?o§.§4#?§;
   import §[#A§.§&n§;
   import §[#A§.§+#<§;
   import flash.events.Event;
   
   public class StateCutScene extends §';§
   {
      
      public static const STATE_NAME:String = "StateCutScene";
      
      private static const §;N§:Number = 500;
       
      
      protected var §&y§:§=$C§;
      
      protected var §'!f§:Boolean;
      
      private var §!0§:Number = 0;
      
      private var §'C§:Number = 0;
      
      protected var §4!g§:§8#0§;
      
      public function StateCutScene(param1:§4#?§, param2:§?!>§, param3:Boolean = true, param4:String = "StateCutScene")
      {
         super(param1,param3,param4,param2);
      }
      
      protected function get §'I§() : §=$C§
      {
         return this.§&y§;
      }
      
      override protected function init() : void
      {
         super.init();
         §@!D§ = new §+#<§(this);
         §@!D§.init(§&n§.§7a§.Views.View_CutScene[0]);
      }
      
      protected function §@§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§4!g§)
            {
               §@!D§.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§4!g§.removeEventListener(Event.COMPLETE,this.§2#l§);
               this.§4!g§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
               this.§4!g§.addEventListener(Event.COMPLETE,this.§2#l§);
               this.§4!g§.addEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
               this.§^k§(param1);
            }
            else
            {
               this.startCutScene();
            }
            return true;
         }
         return false;
      }
      
      protected function §^k§(param1:String) : void
      {
         this.§4!g§.§2#z§("cutscene_" + param1);
      }
      
      protected function §2#l§(param1:Event) : void
      {
         if(this.§4!g§)
         {
            this.§4!g§.removeEventListener(Event.COMPLETE,this.§2#l§);
            this.§4!g§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
            this.startCutScene();
         }
      }
      
      protected function startCutScene() : void
      {
         §@!D§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.getCutSceneName();
         var _loc2_:§%"=§ = §%"=§.§3"1§;
         if(this.§4!g§)
         {
            _loc2_ = this.§4!g§.textureManager;
         }
         this.§&y§ = §^"Q§.§@u§(_loc1_,_loc2_);
         if(this.§&y§)
         {
            AngryBirdsBase.singleton.dataModel.userProgress.§&!-§(_loc1_);
            §+!p§.§`?§.setVisible(true);
            §+!p§.§`?§.§'#F§(false);
            this.§&y§.update(0);
            §+!p§.§`?§.§2"v§.addChild(this.§&y§.sprite);
         }
      }
      
      protected function onCutSceneNotAvailable(param1:Event) : void
      {
         if(this.§4!g§)
         {
            this.§4!g§.removeEventListener(Event.COMPLETE,this.§2#l§);
            this.§4!g§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
         }
         this.end();
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §+!p§.§`?§.clearLevel();
         §+!p§.§`?§.setVisible(false);
         §+!p§.§`?§.addEventListeners();
         if(!this.§4!g§)
         {
            this.§4!g§ = §+!p§.§`?§.§9!v§;
         }
         if(Starling.§%!q§)
         {
            Starling.§%!q§.color = 0;
         }
         this.§!0§ = 0;
         this.§'C§ = 0;
         §@!D§.getItemByName("Button_Skip").setVisibility(false);
         §@!D§.getItemByName("Button_Skip").mClip.alpha = this.§!0§;
         this.stopThemeMusic();
         this.§'!f§ = false;
         §@!D§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc2_:String = this.getCutSceneName();
         if(!this.§@§(_loc2_))
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
         if(this.§&y§)
         {
            §+!p§.§`?§.§2"v§.removeChild(this.§&y§.sprite);
            this.§&y§.dispose();
            this.§&y§ = null;
         }
         if(this.§4!g§)
         {
            this.§4!g§.removeEventListener(Event.COMPLETE,this.§2#l§);
            this.§4!g§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
         }
         §+!p§.§`?§.§'#F§(true);
         super.deActivate();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§8!g§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§'!f§ = true;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsBase.singleton.§=!Y§();
         }
      }
      
      override protected function update(param1:Number) : void
      {
         if(this.§'C§ > §;N§)
         {
            §@!D§.getItemByName("Button_Skip").setVisibility(true);
            this.§!0§ += param1 / 1000;
            §@!D§.getItemByName("Button_Skip").mClip.alpha = this.§!0§;
            if(this.§!0§ > 1)
            {
               this.§!0§ = 1;
            }
         }
         else
         {
            this.§'C§ += param1;
         }
         if(this.§'!f§ || this.§&y§ && !this.§&y§.update(param1))
         {
            this.end();
         }
      }
      
      protected function end() : void
      {
         if(this.§4!g§)
         {
            this.§4!g§.removeEventListener(Event.COMPLETE,this.§2#l§);
            this.§4!g§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
         }
         if(this.§&y§ && this.§&y§.cutSceneType == §=$C§.§6"<§)
         {
            §;O§.§+#J§ = StateCutScene.STATE_NAME;
            §%!?§(§;O§.STATE_NAME);
         }
         else if(this.§&y§ && this.§&y§.cutSceneType == §=$C§.§,"b§)
         {
            §%!?§(§+!Y§.STATE_NAME);
         }
         else
         {
            this.§'%§();
         }
      }
      
      protected function §'%§() : void
      {
         var _loc1_:String = mLevelManager.currentLevel;
         if(_loc1_)
         {
            §%!?§(this.getLevelLoadState());
         }
         else
         {
            §%!?§(this.§=x§);
         }
      }
      
      protected function get §=x§() : String
      {
         return §;O§.STATE_NAME;
      }
      
      protected function getLevelLoadState() : String
      {
         return §2t§.STATE_NAME;
      }
   }
}
