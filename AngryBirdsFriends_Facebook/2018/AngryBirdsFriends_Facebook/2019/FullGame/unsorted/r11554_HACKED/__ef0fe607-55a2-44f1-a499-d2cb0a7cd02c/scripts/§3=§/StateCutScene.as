package §3=§
{
   import §"$=§.§'![§;
   import §%#v§.§0"j§;
   import §%#v§.§?!F§;
   import §3"G§.§16§;
   import §4!n§.§'!,§;
   import §6Q§.§%!D§;
   import §6Q§.§,!,§;
   import §=!2§.§%"T§;
   import §]"P§.Starling;
   import §^"[§.§&"-§;
   import §^"[§.§=#;§;
   import flash.events.Event;
   
   public class StateCutScene extends §-"4§
   {
      
      public static const STATE_NAME:String = "StateCutScene";
      
      private static const §<$"§:Number = 500;
       
      
      protected var §'!5§:§,!,§;
      
      protected var §+!§:Boolean;
      
      private var §]"M§:Number = 0;
      
      private var §5!&§:Number = 0;
      
      protected var §1#>§:§&"-§;
      
      public function StateCutScene(param1:§'![§, param2:§16§, param3:Boolean = true, param4:String = "StateCutScene")
      {
         super(param1,param3,param4,param2);
      }
      
      protected function get §;#E§() : §,!,§
      {
         return this.§'!5§;
      }
      
      override protected function init() : void
      {
         super.init();
         §<"`§ = new §?!F§(this);
         §<"`§.init(§0"j§.§-i§.Views.View_CutScene[0]);
      }
      
      protected function §"#+§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§1#>§)
            {
               §<"`§.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§1#>§.removeEventListener(Event.COMPLETE,this.§5#R§);
               this.§1#>§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
               this.§1#>§.addEventListener(Event.COMPLETE,this.§5#R§);
               this.§1#>§.addEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
               this.§0!U§(param1);
            }
            else
            {
               this.startCutScene();
            }
            return true;
         }
         return false;
      }
      
      protected function §0!U§(param1:String) : void
      {
         this.§1#>§.§,%§("cutscene_" + param1);
      }
      
      protected function §5#R§(param1:Event) : void
      {
         if(this.§1#>§)
         {
            this.§1#>§.removeEventListener(Event.COMPLETE,this.§5#R§);
            this.§1#>§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
            this.startCutScene();
         }
      }
      
      protected function startCutScene() : void
      {
         §<"`§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.getCutSceneName();
         var _loc2_:§=#;§ = §=#;§.§?q§;
         if(this.§1#>§)
         {
            _loc2_ = this.§1#>§.textureManager;
         }
         this.§'!5§ = §%!D§.§9§(_loc1_,_loc2_);
         if(this.§'!5§)
         {
            AngryBirdsBase.singleton.dataModel.userProgress.§4G§(_loc1_);
            §%"T§.§;`§.setVisible(true);
            §%"T§.§;`§.§^!m§(false);
            this.§'!5§.update(0);
            §%"T§.§;`§.§4!4§.addChild(this.§'!5§.sprite);
         }
      }
      
      protected function onCutSceneNotAvailable(param1:Event) : void
      {
         if(this.§1#>§)
         {
            this.§1#>§.removeEventListener(Event.COMPLETE,this.§5#R§);
            this.§1#>§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
         }
         this.end();
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §%"T§.§;`§.clearLevel();
         §%"T§.§;`§.setVisible(false);
         §%"T§.§;`§.addEventListeners();
         if(!this.§1#>§)
         {
            this.§1#>§ = §%"T§.§;`§.§-=§;
         }
         if(Starling.§3!I§)
         {
            Starling.§3!I§.color = 0;
         }
         this.§]"M§ = 0;
         this.§5!&§ = 0;
         §<"`§.getItemByName("Button_Skip").setVisibility(false);
         §<"`§.getItemByName("Button_Skip").mClip.alpha = this.§]"M§;
         this.stopThemeMusic();
         this.§+!§ = false;
         §<"`§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc2_:String = this.getCutSceneName();
         if(!this.§"#+§(_loc2_))
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
         if(this.§'!5§)
         {
            §%"T§.§;`§.§4!4§.removeChild(this.§'!5§.sprite);
            this.§'!5§.dispose();
            this.§'!5§ = null;
         }
         if(this.§1#>§)
         {
            this.§1#>§.removeEventListener(Event.COMPLETE,this.§5#R§);
            this.§1#>§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
         }
         §%"T§.§;`§.§^!m§(true);
         super.deActivate();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!,§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§+!§ = true;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsBase.singleton.§3'§();
         }
      }
      
      override protected function update(param1:Number) : void
      {
         if(this.§5!&§ > §<$"§)
         {
            §<"`§.getItemByName("Button_Skip").setVisibility(true);
            this.§]"M§ += param1 / 1000;
            §<"`§.getItemByName("Button_Skip").mClip.alpha = this.§]"M§;
            if(this.§]"M§ > 1)
            {
               this.§]"M§ = 1;
            }
         }
         else
         {
            this.§5!&§ += param1;
         }
         if(this.§+!§ || this.§'!5§ && !this.§'!5§.update(param1))
         {
            this.end();
         }
      }
      
      protected function end() : void
      {
         if(this.§1#>§)
         {
            this.§1#>§.removeEventListener(Event.COMPLETE,this.§5#R§);
            this.§1#>§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
         }
         if(this.§'!5§ && this.§'!5§.cutSceneType == §,!,§.§9M§)
         {
            §8$8§.§[">§ = StateCutScene.STATE_NAME;
            §%D§(§8$8§.STATE_NAME);
         }
         else if(this.§'!5§ && this.§'!5§.cutSceneType == §,!,§.§^!"§)
         {
            §%D§(§1U§.STATE_NAME);
         }
         else
         {
            this.§,#k§();
         }
      }
      
      protected function §,#k§() : void
      {
         var _loc1_:String = mLevelManager.currentLevel;
         if(_loc1_)
         {
            §%D§(this.getLevelLoadState());
         }
         else
         {
            §%D§(this.§99§);
         }
      }
      
      protected function get §99§() : String
      {
         return §8$8§.STATE_NAME;
      }
      
      protected function getLevelLoadState() : String
      {
         return §#$@§.STATE_NAME;
      }
   }
}
