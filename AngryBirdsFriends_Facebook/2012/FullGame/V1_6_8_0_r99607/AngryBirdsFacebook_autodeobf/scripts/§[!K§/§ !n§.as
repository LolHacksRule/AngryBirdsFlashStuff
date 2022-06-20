package §[!K§
{
   import §"",§.§"Z§;
   import §"",§.§+§;
   import §"",§.§<+§;
   import §'c§.§`v§;
   import §+I§.§9!%§;
   import §0r§.§7!b§;
   import §1"2§.§,!]§;
   import §3,§.§>M§;
   import §7N§.§+"@§;
   import §7N§.§43§;
   import §[!z§.§"5§;
   import §[!z§.LevelManager;
   import §[!z§.§]f§;
   import §]!F§.§"!j§;
   import §]!F§.§1"-§;
   import com.AngryBirds.friendsbar.§2!h§;
   import flash.events.Event;
   import flash.text.TextFieldAutoSize;
   
   public class § !n§ extends §-!M§
   {
       
      
      private var §[!T§:§`v§;
      
      private var §6"5§:§+"@§;
      
      private var §^!c§:int;
      
      private var §@!p§:String;
      
      private var §2!i§:§,!]§;
      
      public function § !n§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         §@!5§ = true;
         §2"-§ = new §"!j§(this);
         §2"-§.init(§1"-§.§ !>§.Views.View_FacebookLevelPause[0]);
         this.§[!T§ = new §`v§(§2"-§);
         this.§[!T§.§[1§();
         var _loc1_:§+§ = §2"-§.getItemByName("TextField_ChapterName") as §+§;
         _loc1_.§"<§.autoSize = TextFieldAutoSize.CENTER;
      }
      
      override public function activate() : void
      {
         super.activate();
         (§9!%§.§ !W§ as § W§).§+"#§(§2!h§.§7f§);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      protected function getLevelNameToDisplay(param1:String) : String
      {
         return §"5§.§3t§(param1);
      }
      
      override protected function openPauseMenu() : void
      {
         var _loc1_:§+§ = null;
         if(LevelManager.§[!<§ != null)
         {
            _loc1_ = §2"-§.getItemByName("TextField_ChapterName") as §+§;
            _loc1_.§"<§.text = LevelManager.§8!§().writtenName;
            (§2"-§.getItemByName("TextField_LevelName") as §+§).§"<§.text = this.getLevelNameToDisplay(LevelManager.§[!<§);
            (§2"-§.getItemByName("TextField_LevelName") as §+§).y = _loc1_.height + 15;
         }
         (§2"-§.getItemByName("Container_PauseMenu") as §<+§).x = §-!M§.OFFSCREEN_X;
         §6!^§(false);
         §9!%§.pause();
         §2"-§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§0!+§());
         if(§<n§ != null)
         {
            §<n§.stop();
         }
         this.§[!T§.reset();
         §<n§ = §7!b§.§8c§.§,H§(§7!b§.§8c§.§4&§(§2"-§.getItemByName("Container_PauseMenu") as §<+§,{"x":0},null,0.25),§7!b§.§8c§.§4&§((§2"-§.getItemByName("MovieClip_DarkBG") as §"Z§).mClip,{"alpha":1},{"alpha":0},0.25),§7!b§.§8c§.§4&§((§2"-§.getItemByName("News_Item_Holder") as §<+§).mClip,{"alpha":1},{"alpha":0},0.25));
         §<n§.onComplete = §case §;
         §<n§.play();
      }
      
      override protected function closePauseMenu() : void
      {
         if(§<n§ != null)
         {
            §<n§.stop();
         }
         §<n§ = §7!b§.§8c§.§,H§(§7!b§.§8c§.§4&§(§2"-§.getItemByName("Container_PauseMenu") as §<+§,{"x":OFFSCREEN_X},null,0.25),§7!b§.§8c§.§4&§((§2"-§.getItemByName("MovieClip_DarkBG") as §"Z§).mClip,{"alpha":0},{"alpha":1},0.25),§7!b§.§8c§.§4&§((§2"-§.getItemByName("News_Item_Holder") as §<+§).mClip,{"alpha":0},{"alpha":1},0.25));
         §<n§.onComplete = §,!O§;
         §<n§.play();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!]§) : void
      {
         if(["MENU","RESTART_LEVEL"].indexOf(param2) != -1 && (§9!%§.§!!M§ as §>M§).§+r§.§%!H§)
         {
            this.§^!c§ = param1;
            this.§@!p§ = param2;
            this.§2!i§ = param3;
            (§9!%§.§!!M§ as §>M§).§+r§.addEventListener(Event.COMPLETE,this.§&!@§);
            this.§6"5§ = §43§.§2C§();
            return;
         }
         if(param2 == "RESTART_LEVEL")
         {
            §&j§.§;!@§ = "";
         }
         super.uiInteractionHandler(param1,param2,param3);
         if(this.§[!T§)
         {
            this.§[!T§.uiInteractionHandler(param2);
         }
      }
      
      override protected function getLevelSelectionState() : String
      {
         var _loc1_:String = null;
         var _loc2_:§]f§ = LevelManager.§8!§();
         if(_loc2_.name == §%!_§.§-@§)
         {
            _loc1_ = §6!%§.STATE_NAME;
         }
         else if(_loc2_.name == §%!_§.§5H§ || _loc2_.name == §%!_§.EPISODE_GREEN_DAY_EGG)
         {
            _loc1_ = §4E§.STATE_NAME;
         }
         return _loc1_ != null ? _loc1_ : §=B§.STATE_NAME;
      }
      
      private function §&!@§(param1:Event) : void
      {
         (§9!%§.§!!M§ as §>M§).§+r§.removeEventListener(Event.COMPLETE,this.§&!@§);
         this.§6"5§.close();
         this.§6"5§ = null;
         this.uiInteractionHandler(this.§^!c§,this.§@!p§,this.§2!i§);
      }
   }
}
