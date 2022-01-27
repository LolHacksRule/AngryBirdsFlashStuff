package §%"Q§
{
   import § "-§.§6!R§;
   import §!!k§.§0!B§;
   import §!!k§.§@'§;
   import §&!j§.§5#+§;
   import §+"I§.§#!v§;
   import §+"I§.§90§;
   import §8!h§.§-V§;
   import §[!H§.§4Z§;
   import §[!H§.§^x§;
   import com.angrybirds.§<!J§;
   import flash.events.Event;
   import §null §.§5#§;
   
   public class StateCutScene extends §`!6§
   {
      
      public static const §-!U§:String = "StateCutScene";
      
      private static const §0"&§:Number = 500;
       
      
      private var §3U§:§#!v§;
      
      private var §!"h§:Boolean;
      
      private var §["5§:Number = 0;
      
      private var §79§:Number = 0;
      
      protected var §13§:§@'§;
      
      public function StateCutScene(param1:§5#§, param2:§5#+§, param3:Boolean = true, param4:String = "StateCutScene")
      {
         super(param1,param3,param4,param2);
      }
      
      protected function get §1Z§() : §#!v§
      {
         return this.§3U§;
      }
      
      override protected function init() : void
      {
         super.init();
         §^!b§ = new §4Z§(this);
         §^!b§.init(§^x§.§ '§.Views.View_CutScene[0]);
      }
      
      protected function §^"[§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§13§)
            {
               §^!b§.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§13§.removeEventListener(Event.COMPLETE,this.§@Q§);
               this.§13§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
               this.§13§.addEventListener(Event.COMPLETE,this.§@Q§);
               this.§13§.addEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
               this.§+"]§(param1);
            }
            else
            {
               this.startCutScene();
            }
            return true;
         }
         return false;
      }
      
      protected function §+"]§(param1:String) : void
      {
         this.§13§.§6`§("cutscene_" + param1);
      }
      
      protected function §@Q§(param1:Event) : void
      {
         if(this.§13§)
         {
            this.§13§.removeEventListener(Event.COMPLETE,this.§@Q§);
            this.§13§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
            this.startCutScene();
         }
      }
      
      protected function startCutScene() : void
      {
         §^!b§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.getCutSceneName();
         var _loc2_:§0!B§ = §0!B§.§!6§;
         if(this.§13§)
         {
            _loc2_ = this.§13§.textureManager;
         }
         this.§3U§ = §90§.§0!R§(_loc1_,_loc2_);
         if(this.§3U§)
         {
            §4"#§.singleton.dataModel.userProgress.§4"a§(_loc1_);
            §<!J§.§=!%§.§`"V§(true);
            §<!J§.§=!%§.§#"6§(false);
            this.§3U§.update(0);
            §<!J§.§=!%§.§+n§.addChild(this.§3U§.sprite);
         }
      }
      
      protected function onCutSceneNotAvailable(param1:Event) : void
      {
         if(this.§13§)
         {
            this.§13§.removeEventListener(Event.COMPLETE,this.§@Q§);
            this.§13§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
         }
         this.end();
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §<!J§.§=!%§.clearLevel();
         §<!J§.§=!%§.§`"V§(false);
         if(!this.§13§)
         {
            this.§13§ = §<!J§.§=!%§.§@!;§;
         }
         if(§6!R§.§+!d§)
         {
            §6!R§.§+!d§.color = 0;
         }
         this.§["5§ = 0;
         this.§79§ = 0;
         §^!b§.getItemByName("Button_Skip").setVisibility(false);
         §^!b§.getItemByName("Button_Skip").mClip.alpha = this.§["5§;
         §4"#§.singleton.stopThemeMusic();
         this.§!"h§ = false;
         §^!b§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc2_:String = this.getCutSceneName();
         if(!this.§^"[§(_loc2_))
         {
            this.end();
         }
      }
      
      protected function getCutSceneName() : String
      {
         var _loc1_:String = §'""§.previousLevel;
         var _loc2_:String = §'""§.getCurrentEpisodeModel().getCutScene(_loc1_ + "-OUTRO");
         if(!_loc2_)
         {
            _loc1_ = §'""§.currentLevel;
            _loc2_ = §'""§.getCurrentEpisodeModel().getCutScene(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§3U§)
         {
            §<!J§.§=!%§.§+n§.removeChild(this.§3U§.sprite);
            this.§3U§.dispose();
            this.§3U§ = null;
         }
         if(this.§13§)
         {
            this.§13§.removeEventListener(Event.COMPLETE,this.§@Q§);
            this.§13§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
         }
         §<!J§.§=!%§.§#"6§(true);
         super.deActivate();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§-V§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§!"h§ = true;
               break;
            case "FULLSCREEN_BUTTON":
               §4"#§.singleton.§^L§();
         }
      }
      
      override protected function update(param1:Number) : void
      {
         if(this.§79§ > §0"&§)
         {
            §^!b§.getItemByName("Button_Skip").setVisibility(true);
            this.§["5§ += param1 / 1000;
            §^!b§.getItemByName("Button_Skip").mClip.alpha = this.§["5§;
            if(this.§["5§ > 1)
            {
               this.§["5§ = 1;
            }
         }
         else
         {
            this.§79§ += param1;
         }
         if(this.§!"h§ || this.§3U§ && !this.§3U§.update(param1))
         {
            this.end();
         }
      }
      
      private function end() : void
      {
         var _loc1_:String = null;
         if(this.§13§)
         {
            this.§13§.removeEventListener(Event.COMPLETE,this.§@Q§);
            this.§13§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
         }
         if(this.§3U§ && this.§3U§.§do § == §#!v§.§=z§)
         {
            §!K§.§;z§ = StateCutScene.§-!U§;
            §`0§(§!K§.§-!U§);
         }
         else if(this.§3U§ && this.§3U§.§do § == §#!v§.§2"X§)
         {
            §`0§(§>"+§.§-!U§);
         }
         else
         {
            _loc1_ = §'""§.currentLevel;
            if(_loc1_)
            {
               §`0§(this.getLevelLoadState());
            }
            else
            {
               §`0§(this.stateOnDefaultEnd);
            }
         }
      }
      
      protected function get stateOnDefaultEnd() : String
      {
         return §!K§.§-!U§;
      }
      
      protected function getLevelLoadState() : String
      {
         return §7"9§.§-!U§;
      }
   }
}
