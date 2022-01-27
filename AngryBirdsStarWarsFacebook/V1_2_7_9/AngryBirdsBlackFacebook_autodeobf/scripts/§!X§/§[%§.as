package §!X§
{
   import §"!P§.§3G§;
   import §%!c§.§#!t§;
   import §%!c§.§@!#§;
   import §'+§.§="B§;
   import §,"v§.§@§;
   import §,#+§.§7!m§;
   import §,#+§.§@"F§;
   import §4##§.§7!B§;
   import §4##§.§7!Y§;
   import §4m§.§5!R§;
   import §4m§.§^T§;
   import §<"s§.§0u§;
   import §<"s§.§@![§;
   import §<"s§.FriendsPromoPopup;
   import §<"s§.GenericMessagePopup;
   import §=N§.TournamentResultsPopup;
   import §>!2§.§^;§;
   import §>"!§.§>D§;
   import §`!b§.§"§;
   import §`!b§.§`§;
   import §`"8§.§#"S§;
   import §`"8§.§-!w§;
   import §`"8§.§1,§;
   import §`"8§.§>6§;
   import com.angrybirds.§;!e§;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §[%§ extends §1"P§
   {
      
      private static const §["T§:String = "start_hover_tournament_button";
      
      private static const §4n§:String = "http://www.angrybirds.com/toons?ref=abswfb";
       
      
      private var §?8§:§>6§;
      
      private var § "2§:MovieClip;
      
      private var §0!+§:int;
      
      private var §'!`§:Boolean;
      
      private var §="X§:§#!t§;
      
      private var §9q§:Boolean = true;
      
      public function §[%§(param1:§7!m§, param2:§="B§, param3:Boolean, param4:String = "ChapterSelectionState")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§?8§ = §-!w§(§;"@§.singleton.dataModel).§2!J§;
         var _loc1_:int = §-!w§(§;"@§.singleton.dataModel).§2!J§.§@"C§;
         var _loc2_:MovieClip = §>I§.getItemByName("Button_Tournaments").mClip.content;
         if(_loc1_ == 1)
         {
            _loc2_.tournamentAnimation2.visible = false;
            _loc2_.tournamentAnimation2.stop();
            this.§ "2§ = _loc2_.tournamentAnimation1;
         }
         else
         {
            _loc2_.tournamentAnimation1.visible = false;
            _loc2_.tournamentAnimation1.stop();
            this.§ "2§ = _loc2_.tournamentAnimation2;
         }
         this.§0!+§ = this.§<!-§(this.§ "2§,§["T§);
         this.§'!`§ = false;
      }
      
      protected function §<!-§(param1:MovieClip, param2:String) : int
      {
         var _loc4_:FrameLabel = null;
         var _loc3_:Array = param1.currentLabels;
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_.name.indexOf(param2) == 0)
            {
               return _loc4_.frame;
            }
         }
         return 1;
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:§5!R§ = null;
         super.activate(param1);
         this.§'!`§ = false;
         §&"1§(§;!e§.§6!v§).§#"t§.§`§ = false;
         §&"1§(§;!e§.§6!v§).§`!u§.showTotalScores();
         this.§?8§.addEventListener(§>6§.§]"R§,this.§]4§);
         this.§?8§.addEventListener(§>6§.§5"G§,this.§]4§);
         if(this.§?8§.§4,§ && !this.§?8§.isLoading)
         {
            this.§?8§.reset();
         }
         else if(this.§?8§.lastResult)
         {
            _loc2_ = new TournamentResultsPopup(this.§?8§.lastResult,§0u§.§1"J§,§^T§.TOP);
            §;"@§.singleton.popupManager.openPopup(_loc2_,true,true,true);
            this.§?8§.§-s§();
            §-!w§(§;"@§.singleton.dataModel).§9"1§.§'"4§();
         }
         this.§?8§.§#"D§();
         this.§ !n§();
         this.§[b§(!this.§70§);
      }
      
      override protected function onTransitionComplete(param1:String) : void
      {
         var _loc2_:Date = null;
         var _loc3_:Date = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:§1,§ = null;
         var _loc7_:§5!R§ = null;
         super.onTransitionComplete(param1);
         if(param1 == "in")
         {
            if(§-!w§(§;"@§.singleton.dataModel).§=!p§)
            {
               if((_loc5_ = §-!w§(§;"@§.singleton.dataModel).§=!p§.id).length > 0)
               {
                  if(!§;"@§.singleton.dataModel.userProgress.hasTutorialBeenSeen(_loc5_))
                  {
                     §;"@§.singleton.dataModel.userProgress.saveTutorialSeen(_loc5_);
                     _loc6_ = §-!w§(§;"@§.singleton.dataModel).§=!p§;
                     §;"@§.singleton.popupManager.openPopup(new GenericMessagePopup(_loc6_.title,_loc6_.message,§0u§.§1"J§,§^T§.DEFAULT),true,true,true);
                  }
               }
            }
            if(§-!w§(§;"@§.singleton.dataModel).§#"9§.§<"^§ > 0)
            {
               if(this.§9q§)
               {
                  this.§9q§ = false;
                  _loc7_ = new §^;§(§ !p§ as §@"F§,§0u§.§1"J§,§^T§.DEFAULT);
                  §;"@§.singleton.popupManager.openPopup(_loc7_,true,true,true);
               }
            }
            _loc2_ = new Date();
            _loc3_ = new Date(_loc2_.fullYear,0,1);
            _loc3_.date -= (_loc3_.day + 6) % 7;
            if((_loc4_ = Math.floor((_loc2_.time - _loc3_.time) / (1000 * 60 * 60 * 24 * 7))) % 2 == 0 && (_loc2_.day == 2 || _loc2_.day == 4 || _loc2_.day == 6) || _loc4_ % 2 != 0 && (_loc2_.day == 0 || _loc2_.day == 3 || _loc2_.day == 5))
            {
               if(!this.§1%§(§#"S§.§'"H§,1000 * 60 * 60 * 12))
               {
                  §;"@§.singleton.popupManager.openPopup(new §>D§(§0u§.§1"J§,§^T§.DEFAULT,§>D§.§-" §,true),true,true,true);
                  §-!w§(§;"@§.singleton.dataModel).§#t§.§-!v§(§#"S§.§'"H§);
               }
            }
            else if(_loc4_ % 2 == 0 && (_loc2_.day == 0 || _loc2_.day == 3 || _loc2_.day == 5) || _loc4_ % 2 != 0 && (_loc2_.day == 2 || _loc2_.day == 4 || _loc2_.day == 6))
            {
               if(!this.§1%§(§#"S§.§[!i§,1000 * 60 * 60 * 12))
               {
                  §;"@§.singleton.popupManager.openPopup(new §>D§(§0u§.§1"J§,§^T§.DEFAULT,§>D§.§,!9§,true),true,true,true);
                  §-!w§(§;"@§.singleton.dataModel).§#t§.§-!v§(§#"S§.§[!i§);
               }
            }
         }
      }
      
      private function §1%§(param1:String, param2:Number) : Boolean
      {
         var _loc3_:Number = §-!w§(§;"@§.singleton.dataModel).§#t§.§]"w§(param1);
         if(!_loc3_)
         {
            return false;
         }
         if(new Date().time - _loc3_ < param2)
         {
            return true;
         }
         return false;
      }
      
      private function §]4§(param1:Event) : void
      {
         this.§ !n§();
      }
      
      override public function deActivate() : void
      {
         this.§'!`§ = false;
         this.§?8§.removeEventListener(§>6§.§]"R§,this.§]4§);
         this.§?8§.removeEventListener(§>6§.§5"G§,this.§]4§);
         super.deActivate();
      }
      
      private function § !n§() : void
      {
         var _loc2_:§-!w§ = null;
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:§"#6§ = null;
         var _loc9_:String = null;
         var _loc10_:§`#1§ = null;
         var _loc1_:MovieClip = §>I§.getItemByName("Button_Tournaments").mClip.tournamentInfo;
         if(this.§?8§.isLoading)
         {
            _loc1_.txtRank.text = "-";
            _loc1_.txtStars.text = "-";
         }
         else
         {
            _loc2_ = §-!w§(§;"@§.singleton.dataModel);
            _loc3_ = _loc2_.§0!;§.id;
            _loc4_ = 0;
            _loc5_ = -1;
            _loc6_ = 0;
            _loc7_ = 0;
            for each(_loc8_ in this.§?8§.§?!x§.data)
            {
               if(_loc10_ = _loc8_ as §`#1§)
               {
                  _loc4_++;
                  if(_loc10_.userId == _loc3_)
                  {
                     _loc5_ = _loc10_.§["Q§;
                     _loc7_ = _loc10_.§7"_§;
                  }
               }
            }
            for each(_loc9_ in _loc2_.§2!J§.levelNames)
            {
               _loc6_ += _loc2_.userProgress.getStarsForLevel(_loc9_,_loc2_.§2!J§.getScoreForLevel(_loc9_));
            }
            _loc1_.txtRank.text = _loc5_ == -1 || _loc7_ == 0 ? "-" : _loc5_.toString() + "/" + _loc4_;
            _loc1_.txtStars.text = _loc6_.toString() + "/15";
            _loc1_.txtScore.text = _loc7_.toString();
         }
      }
      
      private function §[b§(param1:Boolean) : void
      {
         var _loc2_:MovieClip = §>I§.getItemByName("Button_Tournaments").mClip;
         _loc2_.gotoAndStop(!!param1 ? "locked" : "unlocked");
         (§>I§.getItemByName("Button_Tournaments") as §7!Y§).setComponentState(!!param1 ? §7!Y§.COMPONENT_STATE_DISABLED : §7!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
         _loc2_.mouseEnabled = !param1;
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§7!B§) : void
      {
         switch(param2)
         {
            case "SHOP":
               §@§.§=Y§("misc_menubuttonproceed_1");
               §@![§(§;"@§.singleton.popupManager).§2"N§();
               break;
            case "TOURNAMENTS":
               if(this.§70§)
               {
                  §@§.§=Y§("misc_menubuttonproceed_1");
                  §0"B§(§@!#§.§'#2§,true);
               }
               break;
            case "TOURNAMENTS_OVER":
               if(this.§70§)
               {
                  this.§'!`§ = true;
                  this.§5!k§();
               }
               break;
            case "TOURNAMENTS_OUT":
               this.§'!`§ = false;
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      override protected function navigateToToons() : void
      {
         if(§;"@§.singleton.§3!g§())
         {
            §;"@§.singleton.§35§();
         }
         navigateToURL(new URLRequest(§4n§),"_blank");
      }
      
      override protected function navigateToFriends() : void
      {
         var _loc1_:FriendsPromoPopup = new FriendsPromoPopup(§0u§.§1"J§,§^T§.TOP);
         §;"@§.singleton.popupManager.openPopup(_loc1_,true,true,true);
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§5!k§();
      }
      
      private function get §70§() : Boolean
      {
         return §3G§(§;"@§.singleton.dataModel.userProgress).§70§;
      }
      
      private function §5!k§() : void
      {
         if(this.§'!`§ && this.§ "2§.currentFrame == this.§0!+§ - 2)
         {
            this.§ "2§.gotoAndPlay(§["T§);
         }
      }
   }
}
