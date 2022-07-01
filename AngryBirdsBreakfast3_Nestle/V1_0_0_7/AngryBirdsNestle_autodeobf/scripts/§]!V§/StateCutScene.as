package §]!V§
{
   import §!P§.§5!1§;
   import §'!u§.§&S§;
   import §0!?§.§%i§;
   import §0!?§.§8!d§;
   import §;L§.§"!X§;
   import §;L§.§;u§;
   import §<!0§.§'!%§;
   import §^6§.§;!j§;
   import §^6§.§=!A§;
   import §`V§.§;6§;
   import com.angrybirds.§#Z§;
   import flash.events.Event;
   
   public class StateCutScene extends §>!9§
   {
      
      public static const §+a§:String = "StateCutScene";
      
      private static const § ""§:Number = 500;
       
      
      private var §=!M§:§8!d§;
      
      private var §;j§:Boolean;
      
      private var §-g§:Number = 0;
      
      private var §2z§:Number = 0;
      
      protected var §+!"§:§;u§;
      
      public function StateCutScene(param1:§5!1§, param2:§&S§, param3:Boolean = true, param4:String = "StateCutScene")
      {
         super(param1,param3,param4,param2);
      }
      
      protected function get §6u§() : §8!d§
      {
         return this.§=!M§;
      }
      
      override protected function init() : void
      {
         super.init();
         §5+§ = new §;!j§(this);
         §5+§.init(§=!A§.§`O§.Views.View_CutScene[0]);
      }
      
      protected function §3t§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§+!"§)
            {
               §5+§.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§+!"§.removeEventListener(Event.COMPLETE,this.§+!P§);
               this.§+!"§.removeEventListener(Event.CANCEL,this.§>i§);
               this.§+!"§.addEventListener(Event.COMPLETE,this.§+!P§);
               this.§+!"§.addEventListener(Event.CANCEL,this.§>i§);
               this.loadCutSceneContent(param1);
            }
            else
            {
               this.startCutScene();
            }
            return true;
         }
         return false;
      }
      
      protected function loadCutSceneContent(param1:String) : void
      {
         this.§+!"§.loadContent("cutscene_" + param1);
      }
      
      protected function §+!P§(param1:Event) : void
      {
         if(this.§+!"§)
         {
            this.§+!"§.removeEventListener(Event.COMPLETE,this.§+!P§);
            this.§+!"§.removeEventListener(Event.CANCEL,this.§>i§);
            this.startCutScene();
         }
      }
      
      protected function startCutScene() : void
      {
         §5+§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.getCutSceneName();
         var _loc2_:§"!X§ = §"!X§.§>!P§;
         if(this.§+!"§)
         {
            _loc2_ = this.§+!"§.§7!m§;
         }
         this.§=!M§ = §%i§.§4"#§(_loc1_,_loc2_);
         if(this.§=!M§)
         {
            §,!X§.§>!G§.§>!I§.userProgress.§3"0§(_loc1_);
            §#Z§.§'0§.§#o§(true);
            §#Z§.§'0§.§7"'§(false);
            this.§=!M§.update(0);
            §#Z§.§'0§.§6!v§.addChild(this.§=!M§.sprite);
         }
      }
      
      protected function §>i§(param1:Event) : void
      {
         if(this.§+!"§)
         {
            this.§+!"§.removeEventListener(Event.COMPLETE,this.§+!P§);
            this.§+!"§.removeEventListener(Event.CANCEL,this.§>i§);
         }
         this.end();
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §#Z§.§'0§.clearLevel();
         §#Z§.§'0§.§#o§(false);
         if(!this.§+!"§)
         {
            this.§+!"§ = §#Z§.§'0§.§8H§;
         }
         if(§;6§.§@X§)
         {
            §;6§.§@X§.color = 0;
         }
         this.§-g§ = 0;
         this.§2z§ = 0;
         §5+§.getItemByName("Button_Skip").setVisibility(false);
         §5+§.getItemByName("Button_Skip").mClip.alpha = this.§-g§;
         §,!X§.§>!G§.§<!y§();
         this.§;j§ = false;
         §5+§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc2_:String = this.getCutSceneName();
         if(!this.§3t§(_loc2_))
         {
            this.end();
         }
      }
      
      protected function getCutSceneName() : String
      {
         var _loc1_:String = §97§.previousLevel;
         var _loc2_:String = §97§.getCurrentEpisodeModel().getCutScene(_loc1_ + "-OUTRO");
         if(!_loc2_)
         {
            _loc1_ = §97§.currentLevel;
            _loc2_ = §97§.getCurrentEpisodeModel().getCutScene(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§=!M§)
         {
            §#Z§.§'0§.§6!v§.removeChild(this.§=!M§.sprite);
            this.§=!M§.dispose();
            this.§=!M§ = null;
         }
         if(this.§+!"§)
         {
            this.§+!"§.removeEventListener(Event.COMPLETE,this.§+!P§);
            this.§+!"§.removeEventListener(Event.CANCEL,this.§>i§);
         }
         §#Z§.§'0§.§7"'§(true);
         super.deActivate();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!%§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§;j§ = true;
               break;
            case "FULLSCREEN_BUTTON":
               §,!X§.§>!G§.§4I§();
         }
      }
      
      override protected function update(param1:Number) : void
      {
         if(this.§2z§ > § ""§)
         {
            §5+§.getItemByName("Button_Skip").setVisibility(true);
            this.§-g§ += param1 / 1000;
            §5+§.getItemByName("Button_Skip").mClip.alpha = this.§-g§;
            if(this.§-g§ > 1)
            {
               this.§-g§ = 1;
            }
         }
         else
         {
            this.§2z§ += param1;
         }
         if(this.§;j§ || this.§=!M§ && !this.§=!M§.update(param1))
         {
            this.end();
         }
      }
      
      private function end() : void
      {
         var _loc1_:String = null;
         if(this.§+!"§)
         {
            this.§+!"§.removeEventListener(Event.COMPLETE,this.§+!P§);
            this.§+!"§.removeEventListener(Event.CANCEL,this.§>i§);
         }
         if(this.§=!M§ && this.§=!M§.§]!i§ == §8!d§.§ !t§)
         {
            §&g§.§'!k§ = StateCutScene.§+a§;
            §8!`§(§&g§.§+a§);
         }
         else if(this.§=!M§ && this.§=!M§.§]!i§ == §8!d§.§&"4§)
         {
            §8!`§(§5"'§.§+a§);
         }
         else
         {
            _loc1_ = §97§.currentLevel;
            if(_loc1_)
            {
               §8!`§(this.§2!1§());
            }
            else
            {
               §8!`§(this.§5!d§);
            }
         }
      }
      
      protected function get §5!d§() : String
      {
         return §&g§.§+a§;
      }
      
      protected function §2!1§() : String
      {
         return §5!h§.§+a§;
      }
   }
}
