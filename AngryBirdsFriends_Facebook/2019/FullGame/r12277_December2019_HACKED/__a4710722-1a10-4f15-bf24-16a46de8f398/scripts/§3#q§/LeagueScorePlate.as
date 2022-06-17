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
   import §>#Y§.§3"Q§;
   import §]M§.§=!a§;
   import §^!b§.§5"c§;
   import §^#?§.§?#,§;
   import com.rovio.assets.§=@§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class LeagueScorePlate extends §8#>§
   {
      
      private static var § !9§:Object = {};
       
      
      private var §'!L§:MovieClip;
      
      private var §94§:int;
      
      private var §,#Y§:int;
      
      private var §@$6§:int;
      
      private var §9"l§:int;
      
      private var §?E§:int;
      
      public function LeagueScorePlate()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         this.§'!L§ = new §=@§.§9!x§("LeagueScorePlate")();
         this.brandThePlate();
         addChild(this.§'!L§);
         this.§'!L§.mcCrown.stop();
         this.addLeagueIcon();
      }
      
      override public function brandThePlate() : void
      {
         this.§94§ = 2;
         this.§,#Y§ = 2;
         this.§@$6§ = 1;
         this.§9"l§ = 1;
         this.§?E§ = 3;
         if(§=!a§.§3"1§.§?#4§() == §5"c§.§?"n§)
         {
            this.§,#Y§ = 5;
            this.§9"l§ = 4;
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
            if(this.§;"_§.rank <= 3)
            {
               this.§'!L§.gotoAndStop(this.§,#Y§);
            }
            else
            {
               this.§'!L§.gotoAndStop(this.§94§);
            }
            this.addEventListener(MouseEvent.CLICK,this.§ !5§);
            this.buttonMode = true;
            this.useHandCursor = true;
            this.mouseChildren = false;
            this.tabEnabled = false;
         }
         else
         {
            this.removeEventListener(MouseEvent.CLICK,this.§ !5§);
            this.buttonMode = false;
            this.useHandCursor = false;
            this.mouseChildren = true;
            if(this.§;"_§.§3#<§)
            {
               this.§'!L§.gotoAndStop(this.§?E§);
            }
            else if(this.§;"_§.rank <= 3)
            {
               this.§'!L§.gotoAndStop(this.§9"l§);
            }
            else
            {
               this.§'!L§.gotoAndStop(this.§@$6§);
            }
         }
         this.§'!L§.mcCrown.visible = false;
         this.§'!L§.txtRank.text = this.§;"_§.rank.toString();
         this.§'!L§.txtRank.visible = this.§'!L§.txtRank.text != "0";
         if(this.§;"_§.§3#<§)
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
            § $4§.§'#d§(this.§'!L§.txtName,this.§;"_§.userName || "",§ "7§);
            this.§'!L§.txtScore.text = §,!8§.§1"h§(this.§;"_§.§9`§) || "0";
         }
         this.§'!L§.txtCoins.text = this.§;"_§.coins.toString();
         this.§'!L§.txtCoins.visible = this.§;"_§.coins > 0;
         if(this.§'!L§.txtLeagueGain)
         {
            this.§'!L§.txtLeagueGain.text = this.§;"_§.§!#$§ > 0 ? "+" + this.§;"_§.§!#$§ : this.§;"_§.§!#$§.toString();
            this.§'!L§.txtLeagueGain.visible = this.§;"_§.§!#$§ != 0;
            this.§'!L§.mcLeagueGainIcon.visible = this.§;"_§.§!#$§ != 0;
            this.§'!L§.mcLeagueGainBGGreen.visible = this.§;"_§.§!#$§ > 0;
            this.§'!L§.mcLeagueGainBGRed.visible = this.§;"_§.§!#$§ < 0;
         }
         this.§'!L§.CoinsBG.visible = this.§;"_§.coins > 0;
         this.§'!L§.mcCoin.visible = this.§;"_§.coins > 0;
         if(!this.§;"_§.§3#<§)
         {
            this.§'!L§.mcLeagueMoveUp.visible = this.§;"_§.§;#_§ == "u";
            this.§'!L§.mcLeagueMoveDown.visible = this.§;"_§.§;#_§ == "d";
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
            if(this.§;"_§.§>!1§ > 0)
            {
               §&"T§.visible = true;
               §&"T§.txtRakning.text = this.§;"_§.§>!1§.toString();
            }
         }
      }
      
      override protected function get isMe() : Boolean
      {
         return this.§;"_§.isMe;
      }
      
      private function get §;"_§() : §3"Q§
      {
         return data as §3"Q§;
      }
      
      override protected function addLeagueIcon() : void
      {
         addChild(§&"T§ = new §=@§.§9!x§("com.AngryBirds.friendsbar.MiniStarPlayer")());
      }
      
      private function § !5§(param1:MouseEvent) : void
      {
         §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
         AngryBirdsBase.singleton.popupManager.openPopup(new §#"r§(§-!S§.NORMAL,§## §.DEFAULT));
      }
      
      override protected function updatePhoto() : void
      {
         var _loc1_:String = §1"u§().profilePicture;
         var _loc2_:§3"Q§ = §3"Q§(data);
         var _loc3_:String = !!_loc2_.userId ? _loc2_.userId : (!!_loc2_.nickName ? _loc2_.nickName : null);
         var _loc4_:String = _loc3_ + "_" + _loc1_;
         if(§5"j§ && §5"j§.parent == this && §5"j§ == § !9§[_loc4_])
         {
            return;
         }
         if(§5"j§ && §5"j§.parent == this)
         {
            removeChild(§5"j§);
            §5"j§ = null;
         }
         if(§ !9§[_loc4_])
         {
            addChild(§5"j§ = § !9§[_loc4_]);
         }
         else
         {
            §5"j§ = new §&$<§(data.userId,§1"u§().profilePicture,data.avatarString,false,§7",§.§1"0§);
            §5"j§.x = 5;
            §5"j§.y = 5;
            § !9§[_loc4_] = §5"j§;
            addChild(§5"j§);
         }
      }
   }
}
