package §+W§
{
   import § $0§.§5R§;
   import §#"4§.§6!B§;
   import §&Y§.§+e§;
   import §'"b§.§ #F§;
   import §,#,§.§3!R§;
   import §2G§.§##W§;
   import §2G§.§?!s§;
   import §3"V§.§ b§;
   import §?<§.§ "A§;
   import §?Q§.§@#D§;
   import §]#'§.§4"s§;
   import §`"t§.§7"U§;
   import com.rovio.assets.§[a§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class LeagueScorePlate extends §2!$§
   {
      
      private static var §]q§:Object = {};
       
      
      private var §"#E§:MovieClip;
      
      private var §;$"§:int;
      
      private var §9m§:int;
      
      private var §>"-§:int;
      
      private var §?z§:int;
      
      private var §,"q§:int;
      
      public function LeagueScorePlate()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         this.§"#E§ = new §[a§.§8#k§("LeagueScorePlate")();
         this.brandThePlate();
         addChild(this.§"#E§);
         this.§"#E§.mcCrown.stop();
         this.addLeagueIcon();
      }
      
      override public function brandThePlate() : void
      {
         this.§;$"§ = 2;
         this.§9m§ = 2;
         this.§>"-§ = 1;
         this.§?z§ = 1;
         this.§,"q§ = 3;
         if(§ #F§.§+!,§.§^"Q§() == § "A§.§in §)
         {
            this.§9m§ = 5;
            this.§?z§ = 4;
         }
      }
      
      override public function update() : void
      {
         if(!data)
         {
            return;
         }
         if(this.isMe)
         {
            if(this.§4!^§.rank <= 3)
            {
               this.§"#E§.gotoAndStop(this.§9m§);
            }
            else
            {
               this.§"#E§.gotoAndStop(this.§;$"§);
            }
            this.addEventListener(MouseEvent.CLICK,this.§2#-§);
            this.buttonMode = true;
            this.useHandCursor = true;
            this.mouseChildren = false;
            this.tabEnabled = false;
         }
         else
         {
            this.removeEventListener(MouseEvent.CLICK,this.§2#-§);
            this.buttonMode = false;
            this.useHandCursor = false;
            this.mouseChildren = true;
            if(this.§4!^§.§5O§)
            {
               this.§"#E§.gotoAndStop(this.§,"q§);
            }
            else if(this.§4!^§.rank <= 3)
            {
               this.§"#E§.gotoAndStop(this.§?z§);
            }
            else
            {
               this.§"#E§.gotoAndStop(this.§>"-§);
            }
         }
         this.§"#E§.mcCrown.visible = false;
         this.§"#E§.txtRank.text = this.§4!^§.rank.toString();
         this.§"#E§.txtRank.visible = this.§"#E§.txtRank.text != "0";
         if(this.§4!^§.§5O§)
         {
            if(§>"o§ && §>"o§.parent == this)
            {
               removeChild(§>"o§);
               §>"o§ = null;
            }
         }
         else
         {
            this.updatePhoto();
            §7"U§.§+$5§(this.§"#E§.txtName,this.§4!^§.userName || "",§%!x§);
            this.§"#E§.txtScore.text = §6!B§.§^"O§(this.§4!^§.§?"c§) || "0";
         }
         this.§"#E§.txtCoins.text = this.§4!^§.coins.toString();
         this.§"#E§.txtCoins.visible = this.§4!^§.coins > 0;
         if(this.§"#E§.txtLeagueGain)
         {
            this.§"#E§.txtLeagueGain.text = this.§4!^§.§;!G§ > 0 ? "+" + this.§4!^§.§;!G§ : this.§4!^§.§;!G§.toString();
            this.§"#E§.txtLeagueGain.visible = this.§4!^§.§;!G§ != 0;
            this.§"#E§.mcLeagueGainIcon.visible = this.§4!^§.§;!G§ != 0;
            this.§"#E§.mcLeagueGainBGGreen.visible = this.§4!^§.§;!G§ > 0;
            this.§"#E§.mcLeagueGainBGRed.visible = this.§4!^§.§;!G§ < 0;
         }
         this.§"#E§.CoinsBG.visible = this.§4!^§.coins > 0;
         this.§"#E§.mcCoin.visible = this.§4!^§.coins > 0;
         if(!this.§4!^§.§5O§)
         {
            this.§"#E§.mcLeagueMoveUp.visible = this.§4!^§.§6y§ == "u";
            this.§"#E§.mcLeagueMoveDown.visible = this.§4!^§.§6y§ == "d";
         }
         this.updateLeagueIcon();
      }
      
      override protected function updateLeagueIcon() : void
      {
         super.updateLeagueIcon();
         if(!§,!#§)
         {
            return;
         }
         if(§4"s§.§+!,§.active)
         {
            if(this.§4!^§.§%!c§ > 0)
            {
               §,!#§.visible = true;
               §,!#§.txtRakning.text = this.§4!^§.§%!c§.toString();
            }
         }
      }
      
      override protected function get isMe() : Boolean
      {
         return this.§4!^§.isMe;
      }
      
      private function get §4!^§() : §3!R§
      {
         return data as §3!R§;
      }
      
      override protected function addLeagueIcon() : void
      {
         addChild(§,!#§ = new §[a§.§8#k§("com.AngryBirds.friendsbar.MiniStarPlayer")());
      }
      
      private function §2#-§(param1:MouseEvent) : void
      {
         § b§.playSound("Menu_Confirm",§ b§.§;$5§);
         AngryBirdsBase.singleton.popupManager.openPopup(new §+e§(§@#D§.NORMAL,§5R§.DEFAULT));
      }
      
      override protected function updatePhoto() : void
      {
         var _loc1_:String = §?#Q§().profilePicture;
         var _loc2_:§3!R§ = §3!R§(data);
         var _loc3_:String = !!_loc2_.userId ? _loc2_.userId : (!!_loc2_.nickName ? _loc2_.nickName : null);
         var _loc4_:String = _loc3_ + "_" + _loc1_;
         if(§>"o§ && §>"o§.parent == this && §>"o§ == §]q§[_loc4_])
         {
            return;
         }
         if(§>"o§ && §>"o§.parent == this)
         {
            removeChild(§>"o§);
            §>"o§ = null;
         }
         if(§]q§[_loc4_])
         {
            addChild(§>"o§ = §]q§[_loc4_]);
         }
         else
         {
            §>"o§ = new §##W§(data.userId,§?#Q§().profilePicture,data.avatarString,false,§?!s§.§'!n§);
            §>"o§.x = 5;
            §>"o§.y = 5;
            §]q§[_loc4_] = §>"o§;
            addChild(§>"o§);
         }
      }
   }
}
