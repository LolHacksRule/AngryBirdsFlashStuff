package §3#q§
{
   import § ""§.§#"r§;
   import § "v§.§4$4§;
   import § h§.§-!S§;
   import §!!H§.§ $4§;
   import §2E§.§,!8§;
   import §9!6§.§## §;
   import §9x§.§&$<§;
   import §9x§.§7",§;
   import §>#Y§.§'#z§;
   import §^#?§.§?#,§;
   import com.rovio.assets.§=@§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §<#q§ extends §8#>§
   {
      
      private static var § !9§:Object = {};
       
      
      private var §'!L§:MovieClip;
      
      public function §<#q§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.§'!L§ = new §=@§.§9!x§("LeagueScorePlate")());
         this.§'!L§.mcCrown.stop();
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
            this.§'!L§.gotoAndStop(2);
            § $4§.§'#d§(this.§'!L§.txtName,this.§+"<§.userName || "",§ "7§);
            this.addEventListener(MouseEvent.CLICK,this.§6!,§);
            this.buttonMode = true;
            this.useHandCursor = true;
            this.mouseChildren = false;
         }
         else
         {
            this.removeEventListener(MouseEvent.CLICK,this.§6!,§);
            this.buttonMode = false;
            this.useHandCursor = false;
            this.mouseChildren = true;
            if(this.§+"<§ && this.§+"<§.§3#<§)
            {
               this.§'!L§.gotoAndStop(3);
            }
            else
            {
               this.§'!L§.gotoAndStop(1);
               § $4§.§'#d§(this.§'!L§.txtName,this.§+"<§.userName || "",§ "7§);
            }
         }
         this.§'!L§.mcCrown.visible = false;
         this.§'!L§.txtRank.text = this.§+"<§.rank.toString();
         this.§'!L§.txtRank.visible = this.§'!L§.txtRank.text != "0";
         if(this.§+"<§.§3#<§)
         {
            if(§5"j§ && §5"j§.parent == this)
            {
               removeChild(§5"j§);
               §5"j§ = null;
            }
         }
         else
         {
            this.updatePhoto();
            if(this.§'!L§.txtScore)
            {
               this.§'!L§.txtScore.text = §,!8§.§1"h§(this.§+"<§.§5"1§) || "0";
            }
         }
         this.§'!L§.txtCoins.visible = false;
         this.§'!L§.txtCoins.visible = false;
         if(this.§'!L§.txtLeagueGain)
         {
            this.§'!L§.txtLeagueGain.visible = false;
            this.§'!L§.mcLeagueGainIcon.visible = false;
            this.§'!L§.mcLeagueGainBGGreen.visible = false;
            this.§'!L§.mcLeagueGainBGRed.visible = false;
         }
         this.§'!L§.CoinsBG.visible = false;
         this.§'!L§.mcCoin.visible = false;
         if(this.§'!L§.mcLeagueMoveUp)
         {
            this.§'!L§.mcLeagueMoveUp.visible = false;
         }
         if(this.§'!L§.mcLeagueMoveDown)
         {
            this.§'!L§.mcLeagueMoveDown.visible = false;
         }
         this.updateLeagueIcon();
      }
      
      override protected function updateLeagueIcon() : void
      {
         super.updateLeagueIcon();
         if(!§&"T§)
         {
            return;
         }
         if(§?#,§.§3"1§.active)
         {
            if(this.§+"<§.leagueStars > 0)
            {
               §&"T§.visible = true;
               §&"T§.txtRakning.text = this.§+"<§.leagueStars.toString();
            }
         }
      }
      
      override protected function get isMe() : Boolean
      {
         return this.§+"<§.isMe;
      }
      
      private function get §+"<§() : §'#z§
      {
         return data as §'#z§;
      }
      
      override protected function addLeagueIcon() : void
      {
         addChild(§&"T§ = new §=@§.§9!x§("com.AngryBirds.friendsbar.MiniStarPlayer")());
      }
      
      private function §6!,§(param1:MouseEvent) : void
      {
         §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
         AngryBirdsBase.singleton.popupManager.openPopup(new §#"r§(§-!S§.NORMAL,§## §.DEFAULT));
      }
      
      override protected function updatePhoto() : void
      {
         var _loc1_:String = null;
         _loc1_ = §1"u§().profilePicture;
         var _loc2_:String = data.userId + "_" + _loc1_;
         if(§5"j§ && §5"j§.parent == this && §5"j§ == § !9§[_loc2_])
         {
            return;
         }
         if(§5"j§ && §5"j§.parent == this)
         {
            removeChild(§5"j§);
            §5"j§ = null;
         }
         if(§ !9§[_loc2_])
         {
            addChild(§5"j§ = § !9§[_loc2_]);
         }
         else
         {
            §5"j§ = new §&$<§(data.userId,§1"u§().profilePicture,data.avatarString,false,§7",§.§1"0§);
            §5"j§.x = 5;
            §5"j§.y = 5;
            § !9§[_loc2_] = §5"j§;
            addChild(§5"j§);
         }
      }
   }
}
