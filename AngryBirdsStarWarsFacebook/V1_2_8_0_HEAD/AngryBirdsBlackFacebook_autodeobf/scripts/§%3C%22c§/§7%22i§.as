package §<"c§
{
   import § "4§.§8!R§;
   import §+D§.§ #^§;
   import §+D§.§^"m§;
   import §7!$§.§&$§;
   import §7!$§.§]#[§;
   import §;"Y§.§&#X§;
   import §;"Y§.§1"z§;
   import §="2§.§4!5§;
   import §="2§.§?!r§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import com.angrybirds.§,!q§;
   import flash.events.Event;
   
   public class §7"i§ extends §]"_§
   {
      
      public static const §^!7§:String = "LevelEndFailState";
       
      
      protected var §^W§:§^"m§;
      
      protected var §^"^§:§^"m§;
      
      protected var §,>§:§^"m§;
      
      protected var §]6§:§^"m§;
      
      protected var §9!#§:§ #^§;
      
      protected var §5"t§:§ #^§;
      
      protected var §">§:§8!R§;
      
      protected var §?"n§:Vector.<String>;
      
      protected var § !@§:§4!5§;
      
      public function §7"i§(param1:§+"2§, param2:§5"H§, param3:Boolean = false, param4:String = "LevelEndFailState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§">§ = §4#;§.singleton.dataModel.userProgress;
         §@;§ = new §]#[§(this);
         §@;§.init(this.getViewXML());
         if(§@;§.getItemByName("Button_ExtraBird"))
         {
            §@;§.getItemByName("Button_ExtraBird").mClip.extraBird.stop();
         }
         this.§?"n§ = new <String>["level_fail_laugh_2","level_fail_laugh_5","level_fail_laugh_7","level_fail_laugh_9"];
         this.§#"y§();
      }
      
      protected function getViewXML() : XML
      {
         return §&$§.§@8§.Views.View_LevelEndFail[0];
      }
      
      protected function §#"y§() : void
      {
         this.§^W§ = §^"m§(§@;§.getItemByName("Button_Menu"));
         this.§^"^§ = §^"m§(§@;§.getItemByName("Button_Replay"));
         this.§,>§ = §^"m§(§@;§.getItemByName("Button_NextLevel"));
         this.§]6§ = §^"m§(§@;§.getItemByName("Button_CutScene"));
         this.§9!#§ = § #^§(§@;§.getItemByName("Container_NextButton"));
         this.§5"t§ = § #^§(§@;§.getItemByName("Container_ReplayButton"));
      }
      
      protected function §^;§() : void
      {
         var _loc1_:String = §+!b§.getNextLevelId();
         var _loc2_:* = _loc1_ != null;
         if(_loc1_ && !this.§">§.isLevelOpen(_loc1_) || !this.§">§.isLevelPassed(§+!b§.currentLevel))
         {
            _loc2_ = false;
         }
         if(§+!b§.isCutSceneNext())
         {
            this.§9!#§.setVisibility(_loc2_);
            this.§,>§.setVisibility(false);
            this.§]6§.setVisibility(true);
         }
         else
         {
            this.§9!#§.setVisibility(_loc2_);
            this.§,>§.setVisibility(true);
            this.§]6§.setVisibility(false);
         }
      }
      
      protected function §3#3§() : void
      {
         this.§]6§.setVisibility(false);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§^;§();
         this.§8m§();
      }
      
      override public function deActivate() : void
      {
         this.§7b§(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§3#3§();
         this.§0"#§();
         super.deActivate();
      }
      
      private function §8m§() : void
      {
         var _loc1_:String = this.§?"n§[int(this.§=@§(0,this.§?"n§.length - 1))];
         if(this.§ !@§)
         {
            this.§ !@§.removeEventListener(Event.SOUND_COMPLETE,this.§80§);
         }
         this.§ !@§ = §?!r§.§"#_§(_loc1_);
         if(this.§ !@§)
         {
            this.§ !@§.addEventListener(Event.SOUND_COMPLETE,this.§80§);
         }
      }
      
      private function §80§(param1:Event) : void
      {
         if(this.§ !@§)
         {
            this.§ !@§.removeEventListener(Event.SOUND_COMPLETE,this.§80§);
            this.§8m§();
         }
      }
      
      private function §=@§(param1:Number, param2:Number) : Number
      {
         return Math.floor(Math.random() * (param2 - param1 + 1)) + param1;
      }
      
      override protected function update(param1:Number) : void
      {
         if(nextState.length > 0)
         {
            §,!q§.§9!,§.clearLevel();
         }
      }
      
      protected function §""=§() : void
      {
         if(§4#;§.singleton.popupManager.§""n§())
         {
            this.§0"#§();
         }
         else if(!this.§ !@§)
         {
            this.§8m§();
         }
      }
      
      protected function §7b§(param1:String) : void
      {
         this.§^W§.setComponentVisualState(param1);
         this.§^"^§.setComponentVisualState(param1);
         this.§^"^§.setComponentVisualState(param1);
         this.§]6§.setComponentVisualState(param1);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §'$§();
               § g§(this.getCutSceneState());
               break;
            case "REPLAY":
               § g§(this.getLevelLoadState());
               break;
            case "MENU":
               § g§(this.getLevelSelectionState());
         }
      }
      
      protected function §0"#§() : void
      {
         if(this.§ !@§)
         {
            this.§ !@§.removeEventListener(Event.SOUND_COMPLETE,this.§80§);
            this.§ !@§.§!"^§();
         }
         this.§ !@§ = null;
         §?!r§.§0"#§();
      }
      
      protected function getLevelLoadState() : String
      {
         return §<2§.§^!7§;
      }
      
      protected function getLevelSelectionState() : String
      {
         return §+#?§.§^!7§;
      }
      
      protected function getCutSceneState() : String
      {
         return StateCutScene.§^!7§;
      }
   }
}
