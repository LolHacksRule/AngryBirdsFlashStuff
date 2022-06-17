package §2!u§
{
   import §+#B§.§""D§;
   import §6!'§.§@#c§;
   import §8"b§.§&!b§;
   import §;$5§.§9§;
   import §=#§.§1!"§;
   import §=#§.§1#+§;
   import §>"9§.§[#%§;
   import §?!N§.§%#§;
   import §]"'§.§=!h§;
   import §]$<§.§9"6§;
   import com.rovio.assets.§2"O§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §4§ extends §^#h§
   {
      
      private static var §7q§:Object = {};
       
      
      private var §#"r§:MovieClip;
      
      public function §4§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.§#"r§ = new §2"O§.§`>§("LeagueScorePlate")());
         this.§#"r§.mcCrown.stop();
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
            this.§#"r§.gotoAndStop(2);
            §&!b§.§9G§(this.§#"r§.txtName,this.§1"v§.userName || "",§"!!§);
            this.addEventListener(MouseEvent.CLICK,this.§#!m§);
            this.buttonMode = true;
            this.useHandCursor = true;
            this.mouseChildren = false;
         }
         else
         {
            this.removeEventListener(MouseEvent.CLICK,this.§#!m§);
            this.buttonMode = false;
            this.useHandCursor = false;
            this.mouseChildren = true;
            if(this.§1"v§ && this.§1"v§.§0!<§)
            {
               this.§#"r§.gotoAndStop(3);
            }
            else
            {
               this.§#"r§.gotoAndStop(1);
               §&!b§.§9G§(this.§#"r§.txtName,this.§1"v§.userName || "",§"!!§);
            }
         }
         this.§#"r§.mcCrown.visible = false;
         this.§#"r§.txtRank.text = this.§1"v§.rank.toString();
         this.§#"r§.txtRank.visible = this.§#"r§.txtRank.text != "0";
         if(this.§1"v§.§0!<§)
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
            if(this.§#"r§.txtScore)
            {
               this.§#"r§.txtScore.text = §""D§.§"k§(this.§1"v§.§>"t§) || "0";
            }
         }
         this.§#"r§.txtCoins.visible = false;
         this.§#"r§.txtCoins.visible = false;
         if(this.§#"r§.txtLeagueGain)
         {
            this.§#"r§.txtLeagueGain.visible = false;
            this.§#"r§.mcLeagueGainIcon.visible = false;
            this.§#"r§.mcLeagueGainBGGreen.visible = false;
            this.§#"r§.mcLeagueGainBGRed.visible = false;
         }
         this.§#"r§.CoinsBG.visible = false;
         this.§#"r§.mcCoin.visible = false;
         if(this.§#"r§.mcLeagueMoveUp)
         {
            this.§#"r§.mcLeagueMoveUp.visible = false;
         }
         if(this.§#"r§.mcLeagueMoveDown)
         {
            this.§#"r§.mcLeagueMoveDown.visible = false;
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
            if(this.§1"v§.§&X§ > 0)
            {
               §!"#§.visible = true;
               §!"#§.txtRakning.text = this.§1"v§.§&X§.toString();
            }
         }
      }
      
      override protected function get isMe() : Boolean
      {
         return this.§1"v§.isMe;
      }
      
      private function get §1"v§() : §=!h§
      {
         return data as §=!h§;
      }
      
      override protected function addLeagueIcon() : void
      {
         addChild(§!"#§ = new §2"O§.§`>§("com.AngryBirds.friendsbar.MiniStarPlayer")());
      }
      
      private function §#!m§(param1:MouseEvent) : void
      {
         §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
         AngryBirdsBase.singleton.popupManager.openPopup(new §9"6§(§%#§.NORMAL,§9#5§.DEFAULT));
      }
      
      override protected function updatePhoto() : void
      {
         var _loc1_:String = null;
         _loc1_ = §4!u§().profilePicture;
         var _loc2_:String = data.userId + "_" + _loc1_;
         if(§+!t§ && §+!t§.parent == this && §+!t§ == §7q§[_loc2_])
         {
            return;
         }
         if(§+!t§ && §+!t§.parent == this)
         {
            removeChild(§+!t§);
            §+!t§ = null;
         }
         if(§7q§[_loc2_])
         {
            addChild(§+!t§ = §7q§[_loc2_]);
         }
         else
         {
            §+!t§ = new §1#+§(data.userId,§4!u§().profilePicture,data.avatarString,false,§1!"§.§+$=§);
            §+!t§.x = 5;
            §+!t§.y = 5;
            §7q§[_loc2_] = §+!t§;
            addChild(§+!t§);
         }
      }
   }
}
