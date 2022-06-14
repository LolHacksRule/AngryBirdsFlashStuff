package §7"@§
{
   import §!"2§.§?f§;
   import §#!e§.§ <§;
   import §#!e§.§>x§;
   import §#!e§.LevelManager;
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §'!s§.§"!§;
   import §'!s§.§%?§;
   import §2!i§.§'M§;
   import §4!e§.§-"E§;
   import §4!e§.§08§;
   import §4!e§.§7"-§;
   import §8!v§.§>!+§;
   import §9"!§.§2K§;
   import §]!A§.;
   import com.AngryBirds.friendsbar.§ K§;
   import flash.events.Event;
   import flash.text.TextFieldAutoSize;
   
   public class §-"$§ extends §7l§
   {
       
      
      private var §#![§:§?f§;
      
      private var §["9§:§"!§;
      
      private var §&!l§:int;
      
      private var §-!s§:String;
      
      private var §%!a§:§'M§;
      
      public function §-"$§(param1:Boolean = false, param2:String = "PauseState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         § J§ = true;
         §6w§ = new §7!A§(this);
         §6w§.init(§ "A§.§4[§.Views.View_FacebookLevelPause[0]);
         this.§#![§ = new §?f§(§6w§);
         this.§#![§.§<h§();
         var _loc1_:§-"E§ = §6w§.getItemByName("TextField_ChapterName") as §-"E§;
         _loc1_.§5!=§.autoSize = TextFieldAutoSize.CENTER;
      }
      
      override public function activate() : void
      {
         super.activate();
         (§#6§.§ q§ as §3T§).§`!P§(§ K§.§2_§);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      protected function getLevelNameToDisplay(param1:String) : String
      {
         return § <§.§2!V§(param1);
      }
      
      override protected function openPauseMenu() : void
      {
         var _loc1_:§-"E§ = null;
         if(LevelManager.§'!O§ != null)
         {
            _loc1_ = §6w§.getItemByName("TextField_ChapterName") as §-"E§;
            _loc1_.§5!=§.text = LevelManager.§9"D§().writtenName;
            (§6w§.getItemByName("TextField_LevelName") as §-"E§).§5!=§.text = this.getLevelNameToDisplay(LevelManager.§'!O§);
            (§6w§.getItemByName("TextField_LevelName") as §-"E§).y = _loc1_.height + 15;
         }
         (§6w§.getItemByName("Container_PauseMenu") as §08§).x = §7l§.OFFSCREEN_X;
         §'d§(false);
         §#6§.pause();
         §6w§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§3>§());
         if(§+;§ != null)
         {
            §+;§.stop();
         }
         this.§#![§.reset();
         §+;§ = §>!+§.§;"§.§2!z§(§>!+§.§;"§.§^!K§(§6w§.getItemByName("Container_PauseMenu") as §08§,{"x":0},null,0.25),§>!+§.§;"§.§^!K§((§6w§.getItemByName("MovieClip_DarkBG") as §7"-§).mClip,{"alpha":1},{"alpha":0},0.25),§>!+§.§;"§.§^!K§((§6w§.getItemByName("News_Item_Holder") as §08§).mClip,{"alpha":1},{"alpha":0},0.25));
         §+;§.onComplete = §4R§;
         §+;§.play();
      }
      
      override protected function closePauseMenu() : void
      {
         if(§+;§ != null)
         {
            §+;§.stop();
         }
         §+;§ = §>!+§.§;"§.§2!z§(§>!+§.§;"§.§^!K§(§6w§.getItemByName("Container_PauseMenu") as §08§,{"x":OFFSCREEN_X},null,0.25),§>!+§.§;"§.§^!K§((§6w§.getItemByName("MovieClip_DarkBG") as §7"-§).mClip,{"alpha":0},{"alpha":1},0.25),§>!+§.§;"§.§^!K§((§6w§.getItemByName("News_Item_Holder") as §08§).mClip,{"alpha":0},{"alpha":1},0.25));
         §+;§.onComplete = §&!%§;
         §+;§.play();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         if(["MENU","RESTART_LEVEL"].indexOf(param2) != -1 && (§#6§.§6!z§ as §2K§).§-"#§.§6I§)
         {
            this.§&!l§ = param1;
            this.§-!s§ = param2;
            this.§%!a§ = param3;
            (§#6§.§6!z§ as §2K§).§-"#§.addEventListener(Event.COMPLETE,this.§-P§);
            this.§["9§ = §%?§.§@-§();
            return;
         }
         if(param2 == "RESTART_LEVEL")
         {
            §2!e§.§5;§ = "";
         }
         super.uiInteractionHandler(param1,param2,param3);
         if(this.§#![§)
         {
            this.§#![§.uiInteractionHandler(param2);
         }
      }
      
      override protected function getLevelSelectionState() : String
      {
         var _loc1_:String = null;
         var _loc2_:§>x§ = LevelManager.§9"D§();
         if(_loc2_.name == §]!K§.§"!x§)
         {
            _loc1_ = §9!X§.STATE_NAME;
         }
         else if(_loc2_.name == §]!K§.§9a§ || _loc2_.name == §]!K§.EPISODE_GREEN_DAY_EGG)
         {
            _loc1_ = §1!J§.STATE_NAME;
         }
         return _loc1_ != null ? _loc1_ : §8"D§.STATE_NAME;
      }
      
      private function §-P§(param1:Event) : void
      {
         (§#6§.§6!z§ as §2K§).§-"#§.removeEventListener(Event.COMPLETE,this.§-P§);
         this.§["9§.close();
         this.§["9§ = null;
         this.uiInteractionHandler(this.§&!l§,this.§-!s§,this.§%!a§);
      }
   }
}
