package §+W§
{
   import § $0§.§5R§;
   import §#"4§.§6!B§;
   import §&Y§.§+e§;
   import §,#,§.§^#<§;
   import §2G§.§##W§;
   import §2G§.§?!s§;
   import §3"V§.§ b§;
   import §?Q§.§@#D§;
   import §]#'§.§4"s§;
   import §`"t§.§7"U§;
   import com.rovio.assets.§[a§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class § !1§ extends §2!$§
   {
      
      private static var §]q§:Object = {};
       
      
      private var §"#E§:MovieClip;
      
      public function § !1§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.§"#E§ = new §[a§.§8#k§("LeagueScorePlate")());
         this.§"#E§.mcCrown.stop();
         this.addLeagueIcon();
      }
      
      override public function update() : void
      {
         if(!data)
         {
            return;
         }
         if(this.isMe)
         {
            this.§"#E§.gotoAndStop(2);
            §7"U§.§+$5§(this.§"#E§.txtName,this.§^#H§.userName || "",§%!x§);
            this.addEventListener(MouseEvent.CLICK,this.§?8§);
            this.buttonMode = true;
            this.useHandCursor = true;
            this.mouseChildren = false;
         }
         else
         {
            this.removeEventListener(MouseEvent.CLICK,this.§?8§);
            this.buttonMode = false;
            this.useHandCursor = false;
            this.mouseChildren = true;
            if(this.§^#H§ && this.§^#H§.§5O§)
            {
               this.§"#E§.gotoAndStop(3);
            }
            else
            {
               this.§"#E§.gotoAndStop(1);
               §7"U§.§+$5§(this.§"#E§.txtName,this.§^#H§.userName || "",§%!x§);
            }
         }
         this.§"#E§.mcCrown.visible = false;
         this.§"#E§.txtRank.text = this.§^#H§.rank.toString();
         this.§"#E§.txtRank.visible = this.§"#E§.txtRank.text != "0";
         if(this.§^#H§.§5O§)
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
            if(this.§"#E§.txtScore)
            {
               this.§"#E§.txtScore.text = §6!B§.§^"O§(this.§^#H§.§0#y§) || "0";
            }
         }
         this.§"#E§.txtCoins.visible = false;
         this.§"#E§.txtCoins.visible = false;
         if(this.§"#E§.txtLeagueGain)
         {
            this.§"#E§.txtLeagueGain.visible = false;
            this.§"#E§.mcLeagueGainIcon.visible = false;
            this.§"#E§.mcLeagueGainBGGreen.visible = false;
            this.§"#E§.mcLeagueGainBGRed.visible = false;
         }
         this.§"#E§.CoinsBG.visible = false;
         this.§"#E§.mcCoin.visible = false;
         if(this.§"#E§.mcLeagueMoveUp)
         {
            this.§"#E§.mcLeagueMoveUp.visible = false;
         }
         if(this.§"#E§.mcLeagueMoveDown)
         {
            this.§"#E§.mcLeagueMoveDown.visible = false;
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
            if(this.§^#H§.leagueStars > 0)
            {
               §,!#§.visible = true;
               §,!#§.txtRakning.text = this.§^#H§.leagueStars.toString();
            }
         }
      }
      
      override protected function get isMe() : Boolean
      {
         return this.§^#H§.isMe;
      }
      
      private function get §^#H§() : §^#<§
      {
         return data as §^#<§;
      }
      
      override protected function addLeagueIcon() : void
      {
         addChild(§,!#§ = new §[a§.§8#k§("com.AngryBirds.friendsbar.MiniStarPlayer")());
      }
      
      private function §?8§(param1:MouseEvent) : void
      {
         § b§.playSound("Menu_Confirm",§ b§.§;$5§);
         AngryBirdsBase.singleton.popupManager.openPopup(new §+e§(§@#D§.NORMAL,§5R§.DEFAULT));
      }
      
      override protected function updatePhoto() : void
      {
         var _loc1_:String = null;
         _loc1_ = §?#Q§().profilePicture;
         var _loc2_:String = data.userId + "_" + _loc1_;
         if(§>"o§ && §>"o§.parent == this && §>"o§ == §]q§[_loc2_])
         {
            return;
         }
         if(§>"o§ && §>"o§.parent == this)
         {
            removeChild(§>"o§);
            §>"o§ = null;
         }
         if(§]q§[_loc2_])
         {
            addChild(§>"o§ = §]q§[_loc2_]);
         }
         else
         {
            §>"o§ = new §##W§(data.userId,§?#Q§().profilePicture,data.avatarString,false,§?!s§.§'!n§);
            §>"o§.x = 5;
            §>"o§.y = 5;
            §]q§[_loc2_] = §>"o§;
            addChild(§>"o§);
         }
      }
   }
}
