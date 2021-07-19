package §<"c§
{
   import §&#H§.§3#J§;
   import §2"a§.§9#L§;
   import §2"a§.§9E§;
   import §7!$§.§&$§;
   import §7!$§.§]#[§;
   import §7!F§.§1x§;
   import §7!F§.§7§;
   import §;"Y§.§&#X§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import com.angrybirds.§,!q§;
   import flash.events.Event;
   
   public class StateCutScene extends §]"_§
   {
      
      public static const §^!7§:String = "StateCutScene";
      
      private static const §?V§:Number = 500;
       
      
      protected var §^!W§:§9E§;
      
      protected var §7#Y§:Boolean;
      
      private var §!"d§:Number = 0;
      
      private var §5!>§:Number = 0;
      
      protected var §22§:§1x§;
      
      public function StateCutScene(param1:§+"2§, param2:§5"H§, param3:Boolean = true, param4:String = "StateCutScene")
      {
         super(param1,param3,param4,param2);
      }
      
      protected function get §9!'§() : §9E§
      {
         return this.§^!W§;
      }
      
      override protected function init() : void
      {
         super.init();
         §@;§ = new §]#[§(this);
         §@;§.init(§&$§.§@8§.Views.View_CutScene[0]);
      }
      
      protected function §3#[§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§22§)
            {
               §@;§.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§22§.removeEventListener(Event.COMPLETE,this.§2%§);
               this.§22§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
               this.§22§.addEventListener(Event.COMPLETE,this.§2%§);
               this.§22§.addEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
               this.§1L§(param1);
            }
            else
            {
               this.startCutScene();
            }
            return true;
         }
         return false;
      }
      
      protected function §1L§(param1:String) : void
      {
         this.§22§.§'!t§("cutscene_" + param1);
      }
      
      protected function §2%§(param1:Event) : void
      {
         if(this.§22§)
         {
            this.§22§.removeEventListener(Event.COMPLETE,this.§2%§);
            this.§22§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
            this.startCutScene();
         }
      }
      
      protected function startCutScene() : void
      {
         §@;§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.getCutSceneName();
         var _loc2_:§7#5§ = §7#5§.§%!E§;
         if(this.§22§)
         {
            _loc2_ = this.§22§.textureManager;
         }
         this.§^!W§ = §9#L§.§1q§(_loc1_,_loc2_);
         if(this.§^!W§)
         {
            §4#;§.singleton.dataModel.userProgress.§8"W§(_loc1_);
            §,!q§.§9!,§.§]"J§(true);
            §,!q§.§9!,§.§--§(false);
            this.§^!W§.update(0);
            §,!q§.§9!,§.§!h§.addChild(this.§^!W§.sprite);
         }
      }
      
      protected function onCutSceneNotAvailable(param1:Event) : void
      {
         if(this.§22§)
         {
            this.§22§.removeEventListener(Event.COMPLETE,this.§2%§);
            this.§22§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
         }
         this.end();
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §,!q§.§9!,§.clearLevel();
         §,!q§.§9!,§.§]"J§(false);
         if(!this.§22§)
         {
            this.§22§ = §,!q§.§9!,§.§ =§;
         }
         if(§3#J§.§2!C§)
         {
            §3#J§.§2!C§.color = 0;
         }
         this.§!"d§ = 0;
         this.§5!>§ = 0;
         §@;§.getItemByName("Button_Skip").setVisibility(false);
         §@;§.getItemByName("Button_Skip").mClip.alpha = this.§!"d§;
         this.stopThemeMusic();
         this.§7#Y§ = false;
         §@;§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc2_:String = this.getCutSceneName();
         if(!this.§3#[§(_loc2_))
         {
            this.end();
         }
      }
      
      protected function stopThemeMusic() : void
      {
         §4#;§.singleton.stopThemeMusic();
      }
      
      protected function getCutSceneName() : String
      {
         var _loc1_:String = §+!b§.previousLevel;
         var _loc2_:String = §+!b§.getCurrentEpisodeModel().getCutScene(_loc1_ + "-OUTRO");
         if(!_loc2_)
         {
            _loc1_ = §+!b§.currentLevel;
            _loc2_ = §+!b§.getCurrentEpisodeModel().getCutScene(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§^!W§)
         {
            §,!q§.§9!,§.§!h§.removeChild(this.§^!W§.sprite);
            this.§^!W§.dispose();
            this.§^!W§ = null;
         }
         if(this.§22§)
         {
            this.§22§.removeEventListener(Event.COMPLETE,this.§2%§);
            this.§22§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
         }
         §,!q§.§9!,§.§--§(true);
         super.deActivate();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§7#Y§ = true;
               break;
            case "FULLSCREEN_BUTTON":
               §4#;§.singleton.§5"q§();
         }
      }
      
      override protected function update(param1:Number) : void
      {
         if(this.§5!>§ > §?V§)
         {
            §@;§.getItemByName("Button_Skip").setVisibility(true);
            this.§!"d§ += param1 / 1000;
            §@;§.getItemByName("Button_Skip").mClip.alpha = this.§!"d§;
            if(this.§!"d§ > 1)
            {
               this.§!"d§ = 1;
            }
         }
         else
         {
            this.§5!>§ += param1;
         }
         if(this.§7#Y§ || this.§^!W§ && !this.§^!W§.update(param1))
         {
            this.end();
         }
      }
      
      protected function end() : void
      {
         if(this.§22§)
         {
            this.§22§.removeEventListener(Event.COMPLETE,this.§2%§);
            this.§22§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
         }
         if(this.§^!W§ && this.§^!W§.§""Y§ == §9E§.§#'§)
         {
            §+#?§.§'"6§ = StateCutScene.§^!7§;
            § g§(§+#?§.§^!7§);
         }
         else if(this.§^!W§ && this.§^!W§.§""Y§ == §9E§.§2!T§)
         {
            § g§(§`!O§.§^!7§);
         }
         else
         {
            this.§ set§();
         }
      }
      
      protected function § set§() : void
      {
         var _loc1_:String = §+!b§.currentLevel;
         if(_loc1_)
         {
            § g§(this.getLevelLoadState());
         }
         else
         {
            § g§(this.stateOnDefaultEnd);
         }
      }
      
      protected function get stateOnDefaultEnd() : String
      {
         return §+#?§.§^!7§;
      }
      
      protected function getLevelLoadState() : String
      {
         return §<2§.§^!7§;
      }
   }
}
