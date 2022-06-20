package §[!K§
{
   import §!!t§.§,-§;
   import §+"6§.§5!H§;
   import §+I§.§9!%§;
   import §1"2§.§,!]§;
   import §4!r§.§0!`§;
   import §4!r§.§@,§;
   import §?"<§.§5!!§;
   import §?"<§.§<"!§;
   import §[!z§.LevelManager;
   import §]!F§.§"!j§;
   import §]!F§.§1"-§;
   import flash.events.Event;
   
   public class StateCutScene extends §,-§
   {
      
      public static const STATE_NAME:String = "StateCutScene";
      
      private static const §,O§:Number = 500;
       
      
      private var §>!I§:§@,§;
      
      private var §?2§:Boolean;
      
      private var §?m§:Number = 0;
      
      private var §'!N§:Number = 0;
      
      private var §7[§:§5!!§;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2"-§ = new §"!j§(this);
         §2"-§.init(§1"-§.§ !>§.Views.View_CutScene[0]);
      }
      
      protected function §,!q§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§7[§)
            {
               §2"-§.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§7[§.removeEventListener(Event.COMPLETE,this.§["'§);
               this.§7[§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
               this.§7[§.addEventListener(Event.COMPLETE,this.§["'§);
               this.§7[§.addEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
               this.§7[§.§@"0§("cutscene_" + param1);
            }
            else
            {
               this.§7"1§();
            }
            return true;
         }
         return false;
      }
      
      private function §["'§(param1:Event) : void
      {
         if(this.§7[§)
         {
            this.§7[§.removeEventListener(Event.COMPLETE,this.§["'§);
            this.§7[§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
            this.§7"1§();
         }
      }
      
      private function §7"1§() : void
      {
         §2"-§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§#n§();
         var _loc2_:§<"!§ = §<"!§.§8c§;
         if(this.§7[§)
         {
            _loc2_ = this.§7[§.textureManager;
         }
         this.§>!I§ = §0!`§.§%y§(_loc1_,_loc2_);
         if(this.§>!I§)
         {
            AngryBirdsFP11.sUserProgress.§ ""§(_loc1_);
            §9!%§.§!!M§.§5"!§(true);
            §9!%§.§!!M§.§ if§(false);
            this.§>!I§.update(0);
            §9!%§.§!!M§.§?"A§.addChild(this.§>!I§.sprite);
         }
      }
      
      protected function onCutSceneNotAvailable(param1:Event) : void
      {
         if(this.§7[§)
         {
            this.§7[§.removeEventListener(Event.COMPLETE,this.§["'§);
            this.§7[§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
         }
         this.end();
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§7[§)
         {
            this.§7[§ = §9!%§.§!!M§.§'!,§;
         }
         if(§5!H§.§%n§)
         {
            §5!H§.§%n§.color = 0;
         }
         this.§?m§ = 0;
         this.§'!N§ = 0;
         §2"-§.getItemByName("Button_Skip").setVisibility(false);
         §2"-§.getItemByName("Button_Skip").mClip.alpha = this.§?m§;
         AngryBirdsFP11.§'§();
         this.§?2§ = false;
         §2"-§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§#n§();
         if(!this.§,!q§(_loc1_))
         {
            this.end();
         }
      }
      
      protected function §#n§() : String
      {
         var _loc1_:String = LevelManager.§>!t§;
         var _loc2_:String = LevelManager.§8!§().§>z§(_loc1_ + "-OUTRO");
         if(!_loc2_)
         {
            _loc1_ = LevelManager.§[!<§;
            _loc2_ = LevelManager.§8!§().§>z§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§>!I§)
         {
            §9!%§.§!!M§.§?"A§.removeChild(this.§>!I§.sprite);
            this.§>!I§.dispose();
            this.§>!I§ = null;
         }
         if(this.§7[§)
         {
            this.§7[§.removeEventListener(Event.COMPLETE,this.§["'§);
            this.§7[§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
         }
         §9!%§.§!!M§.§ if§(true);
         LevelManager.§>!t§ = null;
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!]§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§?2§ = true;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§`"B§.§>!-§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(this.§'!N§ > §,O§)
         {
            §2"-§.getItemByName("Button_Skip").setVisibility(true);
            this.§?m§ += param1 / 1000;
            §2"-§.getItemByName("Button_Skip").mClip.alpha = this.§?m§;
            if(this.§?m§ > 1)
            {
               this.§?m§ = 1;
            }
         }
         else
         {
            this.§'!N§ += param1;
         }
         if(this.§?2§)
         {
            this.end();
            return §,-§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,-§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §,-§.STATE_STATUS_COMPLETED;
         }
         if(this.§>!I§ && !this.§>!I§.update(param1))
         {
            this.end();
         }
         return §,-§.STATE_STATUS_RUNNING;
      }
      
      private function end() : void
      {
         var _loc1_:String = null;
         if(this.§>!I§ && this.§>!I§.§<,§ == §@,§.§->§)
         {
            §=B§.§;!@§ = StateCutScene.STATE_NAME;
            mNextState = §=B§.STATE_NAME;
         }
         else if(this.§>!I§ && this.§>!I§.§<,§ == §@,§.§^§)
         {
            mNextState = §2&§.STATE_NAME;
         }
         else
         {
            _loc1_ = LevelManager.§[!<§;
            if(_loc1_)
            {
               mNextState = this.getLevelLoadState();
            }
            else
            {
               mNextState = §=B§.STATE_NAME;
            }
         }
      }
      
      protected function getLevelLoadState() : String
      {
         return §"c§.STATE_NAME;
      }
   }
}
