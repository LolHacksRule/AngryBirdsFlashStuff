package §"!@§
{
   import § %§.§0"8§;
   import § %§.§1Q§;
   import §3#T§.§'§;
   import §5P§.§""C§;
   import §;#D§.§3#U§;
   import §;$-§.§"!b§;
   import §;$-§.§^#;§;
   import §;$3§.§8=§;
   import §?"e§.Starling;
   import §`"8§.§34§;
   import §`"8§.§8$3§;
   import flash.events.Event;
   
   public class StateCutScene extends §@"S§
   {
      
      public static const STATE_NAME:String = "StateCutScene";
      
      private static const § !<§:Number = 500;
       
      
      protected var §'n§:§^#;§;
      
      protected var §;">§:Boolean;
      
      private var §^#&§:Number = 0;
      
      private var §8"Z§:Number = 0;
      
      protected var §@!!§:§8$3§;
      
      public function StateCutScene(param1:§8=§, param2:§""C§, param3:Boolean = true, param4:String = "StateCutScene")
      {
         super(param1,param3,param4,param2);
      }
      
      protected function get §!s§() : §^#;§
      {
         return this.§'n§;
      }
      
      override protected function init() : void
      {
         super.init();
         §`!H§ = new §0"8§(this);
         §`!H§.init(§1Q§.§5T§.Views.View_CutScene[0]);
      }
      
      protected function §+!J§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§@!!§)
            {
               §`!H§.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§@!!§.removeEventListener(Event.COMPLETE,this.§8![§);
               this.§@!!§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
               this.§@!!§.addEventListener(Event.COMPLETE,this.§8![§);
               this.§@!!§.addEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
               this.§="V§(param1);
            }
            else
            {
               this.startCutScene();
            }
            return true;
         }
         return false;
      }
      
      protected function §="V§(param1:String) : void
      {
         this.§@!!§.§,!j§("cutscene_" + param1);
      }
      
      protected function §8![§(param1:Event) : void
      {
         if(this.§@!!§)
         {
            this.§@!!§.removeEventListener(Event.COMPLETE,this.§8![§);
            this.§@!!§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
            this.startCutScene();
         }
      }
      
      protected function startCutScene() : void
      {
         §`!H§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.getCutSceneName();
         var _loc2_:§34§ = §34§.§6!§;
         if(this.§@!!§)
         {
            _loc2_ = this.§@!!§.textureManager;
         }
         this.§'n§ = §"!b§.§-"1§(_loc1_,_loc2_);
         if(this.§'n§)
         {
            AngryBirdsBase.singleton.dataModel.userProgress.§-"^§(_loc1_);
            §3#U§.§#$4§.§;"?§(true);
            §3#U§.§#$4§.§0"2§(false);
            this.§'n§.update(0);
            §3#U§.§#$4§.§+T§.addChild(this.§'n§.sprite);
         }
      }
      
      protected function onCutSceneNotAvailable(param1:Event) : void
      {
         if(this.§@!!§)
         {
            this.§@!!§.removeEventListener(Event.COMPLETE,this.§8![§);
            this.§@!!§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
         }
         this.end();
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §3#U§.§#$4§.clearLevel();
         §3#U§.§#$4§.§;"?§(false);
         §3#U§.§#$4§.addEventListeners();
         if(!this.§@!!§)
         {
            this.§@!!§ = §3#U§.§#$4§.§]!d§;
         }
         if(Starling.§@#K§)
         {
            Starling.§@#K§.color = 0;
         }
         this.§^#&§ = 0;
         this.§8"Z§ = 0;
         §`!H§.getItemByName("Button_Skip").setVisibility(false);
         §`!H§.getItemByName("Button_Skip").mClip.alpha = this.§^#&§;
         this.stopThemeMusic();
         this.§;">§ = false;
         §`!H§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc2_:String = this.getCutSceneName();
         if(!this.§+!J§(_loc2_))
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
         if(this.§'n§)
         {
            §3#U§.§#$4§.§+T§.removeChild(this.§'n§.sprite);
            this.§'n§.dispose();
            this.§'n§ = null;
         }
         if(this.§@!!§)
         {
            this.§@!!§.removeEventListener(Event.COMPLETE,this.§8![§);
            this.§@!!§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
         }
         §3#U§.§#$4§.§0"2§(true);
         super.deActivate();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'#0§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§;">§ = true;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsBase.singleton.§5#p§();
         }
      }
      
      override protected function update(param1:Number) : void
      {
         if(this.§8"Z§ > § !<§)
         {
            §`!H§.getItemByName("Button_Skip").setVisibility(true);
            this.§^#&§ += param1 / 1000;
            §`!H§.getItemByName("Button_Skip").mClip.alpha = this.§^#&§;
            if(this.§^#&§ > 1)
            {
               this.§^#&§ = 1;
            }
         }
         else
         {
            this.§8"Z§ += param1;
         }
         if(this.§;">§ || this.§'n§ && !this.§'n§.update(param1))
         {
            this.end();
         }
      }
      
      protected function end() : void
      {
         if(this.§@!!§)
         {
            this.§@!!§.removeEventListener(Event.COMPLETE,this.§8![§);
            this.§@!!§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
         }
         if(this.§'n§ && this.§'n§.cutSceneType == §^#;§.§3"U§)
         {
            §1S§.§!!d§ = StateCutScene.STATE_NAME;
            §1"h§(§1S§.STATE_NAME);
         }
         else if(this.§'n§ && this.§'n§.cutSceneType == §^#;§.§0!R§)
         {
            §1"h§(§ !K§.STATE_NAME);
         }
         else
         {
            this.§<L§();
         }
      }
      
      protected function §<L§() : void
      {
         var _loc1_:String = mLevelManager.currentLevel;
         if(_loc1_)
         {
            §1"h§(this.getLevelLoadState());
         }
         else
         {
            §1"h§(this.§7#9§);
         }
      }
      
      protected function get §7#9§() : String
      {
         return §1S§.STATE_NAME;
      }
      
      protected function getLevelLoadState() : String
      {
         return §8"o§.STATE_NAME;
      }
   }
}
