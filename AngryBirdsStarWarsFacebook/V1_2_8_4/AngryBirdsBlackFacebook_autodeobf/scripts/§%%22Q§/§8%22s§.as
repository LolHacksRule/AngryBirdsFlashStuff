package §%"Q§
{
   import §"!H§.§6!M§;
   import §&!j§.§5#+§;
   import §+"Y§.§4#%§;
   import §+"Y§.FriendsPromoPopup;
   import §+"Y§.GenericMessagePopup;
   import §+"Y§.§^!S§;
   import §+"x§.§2!s§;
   import §+"x§.§3!§;
   import §0"k§.§&L§;
   import §0"k§.§6!U§;
   import §3!j§.TournamentResultsPopup;
   import §8!h§.§%"z§;
   import §8!h§.§-V§;
   import §8"'§.§4!T§;
   import §8"'§.§8§;
   import §9"U§.§!!7§;
   import §9"U§.§7"1§;
   import §9"U§.§;9§;
   import §9"U§.§[!s§;
   import §;!3§.§^"z§;
   import §`"1§.§=Q§;
   import §`"n§.§""r§;
   import com.angrybirds.§<!J§;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import §null §.§1"o§;
   import §null §.§5#§;
   
   public class §8"s§ extends §&!I§
   {
      
      private static const §%?§:String = "start_hover_tournament_button";
      
      private static const §?"b§:String = "http://www.angrybirds.com/toons?ref=abswfb";
       
      
      private var §9"P§:§[!s§;
      
      private var §'G§:MovieClip;
      
      private var §,!5§:int;
      
      private var §%!h§:Boolean;
      
      private var §1"c§:§8#2§;
      
      private var §5z§:Boolean = true;
      
      public function §8"s§(param1:§5#§, param2:§5#+§, param3:Boolean, param4:String = "ChapterSelectionState")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§9"P§ = §7"1§(§4"#§.singleton.dataModel).§1z§;
         var _loc1_:int = §7"1§(§4"#§.singleton.dataModel).§1z§.§,"z§;
         var _loc2_:MovieClip = §^!b§.getItemByName("Button_Tournaments").mClip.content;
         if(_loc1_ == 1)
         {
            _loc2_.tournamentAnimation2.visible = false;
            _loc2_.tournamentAnimation2.stop();
            this.§'G§ = _loc2_.tournamentAnimation1;
         }
         else
         {
            _loc2_.tournamentAnimation1.visible = false;
            _loc2_.tournamentAnimation1.stop();
            this.§'G§ = _loc2_.tournamentAnimation2;
         }
         this.§,!5§ = this.§5"$§(this.§'G§,§%?§);
         this.§%!h§ = false;
      }
      
      protected function §5"$§(param1:MovieClip, param2:String) : int
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
         var _loc2_:§3!§ = null;
         super.activate(param1);
         this.§%!h§ = false;
         §throw§(§<!J§.§#!L§).§^!O§.§?a§ = false;
         §throw§(§<!J§.§#!L§).§?"T§.showTotalScores();
         this.§9"P§.addEventListener(§[!s§.§%"#§,this.§#"@§);
         this.§9"P§.addEventListener(§[!s§.§@K§,this.§#"@§);
         if(this.§9"P§.§9"K§ && !this.§9"P§.isLoading)
         {
            this.§9"P§.reset();
         }
         else if(this.§9"P§.lastResult)
         {
            _loc2_ = new TournamentResultsPopup(this.§9"P§.lastResult,§^!S§.§'"c§,§2!s§.TOP);
            §4"#§.singleton.popupManager.openPopup(_loc2_,true,true,true);
            this.§9"P§.§[!V§();
            §7"1§(§4"#§.singleton.dataModel).§,!6§.§extends§();
         }
         this.§9"P§.§3"&§();
         this.§=",§();
         this.§6!L§(!this.§@"p§);
      }
      
      override protected function onTransitionComplete(param1:String) : void
      {
         var _loc2_:Date = null;
         var _loc3_:Date = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:§!!7§ = null;
         var _loc7_:§3!§ = null;
         super.onTransitionComplete(param1);
         if(param1 == "in")
         {
            if(§7"1§(§4"#§.singleton.dataModel).§@J§)
            {
               if((_loc5_ = §7"1§(§4"#§.singleton.dataModel).§@J§.id).length > 0)
               {
                  if(!§4"#§.singleton.dataModel.userProgress.hasTutorialBeenSeen(_loc5_))
                  {
                     §4"#§.singleton.dataModel.userProgress.saveTutorialSeen(_loc5_);
                     _loc6_ = §7"1§(§4"#§.singleton.dataModel).§@J§;
                     §4"#§.singleton.popupManager.openPopup(new GenericMessagePopup(_loc6_.title,_loc6_.message,§^!S§.§'"c§,§2!s§.DEFAULT),true,true,true);
                  }
               }
            }
            if(§7"1§(§4"#§.singleton.dataModel).§ "_§.§"$§ > 0)
            {
               if(this.§5z§)
               {
                  this.§5z§ = false;
                  _loc7_ = new §6!M§(§'""§ as §1"o§,§^!S§.§'"c§,§2!s§.DEFAULT);
                  §4"#§.singleton.popupManager.openPopup(_loc7_,true,true,true);
               }
            }
            _loc2_ = new Date();
            _loc3_ = new Date(_loc2_.fullYear,0,1);
            _loc3_.date -= (_loc3_.day + 6) % 7;
            if((_loc4_ = Math.floor((_loc2_.time - _loc3_.time) / (1000 * 60 * 60 * 24 * 7))) % 2 == 0 && (_loc2_.day == 2 || _loc2_.day == 4 || _loc2_.day == 6) || _loc4_ % 2 != 0 && (_loc2_.day == 0 || _loc2_.day == 3 || _loc2_.day == 5))
            {
               if(!this.§#A§(§;9§.§6!n§,1000 * 60 * 60 * 12))
               {
                  §4"#§.singleton.popupManager.openPopup(new §^"z§(§^!S§.§'"c§,§2!s§.DEFAULT,§^"z§.§&E§,true),true,true,true);
                  §7"1§(§4"#§.singleton.dataModel).§!"H§.§7"H§(§;9§.§6!n§);
               }
            }
            else if(_loc4_ % 2 == 0 && (_loc2_.day == 0 || _loc2_.day == 3 || _loc2_.day == 5) || _loc4_ % 2 != 0 && (_loc2_.day == 2 || _loc2_.day == 4 || _loc2_.day == 6))
            {
               if(!this.§#A§(§;9§.§&A§,1000 * 60 * 60 * 12))
               {
                  §4"#§.singleton.popupManager.openPopup(new §^"z§(§^!S§.§'"c§,§2!s§.DEFAULT,§^"z§.§?!1§,true),true,true,true);
                  §7"1§(§4"#§.singleton.dataModel).§!"H§.§7"H§(§;9§.§&A§);
               }
            }
         }
      }
      
      private function §#A§(param1:String, param2:Number) : Boolean
      {
         var _loc3_:Number = §7"1§(§4"#§.singleton.dataModel).§!"H§.§`"x§(param1);
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
      
      private function §#"@§(param1:Event) : void
      {
         this.§=",§();
      }
      
      override public function deActivate() : void
      {
         this.§%!h§ = false;
         this.§9"P§.removeEventListener(§[!s§.§%"#§,this.§#"@§);
         this.§9"P§.removeEventListener(§[!s§.§@K§,this.§#"@§);
         super.deActivate();
      }
      
      private function §=",§() : void
      {
         var _loc2_:§7"1§ = null;
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:§&L§ = null;
         var _loc9_:String = null;
         var _loc10_:§6!U§ = null;
         var _loc1_:MovieClip = §^!b§.getItemByName("Button_Tournaments").mClip.tournamentInfo;
         if(this.§9"P§.isLoading)
         {
            _loc1_.txtRank.text = "-";
            _loc1_.txtStars.text = "-";
         }
         else
         {
            _loc2_ = §7"1§(§4"#§.singleton.dataModel);
            _loc3_ = _loc2_.§#"_§.id;
            _loc4_ = 0;
            _loc5_ = -1;
            _loc6_ = 0;
            _loc7_ = 0;
            for each(_loc8_ in this.§9"P§.§]!A§.data)
            {
               if(_loc10_ = _loc8_ as §6!U§)
               {
                  _loc4_++;
                  if(_loc10_.userId == _loc3_)
                  {
                     _loc5_ = _loc10_.§5!b§;
                     _loc7_ = _loc10_.§%D§;
                  }
               }
            }
            for each(_loc9_ in _loc2_.§1z§.levelNames)
            {
               _loc6_ += _loc2_.userProgress.getStarsForLevel(_loc9_,_loc2_.§1z§.getScoreForLevel(_loc9_));
            }
            _loc1_.txtRank.text = _loc5_ == -1 || _loc7_ == 0 ? "-" : _loc5_.toString() + "/" + _loc4_;
            _loc1_.txtStars.text = _loc6_.toString() + "/15";
            _loc1_.txtScore.text = _loc7_.toString();
         }
      }
      
      private function §6!L§(param1:Boolean) : void
      {
         var _loc2_:MovieClip = §^!b§.getItemByName("Button_Tournaments").mClip;
         _loc2_.gotoAndStop(!!param1 ? "locked" : "unlocked");
         (§^!b§.getItemByName("Button_Tournaments") as §%"z§).setComponentState(!!param1 ? §%"z§.COMPONENT_STATE_DISABLED : §%"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
         _loc2_.mouseEnabled = !param1;
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§-V§) : void
      {
         switch(param2)
         {
            case "SHOP":
               §=Q§.§`!A§("misc_menubuttonproceed_1");
               §4#%§(§4"#§.singleton.popupManager).§6"Z§();
               break;
            case "TOURNAMENTS":
               if(this.§@"p§)
               {
                  §=Q§.§`!A§("misc_menubuttonproceed_1");
                  §`0§(§4!T§.§-!U§,true);
               }
               break;
            case "TOURNAMENTS_OVER":
               if(this.§@"p§)
               {
                  this.§%!h§ = true;
                  this.§;!W§();
               }
               break;
            case "TOURNAMENTS_OUT":
               this.§%!h§ = false;
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      override protected function navigateToToons() : void
      {
         if(§4"#§.singleton.§!n§())
         {
            §4"#§.singleton.§^L§();
         }
         navigateToURL(new URLRequest(§?"b§),"_blank");
      }
      
      override protected function navigateToFriends() : void
      {
         var _loc1_:FriendsPromoPopup = new FriendsPromoPopup(§^!S§.§'"c§,§2!s§.TOP);
         §4"#§.singleton.popupManager.openPopup(_loc1_,true,true,true);
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§;!W§();
      }
      
      private function get §@"p§() : Boolean
      {
         return §""r§(§4"#§.singleton.dataModel.userProgress).§@"p§;
      }
      
      private function §;!W§() : void
      {
         if(this.§%!h§ && this.§'G§.currentFrame == this.§,!5§ - 2)
         {
            this.§'G§.gotoAndPlay(§%?§);
         }
      }
   }
}
