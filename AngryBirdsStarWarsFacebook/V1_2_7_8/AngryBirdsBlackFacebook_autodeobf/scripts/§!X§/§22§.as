package §!X§
{
   import §"!P§.§5X§;
   import §""d§.§,m§;
   import §""d§.§2"8§;
   import §'+§.§="B§;
   import §,"v§.§@§;
   import §,"v§.§^!2§;
   import §,#+§.§7!m§;
   import §4##§.§7!B§;
   import §4##§.§7!Y§;
   import §^!`§.§%n§;
   import §^!`§.§6"!§;
   import com.angrybirds.§;!e§;
   import flash.events.Event;
   
   public class §22§ extends §@!?§
   {
      
      public static const §'#2§:String = "LevelEndFailState";
       
      
      protected var §"V§:§2"8§;
      
      protected var §7"0§:§2"8§;
      
      protected var §[#4§:§2"8§;
      
      protected var §[u§:§2"8§;
      
      protected var §#"A§:§,m§;
      
      protected var §;"i§:§,m§;
      
      protected var §+"v§:§5X§;
      
      protected var §7"b§:Vector.<String>;
      
      protected var §+!X§:§^!2§;
      
      public function §22§(param1:§7!m§, param2:§="B§, param3:Boolean = false, param4:String = "LevelEndFailState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§+"v§ = §;"@§.singleton.dataModel.userProgress;
         §>I§ = new §6"!§(this);
         §>I§.init(this.getViewXML());
         if(§>I§.getItemByName("Button_ExtraBird"))
         {
            §>I§.getItemByName("Button_ExtraBird").mClip.extraBird.stop();
         }
         this.§7"b§ = new <String>["level_fail_laugh_2","level_fail_laugh_5","level_fail_laugh_7","level_fail_laugh_9"];
         this.§<"k§();
      }
      
      protected function getViewXML() : XML
      {
         return §%n§.§ set§.Views.View_LevelEndFail[0];
      }
      
      protected function §<"k§() : void
      {
         this.§"V§ = §2"8§(§>I§.getItemByName("Button_Menu"));
         this.§7"0§ = §2"8§(§>I§.getItemByName("Button_Replay"));
         this.§[#4§ = §2"8§(§>I§.getItemByName("Button_NextLevel"));
         this.§[u§ = §2"8§(§>I§.getItemByName("Button_CutScene"));
         this.§#"A§ = §,m§(§>I§.getItemByName("Container_NextButton"));
         this.§;"i§ = §,m§(§>I§.getItemByName("Container_ReplayButton"));
      }
      
      protected function §1!d§() : void
      {
         var _loc1_:String = § !p§.getNextLevelId();
         var _loc2_:* = _loc1_ != null;
         if(_loc1_ && !this.§+"v§.isLevelOpen(_loc1_) || !this.§+"v§.isLevelPassed(§ !p§.currentLevel))
         {
            _loc2_ = false;
         }
         if(§ !p§.isCutSceneNext())
         {
            this.§#"A§.setVisibility(_loc2_);
            this.§[#4§.setVisibility(false);
            this.§[u§.setVisibility(true);
         }
         else
         {
            this.§#"A§.setVisibility(_loc2_);
            this.§[#4§.setVisibility(true);
            this.§[u§.setVisibility(false);
         }
      }
      
      protected function §2"O§() : void
      {
         this.§[u§.setVisibility(false);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§1!d§();
         this.§[#'§();
      }
      
      override public function deActivate() : void
      {
         this.§?"f§(§7!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§2"O§();
         this.§+A§();
         super.deActivate();
      }
      
      private function §[#'§() : void
      {
         var _loc1_:String = this.§7"b§[int(this.§"@§(0,this.§7"b§.length - 1))];
         if(this.§+!X§)
         {
            this.§+!X§.removeEventListener(Event.SOUND_COMPLETE,this.§?!Y§);
         }
         this.§+!X§ = §@§.§=Y§(_loc1_);
         if(this.§+!X§)
         {
            this.§+!X§.addEventListener(Event.SOUND_COMPLETE,this.§?!Y§);
         }
      }
      
      private function §?!Y§(param1:Event) : void
      {
         if(this.§+!X§)
         {
            this.§+!X§.removeEventListener(Event.SOUND_COMPLETE,this.§?!Y§);
            this.§[#'§();
         }
      }
      
      private function §"@§(param1:Number, param2:Number) : Number
      {
         return Math.floor(Math.random() * (param2 - param1 + 1)) + param1;
      }
      
      override protected function update(param1:Number) : void
      {
         if(nextState.length > 0)
         {
            §;!e§.§<x§.clearLevel();
         }
      }
      
      protected function §<!?§() : void
      {
         if(§;"@§.singleton.popupManager.§;"<§())
         {
            this.§+A§();
         }
         else if(!this.§+!X§)
         {
            this.§[#'§();
         }
      }
      
      protected function §?"f§(param1:String) : void
      {
         this.§"V§.setComponentVisualState(param1);
         this.§7"0§.setComponentVisualState(param1);
         this.§7"0§.setComponentVisualState(param1);
         this.§[u§.setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§7!B§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               § !Y§();
               §0"B§(this.getCutSceneState());
               break;
            case "REPLAY":
               §0"B§(this.getLevelLoadState());
               break;
            case "MENU":
               §0"B§(this.getLevelSelectionState());
         }
      }
      
      protected function §+A§() : void
      {
         if(this.§+!X§)
         {
            this.§+!X§.removeEventListener(Event.SOUND_COMPLETE,this.§?!Y§);
            this.§+!X§.§-'§();
         }
         this.§+!X§ = null;
         §@§.§+A§();
      }
      
      protected function getLevelLoadState() : String
      {
         return §>!I§.§'#2§;
      }
      
      protected function getLevelSelectionState() : String
      {
         return §,"p§.§'#2§;
      }
      
      protected function getCutSceneState() : String
      {
         return StateCutScene.§'#2§;
      }
   }
}
