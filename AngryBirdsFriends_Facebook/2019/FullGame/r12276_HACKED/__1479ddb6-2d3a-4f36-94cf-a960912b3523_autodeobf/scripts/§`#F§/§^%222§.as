package §`#F§
{
   import § !3§.§+$E§;
   import § "v§.§4$4§;
   import § #_§.§?!>§;
   import § h§.§-!S§;
   import § h§.SyncingPopup;
   import § null§.§5"<§;
   import § null§.§@§;
   import §#"3§.§4!h§;
   import §+!n§.§+!p§;
   import §0!>§.§ !b§;
   import §2$;§.§!"e§;
   import §2$;§.§-$5§;
   import §2$;§.§;!b§;
   import §2$;§.§=!Z§;
   import §2E§.§]!P§;
   import §4$A§.§=$5§;
   import §8#^§.§-B§;
   import §9!6§.§## §;
   import §9m§.§0#E§;
   import §<8§.§8!g§;
   import §<8§.§;"k§;
   import §=-§.§@$%§;
   import §=X§.§3§;
   import §>#Y§.§@!p§;
   import §?$#§.§^#j§;
   import §?_§.§9! §;
   import §?o§.§4#?§;
   import §?o§.§79§;
   import §^0§.§%"^§;
   import §^1§.§;O§;
   import §^1§.§`$D§;
   import flash.events.Event;
   import flash.text.TextFieldAutoSize;
   
   public class §^"2§ extends §+$E§ implements §=$5§
   {
      
      public static const §6#[§:Number = -250;
       
      
      private var §%!o§:§0#E§;
      
      private var §!!u§:SyncingPopup;
      
      private var §4#n§:int;
      
      private var §>"@§:String;
      
      private var §2#Y§:§8!g§;
      
      protected var §?"u§:§@#5§ = null;
      
      private var §3"Y§:§=!Z§;
      
      public function §^"2§(param1:§!"e§, param2:§4#?§, param3:§@!p§, param4:§?!>§, param5:§0#E§)
      {
         this.§%!o§ = param5;
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
      }
      
      override protected function refresh() : void
      {
         var _loc1_:§-$5§ = §<!§.getItemByName("TextField_ChapterName") as §-$5§;
         _loc1_.§>$D§.autoSize = TextFieldAutoSize.CENTER;
      }
      
      override public function dispose() : void
      {
         this.disable(false);
      }
      
      override public function disable(param1:Boolean) : void
      {
         this.§1!V§(param1);
         super.disable(param1);
         this.§%"k§(§;"k§.COMPONENT_STATE_ACTIVE_DEFAULT);
         var _loc2_:§9! § = (§+!p§.§;"-§ as §^"a§).§?"c§;
         if(_loc2_)
         {
            _loc2_.removeEventListener(§-B§.§&,§,this.§2C§);
         }
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         §<!§.setVisibility(true);
         §<!§.addEventListener(§3#6§.§[!$§,this.onUIInteraction);
         var _loc2_:§9! § = (§+!p§.§;"-§ as §^"a§).§?"c§;
         if(_loc2_)
         {
            _loc2_.addEventListener(§-B§.§&,§,this.§2C§);
         }
         (§+!p§.§;"-§ as §^"a§).§7"2§(§9! §.§["l§);
         this.refresh();
         this.§@d§(param1);
      }
      
      protected function getLevelNameToDisplay(param1:String) : String
      {
         return §^"a§.§=?§.§&#W§(param1);
      }
      
      private function §=#[§() : void
      {
         if(this.§?"u§ != null)
         {
            this.§?"u§.stop();
         }
         this.§?"u§ = null;
      }
      
      protected function §@d§(param1:Boolean) : void
      {
         var _loc5_:§-$5§ = null;
         if(mLevelManager.currentLevel != null)
         {
            (_loc5_ = §<!§.getItemByName("TextField_ChapterName") as §-$5§).§>$D§.text = mLevelManager.getCurrentEpisodeModel().writtenName;
            (§<!§.getItemByName("TextField_LevelName") as §-$5§).§>$D§.text = this.getLevelNameToDisplay(mLevelManager.currentLevel);
            (§<!§.getItemByName("TextField_LevelName") as §-$5§).y = _loc5_.height + 15;
         }
         (§<!§.getItemByName("Container_PauseMenu") as §!"e§).x = §6#[§;
         this.§?!s§(false);
         var _loc2_:§!"e§ = §<!§.getItemByName("Container_PauseMenu") as §!"e§;
         this.§3"Y§ = _loc2_.getItemByName("MovieClip_SoundsOff") as §=!Z§;
         this.§3"Y§.mClip.mouseEnabled = false;
         this.§9"6§(!AngryBirdsBase.§]!K§());
         §+!p§.pause();
         var _loc3_:§%"^§ = (§+!p§.§-#W§ as § !b§).§'"&§.levelObjects;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_.§,=§())
         {
            _loc3_.getObject(_loc4_).update(0,null);
            _loc4_++;
         }
         if(this.§?"u§ != null)
         {
            this.§?"u§.stop();
         }
         this.§%!o§.reset();
         this.§%!o§.§#x§(true);
         this.§?"u§ = §5"<§.§3"1§.§!"[§(§5"<§.§3"1§.§3#§(§<!§.getItemByName("Container_PauseMenu") as §!"e§,{"x":0},null,0.25),§5"<§.§3"1§.§3#§((§<!§.getItemByName("MovieClip_DarkBG") as §=!Z§).mClip,{"alpha":1},{"alpha":0},0.25),§5"<§.§3"1§.§3#§((§<!§.getItemByName("News_Item_Holder") as §!"e§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§?"u§.onComplete = this.§&"X§;
         this.§?"u§.play();
      }
      
      protected function §&"X§() : void
      {
         this.§?!s§(true);
         this.§=#[§();
      }
      
      protected function §9"6§(param1:Boolean) : void
      {
         this.§3"Y§.mClip.visible = param1;
      }
      
      protected function §?!s§(param1:Boolean) : void
      {
         (§<!§.getItemByName("Button_Resume") as §;!b§).setEnabled(param1);
         (§<!§.getItemByName("Button_Replay") as §;!b§).setEnabled(param1);
         (§<!§.getItemByName("Button_Menu") as §;!b§).setEnabled(param1);
      }
      
      protected function §%"k§(param1:String) : void
      {
         (§<!§.getItemByName("Button_Resume") as §;!b§).setComponentVisualState(param1);
         (§<!§.getItemByName("Button_Replay") as §;!b§).setComponentVisualState(param1);
         (§<!§.getItemByName("Button_Menu") as §;!b§).setComponentVisualState(param1);
      }
      
      protected function §1!V§(param1:Boolean) : void
      {
         if(this.§?"u§ != null)
         {
            this.§?"u§.stop();
         }
         this.§?"u§ = §5"<§.§3"1§.§!"[§(§5"<§.§3"1§.§3#§(§<!§.getItemByName("Container_PauseMenu") as §!"e§,{"x":§6#[§},null,0.25),§5"<§.§3"1§.§3#§((§<!§.getItemByName("MovieClip_DarkBG") as §=!Z§).mClip,{"alpha":0},{"alpha":1},0.25),§5"<§.§3"1§.§3#§((§<!§.getItemByName("News_Item_Holder") as §!"e§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§?"u§.onComplete = this.§40§;
         this.§?"u§.play();
         if(this.§%!o§)
         {
            this.§%!o§.§#x§(false);
         }
      }
      
      protected function §40§() : void
      {
         §<!§.setVisibility(false);
         §<!§.removeEventListener(§3#6§.§[!$§,this.onUIInteraction);
         this.§=#[§();
      }
      
      protected function getLevelSelectionState() : String
      {
         var _loc1_:§79§ = mLevelManager.getCurrentEpisodeModel();
         if(_loc1_ && _loc1_.name == §`$D§.§8V§)
         {
            return §`$D§.STATE_NAME;
         }
         return §;O§.STATE_NAME;
      }
      
      private function §>F§(param1:Event) : void
      {
         (§+!p§.§`?§ as §^#j§).§'#>§.removeEventListener(Event.COMPLETE,this.§>F§);
         if(this.§!!u§)
         {
            this.§!!u§.close();
            this.§!!u§ = null;
         }
         this.onUIInteraction(new §3#6§(§3#6§.§[!$§,this.§4#n§,this.§>"@§,this.§2#Y§));
      }
      
      protected function onUIInteraction(param1:§3#6§) : void
      {
         var _loc2_:§9! § = null;
         var _loc3_:* = false;
         if(§&"-§)
         {
            return;
         }
         if(["MENU","RESTART_LEVEL"].indexOf(param1.eventName) != -1 && (§+!p§.§`?§ as §^#j§).§'#>§.§#!?§(false))
         {
            this.§4#n§ = param1.eventIndex;
            this.§>"@§ = param1.eventName;
            this.§2#Y§ = param1.component;
            (§+!p§.§`?§ as §^#j§).§'#>§.addEventListener(Event.COMPLETE,this.§>F§);
            this.§!!u§ = new SyncingPopup(§-!S§.§ !^§,§## §.TOP);
            AngryBirdsBase.singleton.popupManager.openPopup(this.§!!u§);
            return;
         }
         if(param1.eventName == "RESTART_LEVEL")
         {
         }
         if(this.§%!o§)
         {
            this.§%!o§.uiInteractionHandler(param1.eventName);
         }
         switch(param1.eventName)
         {
            case "HELP":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               dispatchEvent(new §@$%§(§@$%§.RESUME_LEVEL));
               §4!h§.log(§-B§.§2#R§);
               (§+!p§.§;"-§ as §^"a§).§?"c§.dispatchEvent(new §-B§(§-B§.§2#R§));
               break;
            case "RESTART_LEVEL":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               dispatchEvent(new §@$%§(§@$%§.RESTART_LEVEL));
               break;
            case "RESUME_LEVEL":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               dispatchEvent(new §@$%§(§@$%§.RESUME_LEVEL));
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               §4$4§.§?#l§();
               dispatchEvent(new §@$%§(§@$%§.§,f§,this.getLevelSelectionState()));
               §]!P§.§1!7§().§+!6§(false,mLevelManager.currentLevel,this.getTournamentId(),mLevelManager.getCurrentEpisodeModel().name,§+!p§.§`?§.slingshot.§?#&§() - §+!p§.§`?§.slingshot.§,"j§(),§+!p§.§`?§.slingshot.§?#&§(),AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(mLevelManager.currentLevel),(§+!p§.§`?§ as §^#j§).§"C§(),§+!p§.§-#W§.getScore(),false);
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               break;
            case "TOGGLE_SOUNDS":
               if(!§4$4§.§%#u§)
               {
                  §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               }
               _loc2_ = (§+!p§.§;"-§ as §^"a§).§?"c§;
               if(_loc2_)
               {
                  _loc2_.dispatchEvent(new §-B§(§-B§.§&,§));
               }
               (§+!p§.§;"-§ as §^"a§).§?"c§.§6!b§();
               break;
            case "TOGGLE_PARTICLES":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               _loc3_ = !§+!p§.§'$,§();
               §+!p§.§1#5§(_loc3_);
               §<!§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc3_);
               break;
            case "FULLSCREEN_BUTTON":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               AngryBirdsBase.singleton.§=!Y§();
         }
      }
      
      protected function §2C§(param1:§-B§) : void
      {
         this.§9"6§(!this.§3"Y§.mClip.visible);
      }
      
      public function §9M§() : String
      {
         return "PauseView";
      }
      
      protected function getTournamentId() : int
      {
         return -1;
      }
   }
}
