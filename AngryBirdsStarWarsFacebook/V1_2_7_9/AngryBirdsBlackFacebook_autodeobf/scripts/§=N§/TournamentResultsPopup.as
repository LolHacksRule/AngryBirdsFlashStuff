package §=N§
{
   import § "I§.§^!J§;
   import § 0§.§@Y§;
   import §""d§.§2"8§;
   import §,"v§.§@§;
   import §4##§.§7!B§;
   import §4##§.§7!Y§;
   import §4m§.§5!R§;
   import §4m§.AbstractPopup;
   import §4m§.§^T§;
   import §7""§.§4!z§;
   import §7A§.§4E§;
   import §<"s§.§0u§;
   import §>"!§.§>D§;
   import §^!`§.§%n§;
   import §`"8§.§-!w§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class TournamentResultsPopup extends AbstractPopup
   {
      
      private static var §>m§:Boolean = true;
      
      private static var §5!@§:Boolean = false;
       
      
      private var §""C§:Object;
      
      private var §for§:Object;
      
      private var §2j§:Vector.<§4!z§>;
      
      private var §[#2§:Boolean;
      
      private var § `§:Boolean;
      
      private var §^!i§:MovieClip;
      
      private var §8&§:MovieClip;
      
      private var §?w§:MovieClip;
      
      private var §%#,§:MovieClip;
      
      private var §>!L§:§&3§;
      
      private var §1!n§:MovieClip;
      
      private var § w§:MovieClip;
      
      private var §1!s§:MovieClip;
      
      private var §@"p§:MovieClip;
      
      private var §5!J§:MovieClip;
      
      private var §0!`§:MovieClip;
      
      private var §"f§:MovieClip;
      
      private var §4"x§:TextField;
      
      private var §[1§:§2"8§;
      
      private var §%o§:§&3§;
      
      private var §@R§:§&3§;
      
      private var §<!q§:int;
      
      private var § ""§:Object;
      
      public function TournamentResultsPopup(param1:Object, param2:int, param3:int, param4:String = "TournamentResultsPopup")
      {
         this.§for§ = param1;
         super(param2,param3,§%n§.§ set§.Popups.Popup_TournamentResults[0],param4);
      }
      
      public static function reset() : void
      {
         §5!@§ = false;
         §>m§ = true;
      }
      
      public static function §5s§(param1:MovieClip, param2:int) : void
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
         this.§[#2§ = false;
         this.§ `§ = false;
         this.§^!i§ = §,r§.getItemByName("Container_Content").mClip;
         this.§1!n§ = §,r§.getItemByName("Container_Top_Battle").mClip;
         this.§ w§ = §,r§.getItemByName("Container_Bottom_Battle").mClip;
         this.§8&§ = §,r§.getItemByName("Container_Top_Results").mClip;
         this.§?w§ = §,r§.getItemByName("Container_Bottom_Results").mClip;
         this.§%#,§ = this.§?w§["Container_Bottom_Results_Content"];
         this.§1!s§ = this.§ w§["Container_Bottom_Battle_Content"];
         this.§>!L§ = new §&3§(this.§%#,§["Container_Static_Avatar"],false);
         this.§%o§ = new §&3§(this.§1!n§["Container_Avatar_Left"]);
         this.§@R§ = new §&3§(this.§1!n§["Container_Avatar_Right"]);
         this.§@"p§ = this.§1!n§["trophy"];
         this.§5!J§ = this.§1!n§["MovieClip_Versus"];
         this.§0!`§ = this.§1!n§["MovieClip_Few_Coins"];
         this.§"f§ = this.§1!n§["MovieClip_Many_Coins"];
         this.§4"x§ = this.§1!s§["txtReward"];
         this.§1!n§.visible = false;
         this.§ w§.visible = false;
         this.§8&§.visible = false;
         this.§?w§.visible = false;
         this.§,"k§();
         this.§""C§ = this.§8!w§();
         §-!w§(§;"@§.singleton.dataModel).§9"1§.§'"4§();
         §^!J§.§-G§.§<!"§(this.§for§.players);
         §^!J§.§-G§.addEventListener(§^!J§.CACHING_COMPLETE,this.§7G§);
         §@Y§.addCallback("tournamentRankShared",this.§=e§);
      }
      
      private function §[2§() : void
      {
         this.§8&§.visible = false;
         this.§?w§.visible = false;
         this.§1!n§.visible = true;
         this.§ w§.visible = true;
         this.§<!q§ = 0;
         this.§?#"§();
         this.§ w§.gotoAndStop("outro_start");
         this.§%o§.§2!s§(this.§""C§);
         this.§%o§.§0!D§(int.MAX_VALUE);
         this.§@R§.§2!s§(this.§ ""§);
         this.§%o§.§9#7§();
         this.§@R§.§9#7§();
         this.§5!J§.gotoAndPlay("intro_start");
         this.§@"p§.visible = false;
         this.§[1§ = §,r§.getItemByName("Button_Claim") as §2"8§;
         this.§[1§.setComponentState(§7!Y§.COMPONENT_STATE_DISABLED);
         this.§%o§.addEventListener(§&3§.EVENT_ANIMATION_INTRO_OVER,this.§9#5§);
         this.§%o§.addEventListener(§&3§.EVENT_ANIMATION_ATTACK_OVER,this.§?!"§);
         this.§%o§.addEventListener(§&3§.EVENT_ANIMATION_RETURN_TO_DEFAULT_POSITION_OVER,this.§@>§);
         this.§%o§.addEventListener(§&3§.EVENT_ANIMATION_GO_TO_CENTER_OVER,this.§>"A§);
         this.§%o§.addEventListener(§&3§.EVENT_ANIMATION_ATTACK_INVOKES_GET_ATTACKED,this.§0"!§);
         this.§@R§.addEventListener(§&3§.EVENT_ANIMATION_GET_ATTACKED_OVER,this.§3,§);
      }
      
      private function §!!I§() : void
      {
         if(this.§[#2§ && this.§ `§)
         {
            this.§-!B§();
            if(this.§ ""§ && this.§5j§() && !§5!@§)
            {
               §5!@§ = true;
               this.§[2§();
            }
            else
            {
               this.§["E§();
            }
         }
      }
      
      private function §@"w§() : void
      {
         this.§ w§.gotoAndPlay("outro_start");
         this.§ w§.addEventListener(Event.ENTER_FRAME,this.§""Y§);
         this.§%o§.§6!2§();
      }
      
      private function §["E§() : void
      {
         this.§1!n§.visible = false;
         this.§>!L§.§2!s§(this.§""C§);
         this.§8&§.visible = true;
         this.§?w§.visible = true;
         this.§8&§.gotoAndPlay("intro_start");
         this.§?w§.gotoAndPlay("intro_start");
         this.§7#-§();
         this.§,!y§();
         this.§="2§();
         this.§ #3§();
         this.§]"[§();
      }
      
      private function §,"k§() : void
      {
         var _loc1_:MovieClip = §,r§.getItemByName("MovieClip_ContentMask").mClip;
         this.§^!i§.mask = _loc1_;
      }
      
      private function §?#5§() : void
      {
         this.§%#,§.txtReward.text = "x" + this.§for§.prizes[0].quantity;
      }
      
      private function §,!y§() : void
      {
         §5s§(this.§%#,§.trophy,this.§""C§.r);
      }
      
      private function §="2§() : void
      {
         if(this.§""C§.r > 3)
         {
            §>m§ = false;
         }
         this.§?"b§();
      }
      
      private function § #3§() : void
      {
         this.§%#,§.txtScore.text = this.§""C§.p;
      }
      
      private function §]"[§() : void
      {
         var _loc1_:MovieClip = this.§%#,§["star"];
         _loc1_.gotoAndStop(this.§""C§.s > 0 ? "true" : "false");
         this.§%#,§.txtStars.text = this.§""C§.s + "/" + this.§for§.maxStars;
      }
      
      private function §7#-§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:TextField = null;
         var _loc4_:§4!z§ = null;
         this.§2j§ = new Vector.<§4!z§>();
         var _loc1_:int = 0;
         while(_loc1_ < 3)
         {
            _loc2_ = this.§8&§["p" + (_loc1_ + 1)]["p" + (_loc1_ + 1)];
            if(_loc1_ < this.§for§.players.length)
            {
               _loc2_.txtName.text = this.§for§.players[_loc1_].n;
               _loc2_.txtScore.text = this.§for§.players[_loc1_].p;
               _loc3_ = _loc2_.txtName;
               §4E§.§0!l§(_loc3_,int(_loc3_.getTextFormat().size),_loc3_.width,_loc3_.height);
               (_loc2_.txtName as TextField).mouseEnabled = false;
               (_loc2_.txtScore as TextField).mouseEnabled = false;
               _loc4_ = new §4!z§(this.§for§.players[_loc1_].u);
               _loc2_.profile.addChild(_loc4_);
               _loc4_.scaleY = 1.08;
               _loc4_.scaleX = 1.08;
               this.§2j§.push(_loc4_);
            }
            else
            {
               _loc2_.visible = false;
            }
            _loc1_++;
         }
      }
      
      private function §?"b§() : void
      {
         var _loc1_:String = §7!Y§.COMPONENT_STATE_ACTIVE_DEFAULT;
         if(!§>m§)
         {
            _loc1_ = §7!Y§.COMPONENT_STATE_DISABLED;
         }
         (§,r§.getItemByName("Button_Celebrate") as §7!Y§).setComponentState(_loc1_);
      }
      
      private function §?#"§() : void
      {
         this.§4"x§.text = "x" + this.§<!q§;
      }
      
      private function §8!w§() : Object
      {
         var _loc1_:Object = null;
         var _loc2_:Object = null;
         for each(_loc2_ in this.§for§.players)
         {
            if(_loc2_.u == §-!w§(§;"@§.singleton.dataModel).§0!;§.id)
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
      
      private function §-!B§() : void
      {
         var _loc1_:String = null;
         if(this.§ ""§)
         {
            _loc1_ = this.§ ""§.u;
         }
         var _loc2_:int = this.§for§.players.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§for§.players[_loc2_].u != this.§""C§.u)
            {
               if(!this.§ ""§ || this.§ ""§.r > this.§for§.players[_loc2_].r)
               {
                  this.§ ""§ = this.§for§.players[_loc2_];
                  break;
               }
            }
            _loc2_--;
         }
         if(this.§ ""§ && _loc1_ == this.§ ""§.u)
         {
            this.§ ""§ = null;
         }
      }
      
      private function §5j§() : Boolean
      {
         if(this.§ ""§ && this.§""C§)
         {
            if(this.§ ""§.r > this.§""C§.r)
            {
               return true;
            }
         }
         return false;
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§7!B§) : void
      {
         var _loc4_:§5!R§ = null;
         switch(param2)
         {
            case "CLAIM":
               §@§.§=Y§("misc_menubuttonproceed_1");
               this.§@"w§();
               break;
            case "CHALLENGE":
               §@§.§=Y§("misc_menubuttonproceed_1");
               _loc4_ = new §>D§(§0u§.§1"J§,§^T§.TOP,§>D§.§<"U§);
               §;"@§.singleton.popupManager.openPopup(_loc4_,true,true,false);
               break;
            case "CELEBRATE":
               §@§.§=Y§("misc_menubuttonproceed_1");
               §@Y§.§7"H§("shareTournamentRank",this.§""C§.r,this.§""C§.p);
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      override protected function onTransitionInComplete() : void
      {
         super.onTransitionInComplete();
         this.§[#2§ = true;
         this.§!!I§();
      }
      
      private function §7G§(param1:Event) : void
      {
         §^!J§.§-G§.removeEventListener(§^!J§.CACHING_COMPLETE,this.§7G§);
         this.§ `§ = true;
         this.§!!I§();
      }
      
      private function §=e§() : void
      {
         §>m§ = false;
         this.§?"b§();
      }
      
      private function §9#5§(param1:Event) : void
      {
         this.§%o§.§2"#§();
         this.§ !<§();
      }
      
      private function §?!"§(param1:Event) : void
      {
         this.§%o§.§2!9§();
         this.§@"p§.visible = true;
         §5s§(this.§@"p§,this.§ ""§.r - 1);
         this.§%o§.§0!D§(this.§ ""§.r - 1);
         this.§-!B§();
      }
      
      private function § !<§() : void
      {
         if(this.§<!q§ < 40)
         {
            this.§<!q§ += §-!w§(§;"@§.singleton.dataModel).§2!J§.prizePerFriend;
            this.§0!`§.gotoAndPlay("start");
         }
         this.§?#"§();
      }
      
      private function §"!B§() : void
      {
         if(this.§""C§.r <= 3)
         {
            this.§<!q§ += §-!w§(§;"@§.singleton.dataModel).§2!J§.prizeValues[this.§""C§.r - 1];
         }
         else
         {
            this.§<!q§ += §-!w§(§;"@§.singleton.dataModel).§2!J§.prizeValues[3];
         }
         this.§"f§.gotoAndPlay("start");
         this.§?#"§();
      }
      
      private function §3,§(param1:Event) : void
      {
         if(this.§ ""§)
         {
            this.§@R§.§2!s§(this.§ ""§);
            this.§@R§.§5§();
         }
      }
      
      private function §@>§(param1:Event) : void
      {
         if(!this.§ ""§)
         {
            this.§%o§.§ t§();
         }
         else if(this.§ ""§ && this.§5j§())
         {
            this.§%o§.§2"#§();
            this.§ !<§();
         }
         else
         {
            this.§%o§.§ t§();
            this.§@R§.§#!-§();
         }
      }
      
      private function §>"A§(param1:Event) : void
      {
         this.§%o§.removeEventListener(§&3§.EVENT_ANIMATION_GO_TO_CENTER_OVER,this.§>"A§);
         this.§[1§.setComponentState(§7!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§"!B§();
         §5s§(this.§@"p§,this.§""C§.r);
      }
      
      private function §0"!§(param1:Event) : void
      {
         this.§@R§.§^"y§();
      }
      
      private function §""Y§(param1:Event) : void
      {
         if(this.§ w§.visible && this.§ w§.currentFrame == this.§ w§.totalFrames - 1)
         {
            this.§["E§();
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:§4!z§ = null;
         if(this.§2j§)
         {
            for each(_loc1_ in this.§2j§)
            {
               _loc1_.dispose();
            }
            this.§2j§.splice(0,this.§2j§.length);
            this.§2j§ = null;
         }
         §@Y§.§0"<§("tournamentRankShared",this.§=e§);
      }
   }
}
