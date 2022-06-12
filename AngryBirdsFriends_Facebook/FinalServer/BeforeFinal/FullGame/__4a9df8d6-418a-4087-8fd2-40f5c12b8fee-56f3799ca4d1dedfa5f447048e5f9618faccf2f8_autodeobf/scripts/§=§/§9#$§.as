package §=§#0
{
   import §!#C§.§;s§;
   import §"!n§.§;"x§;
   import §##Z§.§<$2§;
   import §&!_§.§9#%§;
   import §0!s§.§]"Y§;
   import §8#K§.§3Z§;
   import §;#l§.§+#i§;
   import §>z§.§#"l§;
   import §?!a§.§4" §;
   import §?!a§.§6#b§;
   import com.rovio.assets.§6$A§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §9#$§ extends § #i§
   {
      
      private static var §'"a§:Object = {};
       
      
      private var §8"@§:MovieClip;
      
      public function §9#$§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.§8"@§ = new §6$A§.§1!m§("LeagueScorePlate")());
         this.§8"@§.mcCrown.stop();
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
            this.§8"@§.gotoAndStop(2);
            §;"x§.§+>§(this.§8"@§.txtName,this.§'9§.userName || "",§4#I§);
            this.addEventListener(MouseEvent.CLICK,this.§0!E§);
            this.buttonMode = true;
            this.useHandCursor = true;
            this.mouseChildren = false;
         }
         else
         {
            this.removeEventListener(MouseEvent.CLICK,this.§0!E§);
            this.buttonMode = false;
            this.useHandCursor = false;
            this.mouseChildren = true;
            if(this.§'9§ && this.§'9§.§ !2§)
            {
               this.§8"@§.gotoAndStop(3);
            }
            else
            {
               this.§8"@§.gotoAndStop(1);
               §;"x§.§+>§(this.§8"@§.txtName,this.§'9§.userName || "",§4#I§);
            }
         }
         this.§8"@§.mcCrown.visible = false;
         this.§8"@§.txtRank.text = this.§'9§.rank.toString();
         this.§8"@§.txtRank.visible = this.§8"@§.txtRank.text != "0";
         if(this.§'9§.§ !2§)
         {
            if(§7#j§ && §7#j§.parent == this)
            {
               removeChild(§7#j§);
               §7#j§ = null;
            }
         }
         else
         {
            this.updatePhoto();
            if(this.§8"@§.txtScore)
            {
               this.§8"@§.txtScore.text = §9#%§.§##W§(this.§'9§.§,$&§) || "0";
            }
         }
         this.§8"@§.txtCoins.visible = false;
         this.§8"@§.txtCoins.visible = false;
         if(this.§8"@§.txtLeagueGain)
         {
            this.§8"@§.txtLeagueGain.visible = false;
            this.§8"@§.mcLeagueGainIcon.visible = false;
            this.§8"@§.mcLeagueGainBGGreen.visible = false;
            this.§8"@§.mcLeagueGainBGRed.visible = false;
         }
         this.§8"@§.CoinsBG.visible = false;
         this.§8"@§.mcCoin.visible = false;
         if(this.§8"@§.mcLeagueMoveUp)
         {
            this.§8"@§.mcLeagueMoveUp.visible = false;
         }
         if(this.§8"@§.mcLeagueMoveDown)
         {
            this.§8"@§.mcLeagueMoveDown.visible = false;
         }
         this.updateLeagueIcon();
      }
      
      override protected function updateLeagueIcon() : void
      {
         super.updateLeagueIcon();
         if(!§;#I§)
         {
            return;
         }
         if(§<$2§.§`"H§.active)
         {
            if(this.§'9§.leagueStars > 0)
            {
               §;#I§.visible = true;
               §;#I§.txtRakning.text = this.§'9§.leagueStars.toString();
            }
         }
      }
      
      override protected function get isMe() : Boolean
      {
         return this.§'9§.isMe;
      }
      
      private function get §'9§() : §;s§
      {
         return data as §;s§;
      }
      
      override protected function addLeagueIcon() : void
      {
         addChild(§;#I§ = new §6$A§.§1!m§("com.AngryBirds.friendsbar.MiniStarPlayer")());
      }
      
      private function §0!E§(param1:MouseEvent) : void
      {
         §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
         AngryBirdsBase.singleton.popupManager.openPopup(new §+#i§(§#"l§.NORMAL,§]"Y§.DEFAULT));
      }
      
      override protected function updatePhoto() : void
      {
         var _loc1_:String = null;
         _loc1_ = §##'§().profilePicture;
         var _loc2_:String = data.userId + "_" + _loc1_;
         if(§7#j§ && §7#j§.parent == this && §7#j§ == §'"a§[_loc2_])
         {
            return;
         }
         if(§7#j§ && §7#j§.parent == this)
         {
            removeChild(§7#j§);
            §7#j§ = null;
         }
         if(§'"a§[_loc2_])
         {
            addChild(§7#j§ = §'"a§[_loc2_]);
         }
         else
         {
            §7#j§ = new §4" §(data.userId,§##'§().profilePicture,data.avatarString,false,§6#b§.§?^§);
            §7#j§.x = 5;
            §7#j§.y = 5;
            §'"a§[_loc2_] = §7#j§;
            addChild(§7#j§);
         }
      }
   }
}
