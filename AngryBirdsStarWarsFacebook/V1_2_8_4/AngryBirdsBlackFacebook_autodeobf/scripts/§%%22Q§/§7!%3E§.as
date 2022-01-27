package §%"Q§
{
   import §&!j§.§5#+§;
   import §8!h§.§%"z§;
   import §8!h§.§-V§;
   import §=Z§.§;g§;
   import §=Z§.§@!8§;
   import §[!H§.§4Z§;
   import §[!H§.§^x§;
   import §`"1§.§0"M§;
   import §`"1§.§=Q§;
   import §`"n§.§^!-§;
   import com.angrybirds.§<!J§;
   import flash.events.Event;
   import §null §.§5#§;
   
   public class §7!>§ extends §`!6§
   {
      
      public static const §-!U§:String = "LevelEndFailState";
       
      
      protected var §%N§:§;g§;
      
      protected var §"f§:§;g§;
      
      protected var § ]§:§;g§;
      
      protected var §1"K§:§;g§;
      
      protected var §<!k§:§@!8§;
      
      protected var §!'§:§@!8§;
      
      protected var §3"§:§^!-§;
      
      protected var §3a§:Vector.<String>;
      
      protected var § "1§:§0"M§;
      
      public function §7!>§(param1:§5#§, param2:§5#+§, param3:Boolean = false, param4:String = "LevelEndFailState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§3"§ = §4"#§.singleton.dataModel.userProgress;
         §^!b§ = new §4Z§(this);
         §^!b§.init(this.getViewXML());
         if(§^!b§.getItemByName("Button_ExtraBird"))
         {
            §^!b§.getItemByName("Button_ExtraBird").mClip.extraBird.stop();
         }
         this.§3a§ = new <String>["level_fail_laugh_2","level_fail_laugh_5","level_fail_laugh_7","level_fail_laugh_9"];
         this.§<B§();
      }
      
      protected function getViewXML() : XML
      {
         return §^x§.§ '§.Views.View_LevelEndFail[0];
      }
      
      protected function §<B§() : void
      {
         this.§%N§ = §;g§(§^!b§.getItemByName("Button_Menu"));
         this.§"f§ = §;g§(§^!b§.getItemByName("Button_Replay"));
         this.§ ]§ = §;g§(§^!b§.getItemByName("Button_NextLevel"));
         this.§1"K§ = §;g§(§^!b§.getItemByName("Button_CutScene"));
         this.§<!k§ = §@!8§(§^!b§.getItemByName("Container_NextButton"));
         this.§!'§ = §@!8§(§^!b§.getItemByName("Container_ReplayButton"));
      }
      
      protected function §+N§() : void
      {
         var _loc1_:String = §'""§.getNextLevelId();
         var _loc2_:* = _loc1_ != null;
         if(_loc1_ && !this.§3"§.isLevelOpen(_loc1_) || !this.§3"§.isLevelPassed(§'""§.currentLevel))
         {
            _loc2_ = false;
         }
         if(§'""§.isCutSceneNext())
         {
            this.§<!k§.setVisibility(_loc2_);
            this.§ ]§.setVisibility(false);
            this.§1"K§.setVisibility(true);
         }
         else
         {
            this.§<!k§.setVisibility(_loc2_);
            this.§ ]§.setVisibility(true);
            this.§1"K§.setVisibility(false);
         }
      }
      
      protected function §#'§() : void
      {
         this.§1"K§.setVisibility(false);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§+N§();
         this.§^7§();
      }
      
      override public function deActivate() : void
      {
         this.§[!,§(§%"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§#'§();
         this.§!#,§();
         super.deActivate();
      }
      
      private function §^7§() : void
      {
         var _loc1_:String = this.§3a§[int(this.§""I§(0,this.§3a§.length - 1))];
         if(this.§ "1§)
         {
            this.§ "1§.removeEventListener(Event.SOUND_COMPLETE,this.§`"6§);
         }
         this.§ "1§ = §=Q§.§`!A§(_loc1_);
         if(this.§ "1§)
         {
            this.§ "1§.addEventListener(Event.SOUND_COMPLETE,this.§`"6§);
         }
      }
      
      private function §`"6§(param1:Event) : void
      {
         if(this.§ "1§)
         {
            this.§ "1§.removeEventListener(Event.SOUND_COMPLETE,this.§`"6§);
            this.§^7§();
         }
      }
      
      private function §""I§(param1:Number, param2:Number) : Number
      {
         return Math.floor(Math.random() * (param2 - param1 + 1)) + param1;
      }
      
      override protected function update(param1:Number) : void
      {
         if(nextState.length > 0)
         {
            §<!J§.§=!%§.clearLevel();
         }
      }
      
      protected function §<!N§() : void
      {
         if(§4"#§.singleton.popupManager.§#"E§())
         {
            this.§!#,§();
         }
         else if(!this.§ "1§)
         {
            this.§^7§();
         }
      }
      
      protected function §[!,§(param1:String) : void
      {
         this.§%N§.setComponentVisualState(param1);
         this.§"f§.setComponentVisualState(param1);
         this.§"f§.setComponentVisualState(param1);
         this.§1"K§.setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§-V§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §`"y§();
               §`0§(this.getCutSceneState());
               break;
            case "REPLAY":
               §`0§(this.getLevelLoadState());
               break;
            case "MENU":
               §`0§(this.getLevelSelectionState());
         }
      }
      
      protected function §!#,§() : void
      {
         if(this.§ "1§)
         {
            this.§ "1§.removeEventListener(Event.SOUND_COMPLETE,this.§`"6§);
            this.§ "1§.§ "R§();
         }
         this.§ "1§ = null;
         §=Q§.§!#,§();
      }
      
      protected function getLevelLoadState() : String
      {
         return §7"9§.§-!U§;
      }
      
      protected function getLevelSelectionState() : String
      {
         return §!K§.§-!U§;
      }
      
      protected function getCutSceneState() : String
      {
         return StateCutScene.§-!U§;
      }
   }
}
