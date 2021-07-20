package §@",§
{
   import §#M§.§%^§;
   import §#M§.§^0§;
   import §&!"§.§4!F§;
   import §&!"§.§`B§;
   import §-B§.§#p§;
   import §-B§.§="0§;
   import §-B§.§?!j§;
   import §0!2§.§9!F§;
   import §2E§.§&p§;
   import §5!G§.§&2§;
   import §;n§.§^!;§;
   import §>!u§.§%5§;
   import §`!n§.§-[§;
   import §`!n§.§=!-§;
   import §`!n§.LevelManager;
   import com.AngryBirds.friendsbar.§=!7§;
   import flash.events.Event;
   import flash.text.TextFieldAutoSize;
   
   public class §6G§ extends §9!p§
   {
       
      
      private var §6<§:§%5§;
      
      private var §4!?§:§4!F§;
      
      private var §2!V§:int;
      
      private var §&"+§:String;
      
      private var §4"C§:§^!;§;
      
      public function §6G§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         §!Q§ = true;
         §2!K§ = new §^0§(this);
         §2!K§.init(§%^§.§?>§.Views.View_FacebookLevelPause[0]);
         this.§6<§ = new §%5§(§2!K§);
         this.§6<§.§ !d§();
         var _loc1_:§#p§ = §2!K§.getItemByName("TextField_ChapterName") as §#p§;
         _loc1_.§`E§.autoSize = TextFieldAutoSize.CENTER;
      }
      
      override public function activate() : void
      {
         super.activate();
         (§&2§.§5!k§ as §,"I§).§'!e§(§=!7§.§?J§);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      protected function getLevelNameToDisplay(param1:String) : String
      {
         return §-[§.§8"4§(param1);
      }
      
      override protected function openPauseMenu() : void
      {
         var _loc1_:§#p§ = null;
         if(LevelManager.§`-§ != null)
         {
            _loc1_ = §2!K§.getItemByName("TextField_ChapterName") as §#p§;
            _loc1_.§`E§.text = LevelManager.§6!6§().writtenName;
            (§2!K§.getItemByName("TextField_LevelName") as §#p§).§`E§.text = this.getLevelNameToDisplay(LevelManager.§`-§);
            (§2!K§.getItemByName("TextField_LevelName") as §#p§).y = _loc1_.height + 15;
         }
         (§2!K§.getItemByName("Container_PauseMenu") as §?!j§).x = §9!p§.OFFSCREEN_X;
         §-C§(false);
         §&2§.pause();
         §2!K§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§""4§());
         if(§1!Z§ != null)
         {
            §1!Z§.stop();
         }
         this.§6<§.reset();
         §1!Z§ = §&p§.§1[§.§=!i§(§&p§.§1[§.§7!3§(§2!K§.getItemByName("Container_PauseMenu") as §?!j§,{"x":0},null,0.25),§&p§.§1[§.§7!3§((§2!K§.getItemByName("MovieClip_DarkBG") as §="0§).mClip,{"alpha":1},{"alpha":0},0.25),§&p§.§1[§.§7!3§((§2!K§.getItemByName("News_Item_Holder") as §?!j§).mClip,{"alpha":1},{"alpha":0},0.25));
         §1!Z§.onComplete = §?"3§;
         §1!Z§.play();
      }
      
      override protected function closePauseMenu() : void
      {
         if(§1!Z§ != null)
         {
            §1!Z§.stop();
         }
         §1!Z§ = §&p§.§1[§.§=!i§(§&p§.§1[§.§7!3§(§2!K§.getItemByName("Container_PauseMenu") as §?!j§,{"x":OFFSCREEN_X},null,0.25),§&p§.§1[§.§7!3§((§2!K§.getItemByName("MovieClip_DarkBG") as §="0§).mClip,{"alpha":0},{"alpha":1},0.25),§&p§.§1[§.§7!3§((§2!K§.getItemByName("News_Item_Holder") as §?!j§).mClip,{"alpha":0},{"alpha":1},0.25));
         §1!Z§.onComplete = § !U§;
         §1!Z§.play();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^!;§) : void
      {
         if(["MENU","RESTART_LEVEL"].indexOf(param2) != -1 && (§&2§.§],§ as §9!F§).§"#§.§@!o§)
         {
            this.§2!V§ = param1;
            this.§&"+§ = param2;
            this.§4"C§ = param3;
            (§&2§.§],§ as §9!F§).§"#§.addEventListener(Event.COMPLETE,this.§7C§);
            this.§4!?§ = §`B§.§>>§();
            return;
         }
         if(param2 == "RESTART_LEVEL")
         {
            §-!V§.§89§ = "";
         }
         super.uiInteractionHandler(param1,param2,param3);
         if(this.§6<§)
         {
            this.§6<§.uiInteractionHandler(param2);
         }
      }
      
      override protected function getLevelSelectionState() : String
      {
         var _loc1_:String = null;
         var _loc2_:§=!-§ = LevelManager.§6!6§();
         if(_loc2_.name == §,!z§.§case §)
         {
            _loc1_ = §@W§.STATE_NAME;
         }
         return _loc1_ != null ? _loc1_ : §[2§.STATE_NAME;
      }
      
      private function §7C§(param1:Event) : void
      {
         (§&2§.§],§ as §9!F§).§"#§.removeEventListener(Event.COMPLETE,this.§7C§);
         this.§4!?§.close();
         this.§4!?§ = null;
         this.uiInteractionHandler(this.§2!V§,this.§&"+§,this.§4"C§);
      }
   }
}
