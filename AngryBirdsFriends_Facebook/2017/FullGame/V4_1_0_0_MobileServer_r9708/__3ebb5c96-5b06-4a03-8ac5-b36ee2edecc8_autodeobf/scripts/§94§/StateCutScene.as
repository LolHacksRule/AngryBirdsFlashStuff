package §94§
{
   import §&$!§.§+#!§;
   import §0=§.§+$=§;
   import §0=§.§>t§;
   import §6"r§.§!#A§;
   import §7!j§.§'0§;
   import §7!j§.§,"d§;
   import §8#D§.§#E§;
   import §8#D§.§=>§;
   import §9+§.Starling;
   import §<"1§.§'"S§;
   import §@#§.§^#Q§;
   import flash.events.Event;
   
   public class StateCutScene extends §`"z§
   {
      
      public static const STATE_NAME:String = "StateCutScene";
      
      private static const §""0§:Number = 500;
       
      
      protected var §`"3§:§+$=§;
      
      protected var §&!W§:Boolean;
      
      private var §`n§:Number = 0;
      
      private var §"$2§:Number = 0;
      
      protected var §#!<§:§,"d§;
      
      public function StateCutScene(param1:§^#Q§, param2:§+#!§, param3:Boolean = true, param4:String = "StateCutScene")
      {
         super(param1,param3,param4,param2);
      }
      
      protected function get §-#g§() : §+$=§
      {
         return this.§`"3§;
      }
      
      override protected function init() : void
      {
         super.init();
         §?Q§ = new §#E§(this);
         §?Q§.init(§=>§.§%" §.Views.View_CutScene[0]);
      }
      
      protected function §0!H§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§#!<§)
            {
               §?Q§.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§#!<§.removeEventListener(Event.COMPLETE,this.§@"x§);
               this.§#!<§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
               this.§#!<§.addEventListener(Event.COMPLETE,this.§@"x§);
               this.§#!<§.addEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
               this.§[!f§(param1);
            }
            else
            {
               this.startCutScene();
            }
            return true;
         }
         return false;
      }
      
      protected function §[!f§(param1:String) : void
      {
         this.§#!<§.§;"M§("cutscene_" + param1);
      }
      
      protected function §@"x§(param1:Event) : void
      {
         if(this.§#!<§)
         {
            this.§#!<§.removeEventListener(Event.COMPLETE,this.§@"x§);
            this.§#!<§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
            this.startCutScene();
         }
      }
      
      protected function startCutScene() : void
      {
         §?Q§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.getCutSceneName();
         var _loc2_:§'0§ = §'0§.§ "D§;
         if(this.§#!<§)
         {
            _loc2_ = this.§#!<§.textureManager;
         }
         this.§`"3§ = §>t§.§^#<§(_loc1_,_loc2_);
         if(this.§`"3§)
         {
            AngryBirdsBase.singleton.dataModel.userProgress.§0A§(_loc1_);
            §!#A§.§#F§.§8"d§(true);
            §!#A§.§#F§.§1!t§(false);
            this.§`"3§.update(0);
            §!#A§.§#F§.§="N§.addChild(this.§`"3§.sprite);
         }
      }
      
      protected function onCutSceneNotAvailable(param1:Event) : void
      {
         if(this.§#!<§)
         {
            this.§#!<§.removeEventListener(Event.COMPLETE,this.§@"x§);
            this.§#!<§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
         }
         this.end();
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §!#A§.§#F§.clearLevel();
         §!#A§.§#F§.§8"d§(false);
         §!#A§.§#F§.addEventListeners();
         if(!this.§#!<§)
         {
            this.§#!<§ = §!#A§.§#F§.§"]§;
         }
         if(Starling.§?$#§)
         {
            Starling.§?$#§.color = 0;
         }
         this.§`n§ = 0;
         this.§"$2§ = 0;
         §?Q§.getItemByName("Button_Skip").setVisibility(false);
         §?Q§.getItemByName("Button_Skip").mClip.alpha = this.§`n§;
         this.stopThemeMusic();
         this.§&!W§ = false;
         §?Q§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc2_:String = this.getCutSceneName();
         if(!this.§0!H§(_loc2_))
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
         if(this.§`"3§)
         {
            §!#A§.§#F§.§="N§.removeChild(this.§`"3§.sprite);
            this.§`"3§.dispose();
            this.§`"3§ = null;
         }
         if(this.§#!<§)
         {
            this.§#!<§.removeEventListener(Event.COMPLETE,this.§@"x§);
            this.§#!<§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
         }
         §!#A§.§#F§.§1!t§(true);
         super.deActivate();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'"S§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§&!W§ = true;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsBase.singleton.§6"0§();
         }
      }
      
      override protected function update(param1:Number) : void
      {
         if(this.§"$2§ > §""0§)
         {
            §?Q§.getItemByName("Button_Skip").setVisibility(true);
            this.§`n§ += param1 / 1000;
            §?Q§.getItemByName("Button_Skip").mClip.alpha = this.§`n§;
            if(this.§`n§ > 1)
            {
               this.§`n§ = 1;
            }
         }
         else
         {
            this.§"$2§ += param1;
         }
         if(this.§&!W§ || this.§`"3§ && !this.§`"3§.update(param1))
         {
            this.end();
         }
      }
      
      protected function end() : void
      {
         if(this.§#!<§)
         {
            this.§#!<§.removeEventListener(Event.COMPLETE,this.§@"x§);
            this.§#!<§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
         }
         if(this.§`"3§ && this.§`"3§.cutSceneType == §+$=§.§!$#§)
         {
            §7!c§.§<r§ = StateCutScene.STATE_NAME;
            §5"p§(§7!c§.STATE_NAME);
         }
         else if(this.§`"3§ && this.§`"3§.cutSceneType == §+$=§.§?<§)
         {
            §5"p§(§@"X§.STATE_NAME);
         }
         else
         {
            this.§%!,§();
         }
      }
      
      protected function §%!,§() : void
      {
         var _loc1_:String = mLevelManager.currentLevel;
         if(_loc1_)
         {
            §5"p§(this.getLevelLoadState());
         }
         else
         {
            §5"p§(this.§;"v§);
         }
      }
      
      protected function get §;"v§() : String
      {
         return §7!c§.STATE_NAME;
      }
      
      protected function getLevelLoadState() : String
      {
         return §9#P§.STATE_NAME;
      }
   }
}
