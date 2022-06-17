package §2!u§
{
   import §!!T§.§1"9§;
   import §!$?§.§>"w§;
   import §+#B§.§""D§;
   import §6!'§.§@#c§;
   import §8"b§.§&!b§;
   import §;$5§.§9§;
   import §=#§.§1!"§;
   import §=#§.§1#+§;
   import §>"9§.§[#%§;
   import §?!N§.§%#§;
   import §]"'§.§^"X§;
   import §]$<§.§9"6§;
   import com.rovio.assets.§2"O§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class LeagueScorePlate extends §^#h§
   {
      
      private static var §7q§:Object = {};
       
      
      private var §#"r§:MovieClip;
      
      private var §,!w§:int;
      
      private var §%"d§:int;
      
      private var §-j§:int;
      
      private var §>$+§:int;
      
      private var §]§:int;
      
      public function LeagueScorePlate()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         this.§#"r§ = new §2"O§.§`>§("LeagueScorePlate")();
         this.brandThePlate();
         addChild(this.§#"r§);
         this.§#"r§.mcCrown.stop();
         this.addLeagueIcon();
      }
      
      override public function brandThePlate() : void
      {
         this.§,!w§ = 2;
         this.§%"d§ = 2;
         this.§-j§ = 1;
         this.§>$+§ = 1;
         this.§]§ = 3;
         if(§1"9§.§?q§.§]m§() == §>"w§.§1"2§)
         {
            this.§%"d§ = 5;
            this.§>$+§ = 4;
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
            if(this.§>"i§.rank <= 3)
            {
               this.§#"r§.gotoAndStop(this.§%"d§);
            }
            else
            {
               this.§#"r§.gotoAndStop(this.§,!w§);
            }
            this.addEventListener(MouseEvent.CLICK,this.§`#e§);
            this.buttonMode = true;
            this.useHandCursor = true;
            this.mouseChildren = false;
            this.tabEnabled = false;
         }
         else
         {
            this.removeEventListener(MouseEvent.CLICK,this.§`#e§);
            this.buttonMode = false;
            this.useHandCursor = false;
            this.mouseChildren = true;
            if(this.§>"i§.§0!<§)
            {
               this.§#"r§.gotoAndStop(this.§]§);
            }
            else if(this.§>"i§.rank <= 3)
            {
               this.§#"r§.gotoAndStop(this.§>$+§);
            }
            else
            {
               this.§#"r§.gotoAndStop(this.§-j§);
            }
         }
         this.§#"r§.mcCrown.visible = false;
         this.§#"r§.txtRank.text = this.§>"i§.rank.toString();
         this.§#"r§.txtRank.visible = this.§#"r§.txtRank.text != "0";
         if(this.§>"i§.§0!<§)
         {
            if(§+!t§ && §+!t§.parent == this)
            {
               removeChild(§+!t§);
               §+!t§ = null;
            }
         }
         else
         {
            this.updatePhoto();
            §&!b§.§9G§(this.§#"r§.txtName,this.§>"i§.userName || "",§"!!§);
            this.§#"r§.txtScore.text = §""D§.§"k§(this.§>"i§.§@h§) || "0";
         }
         this.§#"r§.txtCoins.text = this.§>"i§.coins.toString();
         this.§#"r§.txtCoins.visible = this.§>"i§.coins > 0;
         if(this.§#"r§.txtLeagueGain)
         {
            this.§#"r§.txtLeagueGain.text = this.§>"i§.§%$D§ > 0 ? "+" + this.§>"i§.§%$D§ : this.§>"i§.§%$D§.toString();
            this.§#"r§.txtLeagueGain.visible = this.§>"i§.§%$D§ != 0;
            this.§#"r§.mcLeagueGainIcon.visible = this.§>"i§.§%$D§ != 0;
            this.§#"r§.mcLeagueGainBGGreen.visible = this.§>"i§.§%$D§ > 0;
            this.§#"r§.mcLeagueGainBGRed.visible = this.§>"i§.§%$D§ < 0;
         }
         this.§#"r§.CoinsBG.visible = this.§>"i§.coins > 0;
         this.§#"r§.mcCoin.visible = this.§>"i§.coins > 0;
         if(!this.§>"i§.§0!<§)
         {
            this.§#"r§.mcLeagueMoveUp.visible = this.§>"i§.§["U§ == "u";
            this.§#"r§.mcLeagueMoveDown.visible = this.§>"i§.§["U§ == "d";
         }
         this.updateLeagueIcon();
      }
      
      override protected function updateLeagueIcon() : void
      {
         super.updateLeagueIcon();
         if(!§!"#§)
         {
            return;
         }
         if(§@#c§.§?q§.active)
         {
            if(this.§>"i§.§#$%§ > 0)
            {
               §!"#§.visible = true;
               §!"#§.txtRakning.text = this.§>"i§.§#$%§.toString();
            }
         }
      }
      
      override protected function get isMe() : Boolean
      {
         return this.§>"i§.isMe;
      }
      
      private function get §>"i§() : §^"X§
      {
         return data as §^"X§;
      }
      
      override protected function addLeagueIcon() : void
      {
         addChild(§!"#§ = new §2"O§.§`>§("com.AngryBirds.friendsbar.MiniStarPlayer")());
      }
      
      private function §`#e§(param1:MouseEvent) : void
      {
         §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
         AngryBirdsBase.singleton.popupManager.openPopup(new §9"6§(§%#§.NORMAL,§9#5§.DEFAULT));
      }
      
      override protected function updatePhoto() : void
      {
         var _loc1_:String = §4!u§().profilePicture;
         var _loc2_:§^"X§ = §^"X§(data);
         var _loc3_:String = !!_loc2_.userId ? _loc2_.userId : (!!_loc2_.nickName ? _loc2_.nickName : null);
         var _loc4_:String = _loc3_ + "_" + _loc1_;
         if(§+!t§ && §+!t§.parent == this && §+!t§ == §7q§[_loc4_])
         {
            return;
         }
         if(§+!t§ && §+!t§.parent == this)
         {
            removeChild(§+!t§);
            §+!t§ = null;
         }
         if(§7q§[_loc4_])
         {
            addChild(§+!t§ = §7q§[_loc4_]);
         }
         else
         {
            §+!t§ = new §1#+§(data.userId,§4!u§().profilePicture,data.avatarString,false,§1!"§.§+$=§);
            §+!t§.x = 5;
            §+!t§.y = 5;
            §7q§[_loc4_] = §+!t§;
            addChild(§+!t§);
         }
      }
   }
}
