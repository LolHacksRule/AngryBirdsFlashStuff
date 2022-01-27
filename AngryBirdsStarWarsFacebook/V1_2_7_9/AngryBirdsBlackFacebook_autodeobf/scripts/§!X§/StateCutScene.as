package §!X§
{
   import §'+§.§="B§;
   import §,#+§.§7!m§;
   import §3"$§.§"7§;
   import §3"$§.§&"0§;
   import §3"8§.§,;§;
   import §3"8§.§@0§;
   import §4##§.§7!B§;
   import §9!!§.§=!S§;
   import §^!`§.§%n§;
   import §^!`§.§6"!§;
   import com.angrybirds.§;!e§;
   import flash.events.Event;
   
   public class StateCutScene extends §@!?§
   {
      
      public static const §'#2§:String = "StateCutScene";
      
      private static const §>"W§:Number = 500;
       
      
      private var §5!m§:§,;§;
      
      private var § "T§:Boolean;
      
      private var §8"5§:Number = 0;
      
      private var §8f§:Number = 0;
      
      protected var §%"-§:§"7§;
      
      public function StateCutScene(param1:§7!m§, param2:§="B§, param3:Boolean = true, param4:String = "StateCutScene")
      {
         super(param1,param3,param4,param2);
      }
      
      protected function get §"!^§() : §,;§
      {
         return this.§5!m§;
      }
      
      override protected function init() : void
      {
         super.init();
         §>I§ = new §6"!§(this);
         §>I§.init(§%n§.§ set§.Views.View_CutScene[0]);
      }
      
      protected function §0"[§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§%"-§)
            {
               §>I§.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§%"-§.removeEventListener(Event.COMPLETE,this.§4!$§);
               this.§%"-§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
               this.§%"-§.addEventListener(Event.COMPLETE,this.§4!$§);
               this.§%"-§.addEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
               this.§[!g§(param1);
            }
            else
            {
               this.startCutScene();
            }
            return true;
         }
         return false;
      }
      
      protected function §[!g§(param1:String) : void
      {
         this.§%"-§.§+!6§("cutscene_" + param1);
      }
      
      protected function §4!$§(param1:Event) : void
      {
         if(this.§%"-§)
         {
            this.§%"-§.removeEventListener(Event.COMPLETE,this.§4!$§);
            this.§%"-§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
            this.startCutScene();
         }
      }
      
      protected function startCutScene() : void
      {
         §>I§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.getCutSceneName();
         var _loc2_:§&"0§ = §&"0§.§-G§;
         if(this.§%"-§)
         {
            _loc2_ = this.§%"-§.textureManager;
         }
         this.§5!m§ = §@0§.§ §(_loc1_,_loc2_);
         if(this.§5!m§)
         {
            §;"@§.singleton.dataModel.userProgress.§5!E§(_loc1_);
            §;!e§.§<x§.§5!y§(true);
            §;!e§.§<x§.§+!L§(false);
            this.§5!m§.update(0);
            §;!e§.§<x§.§]"m§.addChild(this.§5!m§.sprite);
         }
      }
      
      protected function onCutSceneNotAvailable(param1:Event) : void
      {
         if(this.§%"-§)
         {
            this.§%"-§.removeEventListener(Event.COMPLETE,this.§4!$§);
            this.§%"-§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
         }
         this.end();
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §;!e§.§<x§.clearLevel();
         §;!e§.§<x§.§5!y§(false);
         if(!this.§%"-§)
         {
            this.§%"-§ = §;!e§.§<x§.§=K§;
         }
         if(§=!S§.§8y§)
         {
            §=!S§.§8y§.color = 0;
         }
         this.§8"5§ = 0;
         this.§8f§ = 0;
         §>I§.getItemByName("Button_Skip").setVisibility(false);
         §>I§.getItemByName("Button_Skip").mClip.alpha = this.§8"5§;
         §;"@§.singleton.stopThemeMusic();
         this.§ "T§ = false;
         §>I§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc2_:String = this.getCutSceneName();
         if(!this.§0"[§(_loc2_))
         {
            this.end();
         }
      }
      
      protected function getCutSceneName() : String
      {
         var _loc1_:String = § !p§.previousLevel;
         var _loc2_:String = § !p§.getCurrentEpisodeModel().getCutScene(_loc1_ + "-OUTRO");
         if(!_loc2_)
         {
            _loc1_ = § !p§.currentLevel;
            _loc2_ = § !p§.getCurrentEpisodeModel().getCutScene(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§5!m§)
         {
            §;!e§.§<x§.§]"m§.removeChild(this.§5!m§.sprite);
            this.§5!m§.dispose();
            this.§5!m§ = null;
         }
         if(this.§%"-§)
         {
            this.§%"-§.removeEventListener(Event.COMPLETE,this.§4!$§);
            this.§%"-§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
         }
         §;!e§.§<x§.§+!L§(true);
         super.deActivate();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§7!B§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§ "T§ = true;
               break;
            case "FULLSCREEN_BUTTON":
               §;"@§.singleton.§35§();
         }
      }
      
      override protected function update(param1:Number) : void
      {
         if(this.§8f§ > §>"W§)
         {
            §>I§.getItemByName("Button_Skip").setVisibility(true);
            this.§8"5§ += param1 / 1000;
            §>I§.getItemByName("Button_Skip").mClip.alpha = this.§8"5§;
            if(this.§8"5§ > 1)
            {
               this.§8"5§ = 1;
            }
         }
         else
         {
            this.§8f§ += param1;
         }
         if(this.§ "T§ || this.§5!m§ && !this.§5!m§.update(param1))
         {
            this.end();
         }
      }
      
      private function end() : void
      {
         var _loc1_:String = null;
         if(this.§%"-§)
         {
            this.§%"-§.removeEventListener(Event.COMPLETE,this.§4!$§);
            this.§%"-§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
         }
         if(this.§5!m§ && this.§5!m§.§0"d§ == §,;§.§]"L§)
         {
            §,"p§.§%"§ = StateCutScene.§'#2§;
            §0"B§(§,"p§.§'#2§);
         }
         else if(this.§5!m§ && this.§5!m§.§0"d§ == §,;§.§>!3§)
         {
            §0"B§(§7"@§.§'#2§);
         }
         else
         {
            _loc1_ = § !p§.currentLevel;
            if(_loc1_)
            {
               §0"B§(this.getLevelLoadState());
            }
            else
            {
               §0"B§(this.stateOnDefaultEnd);
            }
         }
      }
      
      protected function get stateOnDefaultEnd() : String
      {
         return §,"p§.§'#2§;
      }
      
      protected function getLevelLoadState() : String
      {
         return §>!I§.§'#2§;
      }
   }
}
