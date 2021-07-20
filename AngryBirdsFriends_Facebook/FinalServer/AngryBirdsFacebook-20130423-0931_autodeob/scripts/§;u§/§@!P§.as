package §;u§
{
   import §%i§.§0!Y§;
   import §%i§.§4"9§;
   import §%i§.§^n§;
   import §1!t§.§""B§;
   import §2"'§.§0W§;
   import §4!<§.§%6§;
   import §5!Y§.§3"H§;
   import §5!Y§.§9"6§;
   import §9!n§.§!J§;
   import §9!n§.§3-§;
   import §9!n§.LevelManager;
   import §<!V§.§"!j§;
   import §@!"§.§?l§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import com.AngryBirds.friendsbar.§]a§;
   import flash.events.Event;
   import flash.text.TextFieldAutoSize;
   
   public class §@!P§ extends §4!Q§
   {
       
      
      private var §<!1§:§"!j§;
      
      private var §;!l§:§3"H§;
      
      private var §3!l§:int;
      
      private var §2!j§:String;
      
      private var §]!4§:§""B§;
      
      public function §@!P§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         §>!%§ = true;
         §2"@§ = new §`_§(this);
         §2"@§.init(§ "<§.§%I§.Views.View_FacebookLevelPause[0]);
         this.§<!1§ = new §"!j§(§2"@§);
         this.§<!1§.§%"?§();
         var _loc1_:§4"9§ = §2"@§.getItemByName("TextField_ChapterName") as §4"9§;
         _loc1_.§-" §.autoSize = TextFieldAutoSize.CENTER;
      }
      
      override public function activate() : void
      {
         super.activate();
         (§?l§.§ "G§ as §%"S§).§ b§(§]a§.§!!;§);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      protected function getLevelNameToDisplay(param1:String) : String
      {
         return §!J§.§;6§(param1);
      }
      
      override protected function openPauseMenu() : void
      {
         var _loc1_:§4"9§ = null;
         if(LevelManager.§ T§ != null)
         {
            _loc1_ = §2"@§.getItemByName("TextField_ChapterName") as §4"9§;
            _loc1_.§-" §.text = LevelManager.§`"Q§().writtenName;
            (§2"@§.getItemByName("TextField_LevelName") as §4"9§).§-" §.text = this.getLevelNameToDisplay(LevelManager.§ T§);
            (§2"@§.getItemByName("TextField_LevelName") as §4"9§).y = _loc1_.height + 15;
         }
         (§2"@§.getItemByName("Container_PauseMenu") as §0!Y§).x = §4!Q§.OFFSCREEN_X;
         §&"$§(false);
         §?l§.pause();
         §2"@§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§6!,§());
         if(§-"L§ != null)
         {
            §-"L§.stop();
         }
         this.§<!1§.reset();
         §-"L§ = §0W§.§&"5§.§]">§(§0W§.§&"5§.§]!r§(§2"@§.getItemByName("Container_PauseMenu") as §0!Y§,{"x":0},null,0.25),§0W§.§&"5§.§]!r§((§2"@§.getItemByName("MovieClip_DarkBG") as §^n§).mClip,{"alpha":1},{"alpha":0},0.25),§0W§.§&"5§.§]!r§((§2"@§.getItemByName("News_Item_Holder") as §0!Y§).mClip,{"alpha":1},{"alpha":0},0.25));
         §-"L§.onComplete = §!"Y§;
         §-"L§.play();
      }
      
      override protected function closePauseMenu() : void
      {
         if(§-"L§ != null)
         {
            §-"L§.stop();
         }
         §-"L§ = §0W§.§&"5§.§]">§(§0W§.§&"5§.§]!r§(§2"@§.getItemByName("Container_PauseMenu") as §0!Y§,{"x":OFFSCREEN_X},null,0.25),§0W§.§&"5§.§]!r§((§2"@§.getItemByName("MovieClip_DarkBG") as §^n§).mClip,{"alpha":0},{"alpha":1},0.25),§0W§.§&"5§.§]!r§((§2"@§.getItemByName("News_Item_Holder") as §0!Y§).mClip,{"alpha":0},{"alpha":1},0.25));
         §-"L§.onComplete = §,"X§;
         §-"L§.play();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§""B§) : void
      {
         if(["MENU","RESTART_LEVEL"].indexOf(param2) != -1 && (§?l§.§'h§ as §%6§).§+"3§.§each §)
         {
            this.§3!l§ = param1;
            this.§2!j§ = param2;
            this.§]!4§ = param3;
            (§?l§.§'h§ as §%6§).§+"3§.addEventListener(Event.COMPLETE,this.§%!i§);
            this.§;!l§ = §9"6§.§'!o§();
            return;
         }
         if(param2 == "RESTART_LEVEL")
         {
            §+"9§.§8!]§ = "";
         }
         super.uiInteractionHandler(param1,param2,param3);
         if(this.§<!1§)
         {
            this.§<!1§.uiInteractionHandler(param2);
         }
      }
      
      override protected function getLevelSelectionState() : String
      {
         var _loc1_:String = null;
         var _loc2_:§3-§ = LevelManager.§`"Q§();
         if(_loc2_.name == §7D§.§^!i§)
         {
            _loc1_ = §4"Y§.STATE_NAME;
         }
         return _loc1_ != null ? _loc1_ : §9"@§.STATE_NAME;
      }
      
      private function §%!i§(param1:Event) : void
      {
         (§?l§.§'h§ as §%6§).§+"3§.removeEventListener(Event.COMPLETE,this.§%!i§);
         this.§;!l§.close();
         this.§;!l§ = null;
         this.uiInteractionHandler(this.§3!l§,this.§2!j§,this.§]!4§);
      }
   }
}
