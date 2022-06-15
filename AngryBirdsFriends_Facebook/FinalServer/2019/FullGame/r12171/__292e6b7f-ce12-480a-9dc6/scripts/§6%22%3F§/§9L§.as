package §6"?§
{
   import § "L§.§"!A§;
   import § "L§.§1"r§;
   import § "L§.§23§;
   import § "L§.§7`§;
   import § $0§.§5R§;
   import §!1§.§&#q§;
   import §#"4§.§3";§;
   import §#g§.§!P§;
   import §+`§.§%"q§;
   import §,#,§.§3#J§;
   import §3"V§.§ b§;
   import §6"p§.§^"t§;
   import §6#h§.§5#&§;
   import §7"&§.§1k§;
   import §7"X§.§2"R§;
   import §7#$§.§3!,§;
   import §7#$§.§]#q§;
   import §8!A§.§^#N§;
   import §;!=§.§ !i§;
   import §;"5§.§6"W§;
   import §;"5§.§@$-§;
   import §?#z§.§]$?§;
   import §?Q§.§@#D§;
   import §?Q§.SyncingPopup;
   import §]§.§#!$§;
   import §]§.§,x§;
   import §^"3§.§ #&§;
   import §^"3§.§`$4§;
   import §^"G§.§2+§;
   import §^"w§.§<#l§;
   import §`§.§%#m§;
   import flash.events.Event;
   import flash.text.TextFieldAutoSize;
   
   public class §9L§ extends §&#q§ implements §1k§
   {
      
      public static const §0#B§:Number = -250;
       
      
      private var §`?§:§<#l§;
      
      private var §9#N§:SyncingPopup;
      
      private var §&#3§:int;
      
      private var §2#^§:String;
      
      private var §%#e§:§`$4§;
      
      protected var §0!k§:§@$-§ = null;
      
      private var §'##§:§"!A§;
      
      public function §9L§(param1:§23§, param2:§]#q§, param3:§3#J§, param4:§%"q§, param5:§<#l§)
      {
         this.§`?§ = param5;
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
      }
      
      override protected function refresh() : void
      {
         var _loc1_:§7`§ = §?!,§.getItemByName("TextField_ChapterName") as §7`§;
         _loc1_.§%!8§.autoSize = TextFieldAutoSize.CENTER;
      }
      
      override public function dispose() : void
      {
         this.disable(false);
      }
      
      override public function disable(param1:Boolean) : void
      {
         this.§&!_§(param1);
         super.disable(param1);
         this.§^h§(§ #&§.COMPONENT_STATE_ACTIVE_DEFAULT);
         var _loc2_:§2+§ = (§]$?§.§;u§ as §@z§).§8!;§;
         if(_loc2_)
         {
            _loc2_.removeEventListener(§2"R§.§ !<§,this.§&!#§);
         }
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         §?!,§.setVisibility(true);
         §?!,§.addEventListener(§%#m§.§-!O§,this.onUIInteraction);
         var _loc2_:§2+§ = (§]$?§.§;u§ as §@z§).§8!;§;
         if(_loc2_)
         {
            _loc2_.addEventListener(§2"R§.§ !<§,this.§&!#§);
         }
         (§]$?§.§;u§ as §@z§).§%"r§(§2+§.§!5§);
         this.refresh();
         this.§"#^§(param1);
      }
      
      protected function getLevelNameToDisplay(param1:String) : String
      {
         return §@z§.§^#6§.§0"<§(param1);
      }
      
      private function §&#y§() : void
      {
         if(this.§0!k§ != null)
         {
            this.§0!k§.stop();
         }
         this.§0!k§ = null;
      }
      
      protected function §"#^§(param1:Boolean) : void
      {
         var _loc5_:§7`§ = null;
         if(mLevelManager.currentLevel != null)
         {
            (_loc5_ = §?!,§.getItemByName("TextField_ChapterName") as §7`§).§%!8§.text = mLevelManager.getCurrentEpisodeModel().writtenName;
            (§?!,§.getItemByName("TextField_LevelName") as §7`§).§%!8§.text = this.getLevelNameToDisplay(mLevelManager.currentLevel);
            (§?!,§.getItemByName("TextField_LevelName") as §7`§).y = _loc5_.height + 15;
         }
         (§?!,§.getItemByName("Container_PauseMenu") as §23§).x = §0#B§;
         this.§6#_§(false);
         var _loc2_:§23§ = §?!,§.getItemByName("Container_PauseMenu") as §23§;
         this.§'##§ = _loc2_.getItemByName("MovieClip_SoundsOff") as §"!A§;
         this.§'##§.mClip.mouseEnabled = false;
         this.§=$!§(!AngryBirdsBase.§;!Q§());
         §]$?§.pause();
         var _loc3_:§ !i§ = (§]$?§.§;r§ as §5#&§).§,!M§.levelObjects;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_.§-B§())
         {
            _loc3_.getObject(_loc4_).update(0,null);
            _loc4_++;
         }
         if(this.§0!k§ != null)
         {
            this.§0!k§.stop();
         }
         this.§`?§.reset();
         this.§`?§.§5$3§(true);
         this.§0!k§ = §6"W§.§+!,§.§8$>§(§6"W§.§+!,§.§9!n§(§?!,§.getItemByName("Container_PauseMenu") as §23§,{"x":0},null,0.25),§6"W§.§+!,§.§9!n§((§?!,§.getItemByName("MovieClip_DarkBG") as §"!A§).mClip,{"alpha":1},{"alpha":0},0.25),§6"W§.§+!,§.§9!n§((§?!,§.getItemByName("News_Item_Holder") as §23§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§0!k§.onComplete = this.§1"k§;
         this.§0!k§.play();
      }
      
      protected function §1"k§() : void
      {
         this.§6#_§(true);
         this.§&#y§();
      }
      
      protected function §=$!§(param1:Boolean) : void
      {
         this.§'##§.mClip.visible = param1;
      }
      
      protected function §6#_§(param1:Boolean) : void
      {
         (§?!,§.getItemByName("Button_Resume") as §1"r§).setEnabled(param1);
         (§?!,§.getItemByName("Button_Replay") as §1"r§).setEnabled(param1);
         (§?!,§.getItemByName("Button_Menu") as §1"r§).setEnabled(param1);
      }
      
      protected function §^h§(param1:String) : void
      {
         (§?!,§.getItemByName("Button_Resume") as §1"r§).setComponentVisualState(param1);
         (§?!,§.getItemByName("Button_Replay") as §1"r§).setComponentVisualState(param1);
         (§?!,§.getItemByName("Button_Menu") as §1"r§).setComponentVisualState(param1);
      }
      
      protected function §&!_§(param1:Boolean) : void
      {
         if(this.§0!k§ != null)
         {
            this.§0!k§.stop();
         }
         this.§0!k§ = §6"W§.§+!,§.§8$>§(§6"W§.§+!,§.§9!n§(§?!,§.getItemByName("Container_PauseMenu") as §23§,{"x":§0#B§},null,0.25),§6"W§.§+!,§.§9!n§((§?!,§.getItemByName("MovieClip_DarkBG") as §"!A§).mClip,{"alpha":0},{"alpha":1},0.25),§6"W§.§+!,§.§9!n§((§?!,§.getItemByName("News_Item_Holder") as §23§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§0!k§.onComplete = this.§,#s§;
         this.§0!k§.play();
         if(this.§`?§)
         {
            this.§`?§.§5$3§(false);
         }
      }
      
      protected function §,#s§() : void
      {
         §?!,§.setVisibility(false);
         §?!,§.removeEventListener(§%#m§.§-!O§,this.onUIInteraction);
         this.§&#y§();
      }
      
      protected function getLevelSelectionState() : String
      {
         var _loc1_:§3!,§ = mLevelManager.getCurrentEpisodeModel();
         if(_loc1_ && _loc1_.name == §,x§.§0Y§)
         {
            return §,x§.STATE_NAME;
         }
         return §#!$§.STATE_NAME;
      }
      
      private function §0Q§(param1:Event) : void
      {
         (§]$?§.§2#§ as §!P§).§]!_§.removeEventListener(Event.COMPLETE,this.§0Q§);
         if(this.§9#N§)
         {
            this.§9#N§.close();
            this.§9#N§ = null;
         }
         this.onUIInteraction(new §%#m§(§%#m§.§-!O§,this.§&#3§,this.§2#^§,this.§%#e§));
      }
      
      protected function onUIInteraction(param1:§%#m§) : void
      {
         var _loc2_:§2+§ = null;
         var _loc3_:* = false;
         if(§ #"§)
         {
            return;
         }
         if(["MENU","RESTART_LEVEL"].indexOf(param1.eventName) != -1 && (§]$?§.§2#§ as §!P§).§]!_§.§9$$§(false))
         {
            this.§&#3§ = param1.eventIndex;
            this.§2#^§ = param1.eventName;
            this.§%#e§ = param1.component;
            (§]$?§.§2#§ as §!P§).§]!_§.addEventListener(Event.COMPLETE,this.§0Q§);
            this.§9#N§ = new SyncingPopup(§@#D§.§,"4§,§5R§.TOP);
            AngryBirdsBase.singleton.popupManager.openPopup(this.§9#N§);
            return;
         }
         if(param1.eventName == "RESTART_LEVEL")
         {
         }
         if(this.§`?§)
         {
            this.§`?§.uiInteractionHandler(param1.eventName);
         }
         switch(param1.eventName)
         {
            case "HELP":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               dispatchEvent(new §^#N§(§^#N§.RESUME_LEVEL));
               §^"t§.log(§2"R§.§>$ §);
               (§]$?§.§;u§ as §@z§).§8!;§.dispatchEvent(new §2"R§(§2"R§.§>$ §));
               break;
            case "RESTART_LEVEL":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               dispatchEvent(new §^#N§(§^#N§.RESTART_LEVEL));
               break;
            case "RESUME_LEVEL":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               dispatchEvent(new §^#N§(§^#N§.RESUME_LEVEL));
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               § b§.§#! §();
               dispatchEvent(new §^#N§(§^#N§.§8#j§,this.getLevelSelectionState()));
               §3";§.§#"'§().§7g§(false,mLevelManager.currentLevel,this.getTournamentId(),mLevelManager.getCurrentEpisodeModel().name,§]$?§.§2#§.slingshot.§^"]§() - §]$?§.§2#§.slingshot.§4#$§(),§]$?§.§2#§.slingshot.§^"]§(),AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(mLevelManager.currentLevel),(§]$?§.§2#§ as §!P§).§-!3§(),§]$?§.§;r§.getScore(),false);
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               break;
            case "TOGGLE_SOUNDS":
               if(!§ b§.§[$+§)
               {
                  § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               }
               _loc2_ = (§]$?§.§;u§ as §@z§).§8!;§;
               if(_loc2_)
               {
                  _loc2_.dispatchEvent(new §2"R§(§2"R§.§ !<§));
               }
               (§]$?§.§;u§ as §@z§).§8!;§.§?#q§();
               break;
            case "TOGGLE_PARTICLES":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               _loc3_ = !§]$?§.§4!q§();
               §]$?§.§-!$§(_loc3_);
               §?!,§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc3_);
               break;
            case "FULLSCREEN_BUTTON":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               AngryBirdsBase.singleton.§`<§();
         }
      }
      
      protected function §&!#§(param1:§2"R§) : void
      {
         this.§=$!§(!this.§'##§.mClip.visible);
      }
      
      public function §6#n§() : String
      {
         return "PauseView";
      }
      
      protected function getTournamentId() : int
      {
         return -1;
      }
   }
}
