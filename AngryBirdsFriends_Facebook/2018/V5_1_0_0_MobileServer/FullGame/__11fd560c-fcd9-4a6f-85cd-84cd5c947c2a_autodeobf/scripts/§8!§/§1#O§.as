package §8!§
{
   import §%#w§.§2#s§;
   import §+$?§.§4!+§;
   import §+$?§.§<"`§;
   import §1!=§.§^"U§;
   import §2G§.§;!Y§;
   import §?P§.§]"$§;
   import §@!M§.§!"p§;
   import §@r§.§=T§;
   import §[#[§.§=#Q§;
   import §`7§.§!"b§;
   import com.rovio.assets.§!"f§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §1#O§ extends §2$-§
   {
      
      private static var §["e§:Object = {};
       
      
      private var §`!!§:MovieClip;
      
      public function §1#O§()
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
            §=#Q§.§0$,§(this.§`!!§.txtName,this.§@^§.userName || "",§`"6§);
            this.addEventListener(MouseEvent.CLICK,this.§5i§);
            this.buttonMode = true;
            this.useHandCursor = true;
            this.mouseChildren = false;
         }
         else
         {
            this.removeEventListener(MouseEvent.CLICK,this.§5i§);
            this.buttonMode = false;
            this.useHandCursor = false;
            this.mouseChildren = true;
            if(this.§@^§ && this.§@^§.§;=§)
            {
               this.§`!!§.gotoAndStop(3);
            }
            else
            {
               this.§`!!§.gotoAndStop(1);
               §=#Q§.§0$,§(this.§`!!§.txtName,this.§@^§.userName || "",§`"6§);
            }
         }
         this.§`!!§.mcCrown.visible = false;
         this.§`!!§.txtRank.text = this.§@^§.rank.toString();
         this.§`!!§.txtRank.visible = this.§`!!§.txtRank.text != "0";
         if(this.§@^§.§;=§)
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
            if(this.§`!!§.txtScore)
            {
               this.§`!!§.txtScore.text = §!"b§.§@]§(this.§@^§.§'!_§) || "0";
            }
         }
         this.§`!!§.txtCoins.visible = false;
         this.§`!!§.txtCoins.visible = false;
         if(this.§`!!§.txtLeagueGain)
         {
            this.§`!!§.txtLeagueGain.visible = false;
            this.§`!!§.mcLeagueGainIcon.visible = false;
            this.§`!!§.mcLeagueGainBGGreen.visible = false;
            this.§`!!§.mcLeagueGainBGRed.visible = false;
         }
         this.§`!!§.CoinsBG.visible = false;
         this.§`!!§.mcCoin.visible = false;
         if(this.§`!!§.mcLeagueMoveUp)
         {
            this.§`!!§.mcLeagueMoveUp.visible = false;
         }
         if(this.§`!!§.mcLeagueMoveDown)
         {
            this.§`!!§.mcLeagueMoveDown.visible = false;
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
            if(this.§@^§.§6!3§ > 0)
            {
               §1"$§.visible = true;
               §1"$§.txtRakning.text = this.§@^§.§6!3§.toString();
            }
         }
      }
      
      override protected function get isMe() : Boolean
      {
         return this.§@^§.isMe;
      }
      
      private function get §@^§() : §;!Y§
      {
         return data as §;!Y§;
      }
      
      override protected function addLeagueIcon() : void
      {
         addChild(§1"$§ = new §!"f§.§##?§("com.AngryBirds.friendsbar.MiniStarPlayer")());
      }
      
      private function §5i§(param1:MouseEvent) : void
      {
         §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
         AngryBirdsBase.singleton.popupManager.openPopup(new §=T§(§]"$§.NORMAL,§^"U§.DEFAULT));
      }
      
      override protected function updatePhoto() : void
      {
         var _loc1_:String = null;
         _loc1_ = §4=§().profilePicture;
         var _loc2_:String = data.userId + "_" + _loc1_;
         if(§=!<§ && §=!<§.parent == this && §=!<§ == §["e§[_loc2_])
         {
            return;
         }
         if(§=!<§ && §=!<§.parent == this)
         {
            removeChild(§=!<§);
            §=!<§ = null;
         }
         if(§["e§[_loc2_])
         {
            addChild(§=!<§ = §["e§[_loc2_]);
         }
         else
         {
            §=!<§ = new §<"`§(data.userId,§4=§().profilePicture,data.avatarString,false,§4!+§.§+"N§);
            §=!<§.x = 5;
            §=!<§.y = 5;
            §["e§[_loc2_] = §=!<§;
            addChild(§=!<§);
         }
      }
   }
}
