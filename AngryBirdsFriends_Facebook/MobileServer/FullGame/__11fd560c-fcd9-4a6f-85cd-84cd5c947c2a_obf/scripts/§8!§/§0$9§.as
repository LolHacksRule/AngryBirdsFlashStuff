package §8!§
{
   import §%#w§.§2#s§;
   import §+$?§.§4!+§;
   import §+$?§.§<"`§;
   import §1!=§.§^"U§;
   import §2G§.§9!m§;
   import §?P§.§]"$§;
   import §@!M§.§!"p§;
   import §@r§.§=T§;
   import §[#[§.§=#Q§;
   import §`7§.§!"b§;
   import com.rovio.assets.§!"f§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §0$9§ extends §2$-§
   {
      
      private static var §["e§:Object = {};
       
      
      private var §`!!§:MovieClip;
      
      public function §0$9§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.§`!!§ = new §!"f§.§##?§("com.AngryBirds.friendsbar.LeagueScorePlateAsset")());
         this.§`!!§.mcCrown.stop();
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
            this.§`!!§.gotoAndStop(2);
            this.addEventListener(MouseEvent.CLICK,this.§1"!§);
            this.buttonMode = true;
            this.useHandCursor = true;
            this.mouseChildren = false;
            this.tabEnabled = false;
         }
         else
         {
            this.removeEventListener(MouseEvent.CLICK,this.§1"!§);
            this.buttonMode = false;
            this.useHandCursor = false;
            this.mouseChildren = true;
            if(this.§8#K§.§;=§)
            {
               this.§`!!§.gotoAndStop(3);
            }
            else
            {
               this.§`!!§.gotoAndStop(1);
            }
         }
         this.§`!!§.mcCrown.visible = false;
         this.§`!!§.txtRank.text = this.§8#K§.rank.toString();
         this.§`!!§.txtRank.visible = this.§`!!§.txtRank.text != "0";
         if(this.§8#K§.§;=§)
         {
            if(§=!<§ && §=!<§.parent == this)
            {
               removeChild(§=!<§);
               §=!<§ = null;
            }
         }
         else
         {
            this.updatePhoto();
            §=#Q§.§0$,§(this.§`!!§.txtName,this.§8#K§.userName || "",§`"6§);
            this.§`!!§.txtScore.text = §!"b§.§@]§(this.§8#K§.§=B§) || "0";
         }
         this.§`!!§.txtCoins.text = this.§8#K§.coins.toString();
         this.§`!!§.txtCoins.visible = this.§8#K§.coins > 0;
         if(this.§`!!§.txtLeagueGain)
         {
            this.§`!!§.txtLeagueGain.text = this.§8#K§.§1!5§ > 0 ? "+" + this.§8#K§.§1!5§ : this.§8#K§.§1!5§.toString();
            this.§`!!§.txtLeagueGain.visible = this.§8#K§.§1!5§ != 0;
            this.§`!!§.mcLeagueGainIcon.visible = this.§8#K§.§1!5§ != 0;
            this.§`!!§.mcLeagueGainBGGreen.visible = this.§8#K§.§1!5§ > 0;
            this.§`!!§.mcLeagueGainBGRed.visible = this.§8#K§.§1!5§ < 0;
         }
         this.§`!!§.CoinsBG.visible = this.§8#K§.coins > 0;
         this.§`!!§.mcCoin.visible = this.§8#K§.coins > 0;
         if(!this.§8#K§.§;=§)
         {
            this.§`!!§.mcLeagueMoveUp.visible = this.§8#K§.§#$9§ == "u";
            this.§`!!§.mcLeagueMoveDown.visible = this.§8#K§.§#$9§ == "d";
         }
         this.updateLeagueIcon();
      }
      
      override protected function updateLeagueIcon() : void
      {
         super.updateLeagueIcon();
         if(!§1"$§)
         {
            return;
         }
         if(§2#s§.§6!§.active)
         {
            if(this.§8#K§.§#"x§ > 0)
            {
               §1"$§.visible = true;
               §1"$§.txtRakning.text = this.§8#K§.§#"x§.toString();
            }
         }
      }
      
      override protected function get isMe() : Boolean
      {
         return this.§8#K§.isMe;
      }
      
      private function get §8#K§() : §9!m§
      {
         return data as §9!m§;
      }
      
      override protected function addLeagueIcon() : void
      {
         addChild(§1"$§ = new §!"f§.§##?§("com.AngryBirds.friendsbar.MiniStarPlayer")());
      }
      
      private function §1"!§(param1:MouseEvent) : void
      {
         §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
         AngryBirdsBase.singleton.popupManager.openPopup(new §=T§(§]"$§.NORMAL,§^"U§.DEFAULT));
      }
      
      override protected function updatePhoto() : void
      {
         var _loc1_:String = §4=§().profilePicture;
         var _loc2_:§9!m§ = §9!m§(data);
         var _loc3_:String = !!_loc2_.userId ? _loc2_.userId : (!!_loc2_.nickName ? _loc2_.nickName : null);
         var _loc4_:String = _loc3_ + "_" + _loc1_;
         if(§=!<§ && §=!<§.parent == this && §=!<§ == §["e§[_loc4_])
         {
            return;
         }
         if(§=!<§ && §=!<§.parent == this)
         {
            removeChild(§=!<§);
            §=!<§ = null;
         }
         if(§["e§[_loc4_])
         {
            addChild(§=!<§ = §["e§[_loc4_]);
         }
         else
         {
            §=!<§ = new §<"`§(data.userId,§4=§().profilePicture,data.avatarString,false,§4!+§.§+"N§);
            §=!<§.x = 5;
            §=!<§.y = 5;
            §["e§[_loc4_] = §=!<§;
            addChild(§=!<§);
         }
      }
   }
}
