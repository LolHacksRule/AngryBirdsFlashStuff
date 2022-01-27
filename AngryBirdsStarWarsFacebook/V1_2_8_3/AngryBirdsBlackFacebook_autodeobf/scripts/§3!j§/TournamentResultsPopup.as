package §3!j§
{
   import §+"Y§.§^!S§;
   import §+"x§.§2!s§;
   import §+"x§.§3!§;
   import §+"x§.AbstractPopup;
   import §+&§.§>`§;
   import §+d§.§2"I§;
   import §5"Q§.§5"s§;
   import §8!h§.§%"z§;
   import §8!h§.§-V§;
   import §9"U§.§7"1§;
   import §;!3§.§^"z§;
   import §=Z§.§;g§;
   import §[!H§.§^x§;
   import §`"1§.§=Q§;
   import §`"]§.§ §;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class TournamentResultsPopup extends AbstractPopup
   {
      
      private static var §`"S§:Boolean = true;
      
      private static var §,!A§:Boolean = false;
       
      
      private var §&"i§:Object;
      
      private var §["D§:Object;
      
      private var §^#5§:Vector.<§ #2§>;
      
      private var §6!x§:Boolean;
      
      private var § "W§:Boolean;
      
      private var §3!#§:MovieClip;
      
      private var §%0§:MovieClip;
      
      private var §!""§:MovieClip;
      
      private var §7y§:MovieClip;
      
      private var §>!9§:§@"b§;
      
      private var §%"I§:MovieClip;
      
      private var §""[§:MovieClip;
      
      private var §8!f§:MovieClip;
      
      private var §>#"§:MovieClip;
      
      private var §'!?§:MovieClip;
      
      private var §#^§:MovieClip;
      
      private var §^U§:MovieClip;
      
      private var §?"0§:TextField;
      
      private var §^"s§:§;g§;
      
      private var §3"6§:§@"b§;
      
      private var §+"B§:§@"b§;
      
      private var §<!w§:int;
      
      private var §=#-§:Object;
      
      public function TournamentResultsPopup(param1:Object, param2:int, param3:int, param4:String = "TournamentResultsPopup")
      {
         this.§["D§ = param1;
         super(param2,param3,§^x§.§ '§.Popups.Popup_TournamentResults[0],param4);
      }
      
      public static function reset() : void
      {
         §,!A§ = false;
         §`"S§ = true;
      }
      
      public static function §+"p§(param1:MovieClip, param2:int) : void
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
         this.§6!x§ = false;
         this.§ "W§ = false;
         this.§3!#§ = §[#,§.getItemByName("Container_Content").mClip;
         this.§%"I§ = §[#,§.getItemByName("Container_Top_Battle").mClip;
         this.§""[§ = §[#,§.getItemByName("Container_Bottom_Battle").mClip;
         this.§%0§ = §[#,§.getItemByName("Container_Top_Results").mClip;
         this.§!""§ = §[#,§.getItemByName("Container_Bottom_Results").mClip;
         this.§7y§ = this.§!""§["Container_Bottom_Results_Content"];
         this.§8!f§ = this.§""[§["Container_Bottom_Battle_Content"];
         this.§>!9§ = new §@"b§(this.§7y§["Container_Static_Avatar"],false);
         this.§3"6§ = new §@"b§(this.§%"I§["Container_Avatar_Left"]);
         this.§+"B§ = new §@"b§(this.§%"I§["Container_Avatar_Right"]);
         this.§>#"§ = this.§%"I§["trophy"];
         this.§'!?§ = this.§%"I§["MovieClip_Versus"];
         this.§#^§ = this.§%"I§["MovieClip_Few_Coins"];
         this.§^U§ = this.§%"I§["MovieClip_Many_Coins"];
         this.§?"0§ = this.§8!f§["txtReward"];
         this.§%"I§.visible = false;
         this.§""[§.visible = false;
         this.§%0§.visible = false;
         this.§!""§.visible = false;
         this.§'!W§();
         this.§&"i§ = this.§ !F§();
         §7"1§(§4"#§.singleton.dataModel).§,!6§.§extends§();
         §>`§.§!6§.§]!v§(this.§["D§.players);
         §>`§.§!6§.addEventListener(§>`§.CACHING_COMPLETE,this.§^0§);
         §5"s§.addCallback("tournamentRankShared",this.§7"m§);
      }
      
      private function §[!M§() : void
      {
         this.§%0§.visible = false;
         this.§!""§.visible = false;
         this.§%"I§.visible = true;
         this.§""[§.visible = true;
         this.§<!w§ = 0;
         this.§97§();
         this.§""[§.gotoAndStop("outro_start");
         this.§3"6§.§2x§(this.§&"i§);
         this.§3"6§.§2"J§(int.MAX_VALUE);
         this.§+"B§.§2x§(this.§=#-§);
         this.§3"6§.§!!5§();
         this.§+"B§.§!!5§();
         this.§'!?§.gotoAndPlay("intro_start");
         this.§>#"§.visible = false;
         this.§^"s§ = §[#,§.getItemByName("Button_Claim") as §;g§;
         this.§^"s§.setComponentState(§%"z§.COMPONENT_STATE_DISABLED);
         this.§3"6§.addEventListener(§@"b§.EVENT_ANIMATION_INTRO_OVER,this.§["M§);
         this.§3"6§.addEventListener(§@"b§.EVENT_ANIMATION_ATTACK_OVER,this.§`"N§);
         this.§3"6§.addEventListener(§@"b§.EVENT_ANIMATION_RETURN_TO_DEFAULT_POSITION_OVER,this.§?#$§);
         this.§3"6§.addEventListener(§@"b§.EVENT_ANIMATION_GO_TO_CENTER_OVER,this.§73§);
         this.§3"6§.addEventListener(§@"b§.EVENT_ANIMATION_ATTACK_INVOKES_GET_ATTACKED,this.§-l§);
         this.§+"B§.addEventListener(§@"b§.EVENT_ANIMATION_GET_ATTACKED_OVER,this.§+!e§);
      }
      
      private function §2"^§() : void
      {
         if(this.§6!x§ && this.§ "W§)
         {
            this.§33§();
            if(this.§=#-§ && this.§2^§() && !§,!A§)
            {
               §,!A§ = true;
               this.§[!M§();
            }
            else
            {
               this.§&!M§();
            }
         }
      }
      
      private function §7"`§() : void
      {
         this.§""[§.gotoAndPlay("outro_start");
         this.§""[§.addEventListener(Event.ENTER_FRAME,this.§%#!§);
         this.§3"6§.§[x§();
      }
      
      private function §&!M§() : void
      {
         this.§%"I§.visible = false;
         this.§>!9§.§2x§(this.§&"i§);
         this.§%0§.visible = true;
         this.§!""§.visible = true;
         this.§%0§.gotoAndPlay("intro_start");
         this.§!""§.gotoAndPlay("intro_start");
         this.§=R§();
         this.§"K§();
         this.§6!&§();
         this.§&!<§();
         this.§'!`§();
      }
      
      private function §'!W§() : void
      {
         var _loc1_:MovieClip = §[#,§.getItemByName("MovieClip_ContentMask").mClip;
         this.§3!#§.mask = _loc1_;
      }
      
      private function §#"`§() : void
      {
         this.§7y§.txtReward.text = "x" + this.§["D§.prizes[0].quantity;
      }
      
      private function §"K§() : void
      {
         §+"p§(this.§7y§.trophy,this.§&"i§.r);
      }
      
      private function §6!&§() : void
      {
         if(this.§&"i§.r > 3)
         {
            §`"S§ = false;
         }
         this.§48§();
      }
      
      private function §&!<§() : void
      {
         this.§7y§.txtScore.text = this.§&"i§.p;
      }
      
      private function §'!`§() : void
      {
         var _loc1_:MovieClip = this.§7y§["star"];
         _loc1_.gotoAndStop(this.§&"i§.s > 0 ? "true" : "false");
         this.§7y§.txtStars.text = this.§&"i§.s + "/" + this.§["D§.maxStars;
      }
      
      private function §=R§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:TextField = null;
         var _loc4_:§ #2§ = null;
         this.§^#5§ = new Vector.<§ #2§>();
         var _loc1_:int = 0;
         while(_loc1_ < 3)
         {
            _loc2_ = this.§%0§["p" + (_loc1_ + 1)]["p" + (_loc1_ + 1)];
            if(_loc1_ < this.§["D§.players.length)
            {
               _loc2_.txtName.text = this.§["D§.players[_loc1_].n;
               _loc2_.txtScore.text = this.§["D§.players[_loc1_].p;
               _loc3_ = _loc2_.txtName;
               §2"I§.§;"%§(_loc3_,int(_loc3_.getTextFormat().size),_loc3_.width,_loc3_.height);
               (_loc2_.txtName as TextField).mouseEnabled = false;
               (_loc2_.txtScore as TextField).mouseEnabled = false;
               _loc4_ = new § #2§(this.§["D§.players[_loc1_].u);
               _loc2_.profile.addChild(_loc4_);
               _loc4_.scaleY = 1.08;
               _loc4_.scaleX = 1.08;
               this.§^#5§.push(_loc4_);
            }
            else
            {
               _loc2_.visible = false;
            }
            _loc1_++;
         }
      }
      
      private function §48§() : void
      {
         var _loc1_:String = §%"z§.COMPONENT_STATE_ACTIVE_DEFAULT;
         if(!§`"S§)
         {
            _loc1_ = §%"z§.COMPONENT_STATE_DISABLED;
         }
         (§[#,§.getItemByName("Button_Celebrate") as §%"z§).setComponentState(_loc1_);
      }
      
      private function §97§() : void
      {
         this.§?"0§.text = "x" + this.§<!w§;
      }
      
      private function § !F§() : Object
      {
         var _loc1_:Object = null;
         var _loc2_:Object = null;
         for each(_loc2_ in this.§["D§.players)
         {
            if(_loc2_.u == §7"1§(§4"#§.singleton.dataModel).§#"_§.id)
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
      
      private function §33§() : void
      {
         var _loc1_:String = null;
         if(this.§=#-§)
         {
            _loc1_ = this.§=#-§.u;
         }
         var _loc2_:int = this.§["D§.players.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§["D§.players[_loc2_].u != this.§&"i§.u)
            {
               if(!this.§=#-§ || this.§=#-§.r > this.§["D§.players[_loc2_].r)
               {
                  this.§=#-§ = this.§["D§.players[_loc2_];
                  break;
               }
            }
            _loc2_--;
         }
         if(this.§=#-§ && _loc1_ == this.§=#-§.u)
         {
            this.§=#-§ = null;
         }
      }
      
      private function §2^§() : Boolean
      {
         if(this.§=#-§ && this.§&"i§)
         {
            if(this.§=#-§.r > this.§&"i§.r)
            {
               return true;
            }
         }
         return false;
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§-V§) : void
      {
         var _loc4_:§3!§ = null;
         switch(param2)
         {
            case "CLAIM":
               §=Q§.§`!A§("misc_menubuttonproceed_1");
               this.§7"`§();
               break;
            case "CHALLENGE":
               §=Q§.§`!A§("misc_menubuttonproceed_1");
               _loc4_ = new §^"z§(§^!S§.§'"c§,§2!s§.TOP,§^"z§.§5"t§);
               §4"#§.singleton.popupManager.openPopup(_loc4_,true,true,false);
               break;
            case "CELEBRATE":
               §=Q§.§`!A§("misc_menubuttonproceed_1");
               §5"s§.§<!8§("shareTournamentRank",this.§&"i§.r,this.§&"i§.p);
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      override protected function onTransitionInComplete() : void
      {
         super.onTransitionInComplete();
         this.§6!x§ = true;
         this.§2"^§();
      }
      
      private function §^0§(param1:Event) : void
      {
         §>`§.§!6§.removeEventListener(§>`§.CACHING_COMPLETE,this.§^0§);
         this.§ "W§ = true;
         this.§2"^§();
      }
      
      private function §7"m§() : void
      {
         §`"S§ = false;
         this.§48§();
      }
      
      private function §["M§(param1:Event) : void
      {
         this.§3"6§.§for §();
         this.§<"C§();
      }
      
      private function §`"N§(param1:Event) : void
      {
         this.§3"6§.§ !W§();
         this.§>#"§.visible = true;
         §+"p§(this.§>#"§,this.§=#-§.r - 1);
         this.§3"6§.§2"J§(this.§=#-§.r - 1);
         this.§33§();
      }
      
      private function §<"C§() : void
      {
         if(this.§<!w§ < 40)
         {
            this.§<!w§ += §7"1§(§4"#§.singleton.dataModel).§1z§.prizePerFriend;
            this.§#^§.gotoAndPlay("start");
         }
         this.§97§();
      }
      
      private function §<!R§() : void
      {
         if(this.§&"i§.r <= 3)
         {
            this.§<!w§ += §7"1§(§4"#§.singleton.dataModel).§1z§.prizeValues[this.§&"i§.r - 1];
         }
         else
         {
            this.§<!w§ += §7"1§(§4"#§.singleton.dataModel).§1z§.prizeValues[3];
         }
         this.§^U§.gotoAndPlay("start");
         this.§97§();
      }
      
      private function §+!e§(param1:Event) : void
      {
         if(this.§=#-§)
         {
            this.§+"B§.§2x§(this.§=#-§);
            this.§+"B§.§0B§();
         }
      }
      
      private function §?#$§(param1:Event) : void
      {
         if(!this.§=#-§)
         {
            this.§3"6§.§^"r§();
         }
         else if(this.§=#-§ && this.§2^§())
         {
            this.§3"6§.§for §();
            this.§<"C§();
         }
         else
         {
            this.§3"6§.§^"r§();
            this.§+"B§.§]"P§();
         }
      }
      
      private function §73§(param1:Event) : void
      {
         this.§3"6§.removeEventListener(§@"b§.EVENT_ANIMATION_GO_TO_CENTER_OVER,this.§73§);
         this.§^"s§.setComponentState(§%"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§<!R§();
         §+"p§(this.§>#"§,this.§&"i§.r);
      }
      
      private function §-l§(param1:Event) : void
      {
         this.§+"B§.§["d§();
      }
      
      private function §%#!§(param1:Event) : void
      {
         if(this.§""[§.visible && this.§""[§.currentFrame == this.§""[§.totalFrames - 1)
         {
            this.§&!M§();
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:§ #2§ = null;
         if(this.§^#5§)
         {
            for each(_loc1_ in this.§^#5§)
            {
               _loc1_.dispose();
            }
            this.§^#5§.splice(0,this.§^#5§.length);
            this.§^#5§ = null;
         }
         §5"s§.§@"-§("tournamentRankShared",this.§7"m§);
      }
   }
}
