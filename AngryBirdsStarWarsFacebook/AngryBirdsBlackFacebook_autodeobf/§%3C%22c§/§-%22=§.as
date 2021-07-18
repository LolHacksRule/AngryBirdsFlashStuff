package §<"c§
{
   import § "4§.§7q§;
   import § "v§.TournamentResultsPopup;
   import §!"e§.§9#B§;
   import §!"e§.FriendsPromoPopup;
   import §!"e§.GenericMessagePopup;
   import §!"e§.§`"W§;
   import §"k§.§4#G§;
   import §"k§.§]"V§;
   import §+!!§.§9"i§;
   import §,"N§.§1t§;
   import §,"N§.§8"3§;
   import §,"N§.§@"b§;
   import §,"N§.§@#B§;
   import §2"§.§"u§;
   import §7#W§.§,!i§;
   import §7#W§.§6!W§;
   import §;"Y§.§&#X§;
   import §;"Y§.§1"z§;
   import §="2§.§?!r§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import §?m§.§[#;§;
   import §[!m§.§+5§;
   import §[!m§.§[!j§;
   import §^V§.Logging;
   import §`!o§.§+"k§;
   import com.angrybirds.§,!q§;
   import com.furusystems.dconsole2.DConsole;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.net.FileFilter;
   import flash.net.FileReference;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.ui.Keyboard;
   
   public class §-"=§ extends §9U§
   {
      
      private static const § "B§:String = "start_hover_tournament_button";
      
      private static const §@U§:String = "http://www.angrybirds.com/toons?ref=abswfb";
       
      
      private var §?-§:§@"b§;
      
      private var §1"i§:MovieClip;
      
      private var §>";§:int;
      
      private var §2#+§:Boolean;
      
      private var §+f§:§,!i§;
      
      private var §=#]§:Boolean = true;
      
      private var §!!v§:FileReference;
      
      public function §-"=§(param1:§+"2§, param2:§5"H§, param3:Boolean, param4:String = "ChapterSelectionState")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§?-§ = §@#B§(§4#;§.singleton.dataModel).§!!C§;
         var _loc1_:int = §@#B§(§4#;§.singleton.dataModel).§!!C§.§"#'§;
         var _loc2_:MovieClip = §@;§.getItemByName("Button_Tournaments").mClip.content;
         if(_loc1_ == 1)
         {
            _loc2_.tournamentAnimation2.visible = false;
            _loc2_.tournamentAnimation2.stop();
            this.§1"i§ = _loc2_.tournamentAnimation1;
         }
         else
         {
            _loc2_.tournamentAnimation1.visible = false;
            _loc2_.tournamentAnimation1.stop();
            this.§1"i§ = _loc2_.tournamentAnimation2;
         }
         this.§>";§ = this.§-#F§(this.§1"i§,§ "B§);
         this.§2#+§ = false;
         DConsole.§0#Q§("loadLevel",this.loadLevel);
      }
      
      protected function §-#F§(param1:MovieClip, param2:String) : int
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
         var _loc2_:§[!j§ = null;
         super.activate(param1);
         this.§2#+§ = false;
         §@!m§(§,!q§.§>#D§).§ "g§.§""O§ = false;
         §@!m§(§,!q§.§>#D§).§""s§.showTotalScores();
         this.§?-§.addEventListener(§@"b§.§^o§,this.§^X§);
         this.§?-§.addEventListener(§@"b§.§,"3§,this.§^X§);
         if(this.§?-§.§!!e§ && !this.§?-§.isLoading)
         {
            this.§?-§.reset();
         }
         else if(this.§?-§.lastResult)
         {
            _loc2_ = new TournamentResultsPopup(this.§?-§.lastResult,§`"W§.§+v§,§+5§.TOP);
            §4#;§.singleton.popupManager.openPopup(_loc2_,true,true,true);
            this.§?-§.§`"f§();
            §@#B§(§4#;§.singleton.dataModel).§1!f§.§""i§();
         }
         this.§?-§.§^!'§();
         this.§'"f§();
         this.§;!>§(!this.§#F§);
      }
      
      override protected function onTransitionComplete(param1:String) : void
      {
         var _loc2_:Date = null;
         var _loc3_:Date = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:§1t§ = null;
         var _loc7_:§[!j§ = null;
         super.onTransitionComplete(param1);
         if(param1 == "in")
         {
            if(§@#B§(§4#;§.singleton.dataModel).§'R§)
            {
               if((_loc5_ = §@#B§(§4#;§.singleton.dataModel).§'R§.id).length > 0)
               {
                  if(!§4#;§.singleton.dataModel.userProgress.hasTutorialBeenSeen(_loc5_))
                  {
                     §4#;§.singleton.dataModel.userProgress.saveTutorialSeen(_loc5_);
                     _loc6_ = §@#B§(§4#;§.singleton.dataModel).§'R§;
                     §4#;§.singleton.popupManager.openPopup(new GenericMessagePopup(_loc6_.title,_loc6_.message,§`"W§.§+v§,§+5§.DEFAULT),true,true,true);
                  }
               }
            }
            if(§@#B§(§4#;§.singleton.dataModel).§6!G§.§#";§ > 0)
            {
               if(this.§=#]§)
               {
                  this.§=#]§ = false;
                  _loc7_ = new §"u§(§+!b§ as §[#;§,§`"W§.§+v§,§+5§.DEFAULT);
                  §4#;§.singleton.popupManager.openPopup(_loc7_,true,true,true);
               }
            }
            _loc2_ = new Date();
            _loc3_ = new Date(_loc2_.fullYear,0,1);
            _loc3_.date -= (_loc3_.day + 6) % 7;
            if((_loc4_ = Math.floor((_loc2_.time - _loc3_.time) / (1000 * 60 * 60 * 24 * 7))) % 2 == 0 && (_loc2_.day == 2 || _loc2_.day == 4 || _loc2_.day == 6) || _loc4_ % 2 != 0 && (_loc2_.day == 0 || _loc2_.day == 3 || _loc2_.day == 5))
            {
               if(!this.§+"x§(§8"3§.§9#V§,1000 * 60 * 60 * 12))
               {
                  §4#;§.singleton.popupManager.openPopup(new §9"i§(§`"W§.§+v§,§+5§.DEFAULT,§9"i§.§<s§,true),true,true,true);
                  §@#B§(§4#;§.singleton.dataModel).§%!?§.§+#U§(§8"3§.§9#V§);
               }
            }
            else if(_loc4_ % 2 == 0 && (_loc2_.day == 0 || _loc2_.day == 3 || _loc2_.day == 5) || _loc4_ % 2 != 0 && (_loc2_.day == 2 || _loc2_.day == 4 || _loc2_.day == 6))
            {
               if(!this.§+"x§(§8"3§.§`!v§,1000 * 60 * 60 * 12))
               {
                  §4#;§.singleton.popupManager.openPopup(new §9"i§(§`"W§.§+v§,§+5§.DEFAULT,§9"i§.§%?§,true),true,true,true);
                  §@#B§(§4#;§.singleton.dataModel).§%!?§.§+#U§(§8"3§.§`!v§);
               }
            }
         }
      }
      
      private function §+"x§(param1:String, param2:Number) : Boolean
      {
         var _loc3_:Number = §@#B§(§4#;§.singleton.dataModel).§%!?§.§5">§(param1);
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
      
      private function §^X§(param1:Event) : void
      {
         this.§'"f§();
      }
      
      override public function deActivate() : void
      {
         this.§2#+§ = false;
         this.§?-§.removeEventListener(§@"b§.§^o§,this.§^X§);
         this.§?-§.removeEventListener(§@"b§.§,"3§,this.§^X§);
         super.deActivate();
      }
      
      private function §'"f§() : void
      {
         var _loc2_:§@#B§ = null;
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:§]"V§ = null;
         var _loc9_:String = null;
         var _loc10_:§4#G§ = null;
         var _loc1_:MovieClip = §@;§.getItemByName("Button_Tournaments").mClip.tournamentInfo;
         if(this.§?-§.isLoading)
         {
            _loc1_.txtRank.text = "-";
            _loc1_.txtStars.text = "-";
         }
         else
         {
            _loc2_ = §@#B§(§4#;§.singleton.dataModel);
            _loc3_ = _loc2_.§9!N§.id;
            _loc4_ = 0;
            _loc5_ = -1;
            _loc6_ = 0;
            _loc7_ = 0;
            for each(_loc8_ in this.§?-§.§'"?§.data)
            {
               if(_loc10_ = _loc8_ as §4#G§)
               {
                  _loc4_++;
                  if(_loc10_.userId == _loc3_)
                  {
                     _loc5_ = _loc10_.§9!<§;
                     _loc7_ = _loc10_.§]"q§;
                  }
               }
            }
            for each(_loc9_ in _loc2_.§!!C§.levelNames)
            {
               _loc6_ += _loc2_.userProgress.getStarsForLevel(_loc9_,_loc2_.§!!C§.getScoreForLevel(_loc9_));
            }
            _loc1_.txtRank.text = _loc5_ == -1 || _loc7_ == 0 ? "-" : _loc5_.toString() + "/" + _loc4_;
            _loc1_.txtStars.text = _loc6_.toString() + "/15";
            _loc1_.txtScore.text = _loc7_.toString();
         }
      }
      
      private function §;!>§(param1:Boolean) : void
      {
         var _loc2_:MovieClip = §@;§.getItemByName("Button_Tournaments").mClip;
         _loc2_.gotoAndStop(!!param1 ? "locked" : "unlocked");
         (§@;§.getItemByName("Button_Tournaments") as §1"z§).setComponentState(!!param1 ? §1"z§.COMPONENT_STATE_DISABLED : §1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
         _loc2_.mouseEnabled = !param1;
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         switch(param2)
         {
            case "SHOP":
               §?!r§.§"#_§("misc_menubuttonproceed_1");
               §9#B§(§4#;§.singleton.popupManager).§@"3§();
               break;
            case "TOURNAMENTS":
               if(this.§#F§)
               {
                  §?!r§.§"#_§("misc_menubuttonproceed_1");
                  § g§(§6!W§.§^!7§,true);
               }
               break;
            case "TOURNAMENTS_OVER":
               if(this.§#F§)
               {
                  this.§2#+§ = true;
                  this.§&!W§();
               }
               break;
            case "TOURNAMENTS_OUT":
               this.§2#+§ = false;
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      override protected function navigateToToons() : void
      {
         if(§4#;§.singleton.§>!Z§())
         {
            §4#;§.singleton.§5"q§();
         }
         navigateToURL(new URLRequest(§@U§),"_blank");
      }
      
      override protected function navigateToFriends() : void
      {
         var _loc1_:FriendsPromoPopup = new FriendsPromoPopup(§`"W§.§+v§,§+5§.TOP);
         §4#;§.singleton.popupManager.openPopup(_loc1_,true,true,true);
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§&!W§();
      }
      
      private function get §#F§() : Boolean
      {
         return §7q§(§4#;§.singleton.dataModel.userProgress).§#F§;
      }
      
      private function §&!W§() : void
      {
         if(this.§2#+§ && this.§1"i§.currentFrame == this.§>";§ - 2)
         {
            this.§1"i§.gotoAndPlay(§ "B§);
         }
      }
      
      private function loadLevel(param1:String = "") : void
      {
         if(param1.length > 0)
         {
            §+!b§.loadLevel(param1);
            § g§(StateCutScene.§^!7§);
            §6"k§.§@!1§ = true;
            return;
         }
         this.§!!v§ = new FileReference();
         this.§!!v§.addEventListener(Event.SELECT,this.§0!%§);
         this.§!!v§.browse([new FileFilter("Level files","*.lua")]);
      }
      
      private function §0!%§(param1:Event) : void
      {
         this.§!!v§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§!!v§.load();
      }
      
      private function onComplete(param1:Event) : void
      {
         DConsole.hide();
         §[#;§(§+!b§).§<"s§(this.§!!v§.data.toString());
         §+!b§.loadLevel("-1");
         § g§(StateCutScene.§^!7§);
         §6"k§.§@!1§ = true;
         §+"k§.§-!w§ = this.§-!w§;
      }
      
      private function §-!w§(param1:Error) : void
      {
         Logging.§,S§(§@!m§).error(param1.name,param1.message);
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.T)
         {
            §+!b§.selectEpisode(4);
            § g§(§+#?§.§^!7§,true);
            §6"k§.§@!1§ = true;
         }
      }
   }
}
