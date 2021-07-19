package § "v§
{
   import §!"e§.§`"W§;
   import §+!!§.§9"i§;
   import §+!c§.§5"$§;
   import §+D§.§^"m§;
   import §,"N§.§@#B§;
   import §1!i§.§6"#§;
   import §7!$§.§&$§;
   import §7"a§.§1"R§;
   import §;"Y§.§&#X§;
   import §;"Y§.§1"z§;
   import §="2§.§?!r§;
   import §="V§.§""v§;
   import §[!m§.§+5§;
   import §[!m§.AbstractPopup;
   import §[!m§.§[!j§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class TournamentResultsPopup extends AbstractPopup
   {
      
      private static var §@W§:Boolean = true;
      
      private static var §'=§:Boolean = false;
       
      
      private var §?#7§:Object;
      
      private var §9A§:Object;
      
      private var §%"]§:Vector.<§5"$§>;
      
      private var §3"t§:Boolean;
      
      private var §&!'§:Boolean;
      
      private var §3!S§:MovieClip;
      
      private var §'I§:MovieClip;
      
      private var §%Z§:MovieClip;
      
      private var §6"6§:MovieClip;
      
      private var §2"h§:§3?§;
      
      private var §&#a§:MovieClip;
      
      private var §1"#§:MovieClip;
      
      private var §0o§:MovieClip;
      
      private var §;!q§:MovieClip;
      
      private var §7L§:MovieClip;
      
      private var §,#L§:MovieClip;
      
      private var §'#Q§:MovieClip;
      
      private var §>!G§:TextField;
      
      private var §]I§:§^"m§;
      
      private var §[#D§:§3?§;
      
      private var §4U§:§3?§;
      
      private var §1#O§:int;
      
      private var §5!P§:Object;
      
      public function TournamentResultsPopup(param1:Object, param2:int, param3:int, param4:String = "TournamentResultsPopup")
      {
         this.§9A§ = param1;
         super(param2,param3,§&$§.§@8§.Popups.Popup_TournamentResults[0],param4);
      }
      
      public static function reset() : void
      {
         §'=§ = false;
         §@W§ = true;
      }
      
      public static function §6"A§(param1:MovieClip, param2:int) : void
      {
         switch(param2)
         {
            case 1:
               param1.gotoAndStop("Gold");
               break;
            case 2:
               param1.gotoAndStop("Silver");
               break;
            case 3:
               param1.gotoAndStop("Bronze");
               break;
            default:
               param1.gotoAndStop("Empty");
               (param1.textRank as TextField).text = param2 + "th";
         }
      }
      
      override protected function init() : void
      {
         super.init();
         this.§3"t§ = false;
         this.§&!'§ = false;
         this.§3!S§ = §^c§.getItemByName("Container_Content").mClip;
         this.§&#a§ = §^c§.getItemByName("Container_Top_Battle").mClip;
         this.§1"#§ = §^c§.getItemByName("Container_Bottom_Battle").mClip;
         this.§'I§ = §^c§.getItemByName("Container_Top_Results").mClip;
         this.§%Z§ = §^c§.getItemByName("Container_Bottom_Results").mClip;
         this.§6"6§ = this.§%Z§["Container_Bottom_Results_Content"];
         this.§0o§ = this.§1"#§["Container_Bottom_Battle_Content"];
         this.§2"h§ = new §3?§(this.§6"6§["Container_Static_Avatar"],false);
         this.§[#D§ = new §3?§(this.§&#a§["Container_Avatar_Left"]);
         this.§4U§ = new §3?§(this.§&#a§["Container_Avatar_Right"]);
         this.§;!q§ = this.§&#a§["trophy"];
         this.§7L§ = this.§&#a§["MovieClip_Versus"];
         this.§,#L§ = this.§&#a§["MovieClip_Few_Coins"];
         this.§'#Q§ = this.§&#a§["MovieClip_Many_Coins"];
         this.§>!G§ = this.§0o§["txtReward"];
         this.§&#a§.visible = false;
         this.§1"#§.visible = false;
         this.§'I§.visible = false;
         this.§%Z§.visible = false;
         this.§?!J§();
         this.§?#7§ = this.§%!S§();
         §@#B§(§4#;§.singleton.dataModel).§1!f§.§""i§();
         §1"R§.§%!E§.§["u§(this.§9A§.players);
         §1"R§.§%!E§.addEventListener(§1"R§.CACHING_COMPLETE,this.§9"2§);
         §""v§.addCallback("tournamentRankShared",this.§-0§);
      }
      
      private function §`<§() : void
      {
         this.§'I§.visible = false;
         this.§%Z§.visible = false;
         this.§&#a§.visible = true;
         this.§1"#§.visible = true;
         this.§1#O§ = 0;
         this.§9#E§();
         this.§1"#§.gotoAndStop("outro_start");
         this.§[#D§.setData(this.§?#7§);
         this.§[#D§.§1!Q§(int.MAX_VALUE);
         this.§4U§.setData(this.§5!P§);
         this.§[#D§.§2"1§();
         this.§4U§.§2"1§();
         this.§7L§.gotoAndPlay("intro_start");
         this.§;!q§.visible = false;
         this.§]I§ = §^c§.getItemByName("Button_Claim") as §^"m§;
         this.§]I§.setComponentState(§1"z§.COMPONENT_STATE_DISABLED);
         this.§[#D§.addEventListener(§3?§.EVENT_ANIMATION_INTRO_OVER,this.§!#-§);
         this.§[#D§.addEventListener(§3?§.EVENT_ANIMATION_ATTACK_OVER,this.§8#T§);
         this.§[#D§.addEventListener(§3?§.EVENT_ANIMATION_RETURN_TO_DEFAULT_POSITION_OVER,this.§9S§);
         this.§[#D§.addEventListener(§3?§.EVENT_ANIMATION_GO_TO_CENTER_OVER,this.§;5§);
         this.§[#D§.addEventListener(§3?§.EVENT_ANIMATION_ATTACK_INVOKES_GET_ATTACKED,this.§<"z§);
         this.§4U§.addEventListener(§3?§.EVENT_ANIMATION_GET_ATTACKED_OVER,this.§4!c§);
      }
      
      private function §3!J§() : void
      {
         if(this.§3"t§ && this.§&!'§)
         {
            this.§>T§();
            if(this.§5!P§ && this.§!#+§() && !§'=§)
            {
               §'=§ = true;
               this.§`<§();
            }
            else
            {
               this.§-"y§();
            }
         }
      }
      
      private function §!!3§() : void
      {
         this.§1"#§.gotoAndPlay("outro_start");
         this.§1"#§.addEventListener(Event.ENTER_FRAME,this.§%V§);
         this.§[#D§.§+`§();
      }
      
      private function §-"y§() : void
      {
         this.§&#a§.visible = false;
         this.§2"h§.setData(this.§?#7§);
         this.§'I§.visible = true;
         this.§%Z§.visible = true;
         this.§'I§.gotoAndPlay("intro_start");
         this.§%Z§.gotoAndPlay("intro_start");
         this.§3#H§();
         this.§&#Q§();
         this.§]#1§();
         this.§]#O§();
         this.§7T§();
      }
      
      private function §?!J§() : void
      {
         var _loc1_:MovieClip = §^c§.getItemByName("MovieClip_ContentMask").mClip;
         this.§3!S§.mask = _loc1_;
      }
      
      private function §^!S§() : void
      {
         this.§6"6§.txtReward.text = "x" + this.§9A§.prizes[0].quantity;
      }
      
      private function §&#Q§() : void
      {
         §6"A§(this.§6"6§.trophy,this.§?#7§.r);
      }
      
      private function §]#1§() : void
      {
         if(this.§?#7§.r > 3)
         {
            §@W§ = false;
         }
         this.§#x§();
      }
      
      private function §]#O§() : void
      {
         this.§6"6§.txtScore.text = this.§?#7§.p;
      }
      
      private function §7T§() : void
      {
         var _loc1_:MovieClip = this.§6"6§["star"];
         _loc1_.gotoAndStop(this.§?#7§.s > 0 ? "true" : "false");
         this.§6"6§.txtStars.text = this.§?#7§.s + "/" + this.§9A§.maxStars;
      }
      
      private function §3#H§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:TextField = null;
         var _loc4_:§5"$§ = null;
         this.§%"]§ = new Vector.<§5"$§>();
         var _loc1_:int = 0;
         while(_loc1_ < 3)
         {
            _loc2_ = this.§'I§["p" + (_loc1_ + 1)]["p" + (_loc1_ + 1)];
            if(_loc1_ < this.§9A§.players.length)
            {
               _loc2_.txtName.text = this.§9A§.players[_loc1_].n;
               _loc2_.txtScore.text = this.§9A§.players[_loc1_].p;
               _loc3_ = _loc2_.txtName;
               §6"#§.§7s§(_loc3_,int(_loc3_.getTextFormat().size),_loc3_.width,_loc3_.height);
               (_loc2_.txtName as TextField).mouseEnabled = false;
               (_loc2_.txtScore as TextField).mouseEnabled = false;
               _loc4_ = new §5"$§(this.§9A§.players[_loc1_].u);
               _loc2_.profile.addChild(_loc4_);
               _loc4_.scaleY = 1.08;
               _loc4_.scaleX = 1.08;
               this.§%"]§.push(_loc4_);
            }
            else
            {
               _loc2_.visible = false;
            }
            _loc1_++;
         }
      }
      
      private function §#x§() : void
      {
         var _loc1_:String = §1"z§.COMPONENT_STATE_ACTIVE_DEFAULT;
         if(!§@W§)
         {
            _loc1_ = §1"z§.COMPONENT_STATE_DISABLED;
         }
         (§^c§.getItemByName("Button_Celebrate") as §1"z§).setComponentState(_loc1_);
      }
      
      private function §9#E§() : void
      {
         this.§>!G§.text = "x" + this.§1#O§;
      }
      
      private function §%!S§() : Object
      {
         var _loc1_:Object = null;
         var _loc2_:Object = null;
         for each(_loc2_ in this.§9A§.players)
         {
            if(_loc2_.u == §@#B§(§4#;§.singleton.dataModel).§9!N§.id)
            {
               _loc1_ = _loc2_;
            }
         }
         if(!_loc1_)
         {
            throw new Error("Player not found in previous tournament results.");
         }
         return _loc1_;
      }
      
      private function §>T§() : void
      {
         var _loc1_:String = null;
         if(this.§5!P§)
         {
            _loc1_ = this.§5!P§.u;
         }
         var _loc2_:int = this.§9A§.players.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§9A§.players[_loc2_].u != this.§?#7§.u)
            {
               if(!this.§5!P§ || this.§5!P§.r > this.§9A§.players[_loc2_].r)
               {
                  this.§5!P§ = this.§9A§.players[_loc2_];
                  break;
               }
            }
            _loc2_--;
         }
         if(this.§5!P§ && _loc1_ == this.§5!P§.u)
         {
            this.§5!P§ = null;
         }
      }
      
      private function §!#+§() : Boolean
      {
         if(this.§5!P§ && this.§?#7§)
         {
            if(this.§5!P§.r > this.§?#7§.r)
            {
               return true;
            }
         }
         return false;
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         var _loc4_:§[!j§ = null;
         switch(param2)
         {
            case "CLAIM":
               §?!r§.§"#_§("misc_menubuttonproceed_1");
               this.§!!3§();
               break;
            case "CHALLENGE":
               §?!r§.§"#_§("misc_menubuttonproceed_1");
               _loc4_ = new §9"i§(§`"W§.§+v§,§+5§.TOP,§9"i§.§8i§);
               §4#;§.singleton.popupManager.openPopup(_loc4_,true,true,false);
               break;
            case "CELEBRATE":
               §?!r§.§"#_§("misc_menubuttonproceed_1");
               §""v§.§&R§("shareTournamentRank",this.§?#7§.r,this.§?#7§.p);
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      override protected function onTransitionInComplete() : void
      {
         super.onTransitionInComplete();
         this.§3"t§ = true;
         this.§3!J§();
      }
      
      private function §9"2§(param1:Event) : void
      {
         §1"R§.§%!E§.removeEventListener(§1"R§.CACHING_COMPLETE,this.§9"2§);
         this.§&!'§ = true;
         this.§3!J§();
      }
      
      private function §-0§() : void
      {
         §@W§ = false;
         this.§#x§();
      }
      
      private function §!#-§(param1:Event) : void
      {
         this.§[#D§.§ "f§();
         this.§2"H§();
      }
      
      private function §8#T§(param1:Event) : void
      {
         this.§[#D§.§3"m§();
         this.§;!q§.visible = true;
         §6"A§(this.§;!q§,this.§5!P§.r - 1);
         this.§[#D§.§1!Q§(this.§5!P§.r - 1);
         this.§>T§();
      }
      
      private function §2"H§() : void
      {
         if(this.§1#O§ < 40)
         {
            this.§1#O§ += §@#B§(§4#;§.singleton.dataModel).§!!C§.prizePerFriend;
            this.§,#L§.gotoAndPlay("start");
         }
         this.§9#E§();
      }
      
      private function §""k§() : void
      {
         if(this.§?#7§.r <= 3)
         {
            this.§1#O§ += §@#B§(§4#;§.singleton.dataModel).§!!C§.prizeValues[this.§?#7§.r - 1];
         }
         else
         {
            this.§1#O§ += §@#B§(§4#;§.singleton.dataModel).§!!C§.prizeValues[3];
         }
         this.§'#Q§.gotoAndPlay("start");
         this.§9#E§();
      }
      
      private function §4!c§(param1:Event) : void
      {
         if(this.§5!P§)
         {
            this.§4U§.setData(this.§5!P§);
            this.§4U§.§;n§();
         }
      }
      
      private function §9S§(param1:Event) : void
      {
         if(!this.§5!P§)
         {
            this.§[#D§.§%u§();
         }
         else if(this.§5!P§ && this.§!#+§())
         {
            this.§[#D§.§ "f§();
            this.§2"H§();
         }
         else
         {
            this.§[#D§.§%u§();
            this.§4U§.§2!I§();
         }
      }
      
      private function §;5§(param1:Event) : void
      {
         this.§[#D§.removeEventListener(§3?§.EVENT_ANIMATION_GO_TO_CENTER_OVER,this.§;5§);
         this.§]I§.setComponentState(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§""k§();
         §6"A§(this.§;!q§,this.§?#7§.r);
      }
      
      private function §<"z§(param1:Event) : void
      {
         this.§4U§.§["C§();
      }
      
      private function §%V§(param1:Event) : void
      {
         if(this.§1"#§.visible && this.§1"#§.currentFrame == this.§1"#§.totalFrames - 1)
         {
            this.§-"y§();
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:§5"$§ = null;
         if(this.§%"]§)
         {
            for each(_loc1_ in this.§%"]§)
            {
               _loc1_.dispose();
            }
            this.§%"]§.splice(0,this.§%"]§.length);
            this.§%"]§ = null;
         }
         §""v§.§&z§("tournamentRankShared",this.§-0§);
      }
   }
}
