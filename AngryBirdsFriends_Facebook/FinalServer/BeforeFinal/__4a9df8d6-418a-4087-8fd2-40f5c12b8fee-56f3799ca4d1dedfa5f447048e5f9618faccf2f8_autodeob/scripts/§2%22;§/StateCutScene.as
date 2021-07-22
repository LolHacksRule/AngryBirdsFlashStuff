package §2";§
{
   import § !j§.§4#c§;
   import §%!-§.§5!z§;
   import §%!-§.§?l§;
   import §'!j§.Starling;
   import §'G§.§2#n§;
   import §'G§.§3$§;
   import §,!Q§.§6"n§;
   import §,"v§.§;"n§;
   import §`"0§.§%#B§;
   import §`"0§.§'! §;
   import §`#@§.§7n§;
   import flash.events.Event;
   
   public class StateCutScene extends §7!z§
   {
      
      public static const STATE_NAME:String = "StateCutScene";
      
      private static const §7r§:Number = 500;
       
      
      protected var §%#d§:§'! §;
      
      protected var §"]§:Boolean;
      
      private var §`"v§:Number = 0;
      
      private var §2#!§:Number = 0;
      
      protected var §<#`§:§2#n§;
      
      public function StateCutScene(param1:§;"n§, param2:§4#c§, param3:Boolean = true, param4:String = "StateCutScene")
      {
         super(param1,param3,param4,param2);
      }
      
      protected function get §9!4§() : §'! §
      {
         return this.§%#d§;
      }
      
      override protected function init() : void
      {
         super.init();
         §[$5§ = new §5!z§(this);
         §[$5§.init(§?l§.§3m§.Views.View_CutScene[0]);
      }
      
      protected function §-"f§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§<#`§)
            {
               §[$5§.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§<#`§.removeEventListener(Event.COMPLETE,this.§9"R§);
               this.§<#`§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
               this.§<#`§.addEventListener(Event.COMPLETE,this.§9"R§);
               this.§<#`§.addEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
               this.§7#]§(param1);
            }
            else
            {
               this.startCutScene();
            }
            return true;
         }
         return false;
      }
      
      protected function §7#]§(param1:String) : void
      {
         this.§<#`§.§""%§("cutscene_" + param1);
      }
      
      protected function §9"R§(param1:Event) : void
      {
         if(this.§<#`§)
         {
            this.§<#`§.removeEventListener(Event.COMPLETE,this.§9"R§);
            this.§<#`§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
            this.startCutScene();
         }
      }
      
      protected function startCutScene() : void
      {
         §[$5§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.getCutSceneName();
         var _loc2_:§3$§ = §3$§.§`"H§;
         if(this.§<#`§)
         {
            _loc2_ = this.§<#`§.textureManager;
         }
         this.§%#d§ = §%#B§.§#h§(_loc1_,_loc2_);
         if(this.§%#d§)
         {
            AngryBirdsBase.singleton.dataModel.userProgress.§#!F§(_loc1_);
            §7n§.§6#K§.setVisible(true);
            §7n§.§6#K§.§1"`§(false);
            this.§%#d§.update(0);
            §7n§.§6#K§.§@!g§.addChild(this.§%#d§.sprite);
         }
      }
      
      protected function onCutSceneNotAvailable(param1:Event) : void
      {
         if(this.§<#`§)
         {
            this.§<#`§.removeEventListener(Event.COMPLETE,this.§9"R§);
            this.§<#`§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
         }
         this.end();
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §7n§.§6#K§.clearLevel();
         §7n§.§6#K§.setVisible(false);
         §7n§.§6#K§.addEventListeners();
         if(!this.§<#`§)
         {
            this.§<#`§ = §7n§.§6#K§.§&"Q§;
         }
         if(Starling.§>x§)
         {
            Starling.§>x§.color = 0;
         }
         this.§`"v§ = 0;
         this.§2#!§ = 0;
         §[$5§.getItemByName("Button_Skip").setVisibility(false);
         §[$5§.getItemByName("Button_Skip").mClip.alpha = this.§`"v§;
         this.stopThemeMusic();
         this.§"]§ = false;
         §[$5§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc2_:String = this.getCutSceneName();
         if(!this.§-"f§(_loc2_))
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
         if(this.§%#d§)
         {
            §7n§.§6#K§.§@!g§.removeChild(this.§%#d§.sprite);
            this.§%#d§.dispose();
            this.§%#d§ = null;
         }
         if(this.§<#`§)
         {
            this.§<#`§.removeEventListener(Event.COMPLETE,this.§9"R§);
            this.§<#`§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
         }
         §7n§.§6#K§.§1"`§(true);
         super.deActivate();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6"n§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§"]§ = true;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsBase.singleton.§1a§();
         }
      }
      
      override protected function update(param1:Number) : void
      {
         if(this.§2#!§ > §7r§)
         {
            §[$5§.getItemByName("Button_Skip").setVisibility(true);
            this.§`"v§ += param1 / 1000;
            §[$5§.getItemByName("Button_Skip").mClip.alpha = this.§`"v§;
            if(this.§`"v§ > 1)
            {
               this.§`"v§ = 1;
            }
         }
         else
         {
            this.§2#!§ += param1;
         }
         if(this.§"]§ || this.§%#d§ && !this.§%#d§.update(param1))
         {
            this.end();
         }
      }
      
      protected function end() : void
      {
         if(this.§<#`§)
         {
            this.§<#`§.removeEventListener(Event.COMPLETE,this.§9"R§);
            this.§<#`§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
         }
         if(this.§%#d§ && this.§%#d§.cutSceneType == §'! §.§<"O§)
         {
            §9#7§.§>#y§ = StateCutScene.STATE_NAME;
            §1!L§(§9#7§.STATE_NAME);
         }
         else if(this.§%#d§ && this.§%#d§.cutSceneType == §'! §.§>#<§)
         {
            §1!L§(§'#J§.STATE_NAME);
         }
         else
         {
            this.§!"z§();
         }
      }
      
      protected function §!"z§() : void
      {
         var _loc1_:String = mLevelManager.currentLevel;
         if(_loc1_)
         {
            §1!L§(this.getLevelLoadState());
         }
         else
         {
            §1!L§(this.§1=§);
         }
      }
      
      protected function get §1=§() : String
      {
         return §9#7§.STATE_NAME;
      }
      
      protected function getLevelLoadState() : String
      {
         return §9!R§.STATE_NAME;
      }
   }
}
