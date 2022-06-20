package §1#=§
{
   import § o§.§%"!§;
   import §&"J§.§2#<§;
   import §+">§.§+#J§;
   import §+#t§.§!"l§;
   import §+#t§.§5V§;
   import §6V§.§^">§;
   import §<#m§.§^#o§;
   import §[0§.§;$-§;
   import §^#]§.§@!g§;
   import com.rovio.assets.§+$#§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §^Q§ extends §%#K§
   {
      
      private static var §[!C§:Object = {};
       
      
      private var §#$ §:MovieClip;
      
      public function §^Q§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.§#$ § = new §+$#§.§["`§("com.AngryBirds.friendsbar.LeagueScorePlateAsset")());
         this.§#$ §.mcCrown.stop();
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
            this.§#$ §.gotoAndStop(2);
            §@!g§.§["1§(this.§#$ §.txtName,this.§5#Q§.userName || "",§>"+§);
            this.addEventListener(MouseEvent.CLICK,this.§^"2§);
            this.buttonMode = true;
            this.useHandCursor = true;
            this.mouseChildren = false;
         }
         else
         {
            this.removeEventListener(MouseEvent.CLICK,this.§^"2§);
            this.buttonMode = false;
            this.useHandCursor = false;
            this.mouseChildren = true;
            if(this.§5#Q§ && this.§5#Q§.§,!;§)
            {
               this.§#$ §.gotoAndStop(3);
            }
            else
            {
               this.§#$ §.gotoAndStop(1);
               §@!g§.§["1§(this.§#$ §.txtName,this.§5#Q§.userName || "",§>"+§);
            }
         }
         this.§#$ §.mcCrown.visible = false;
         this.§#$ §.txtRank.text = this.§5#Q§.rank.toString();
         this.§#$ §.txtRank.visible = this.§#$ §.txtRank.text != "0";
         if(this.§5#Q§.§,!;§)
         {
            if(§-!N§ && §-!N§.parent == this)
            {
               removeChild(§-!N§);
               §-!N§ = null;
            }
         }
         else
         {
            this.updatePhoto();
            if(this.§#$ §.txtScore)
            {
               this.§#$ §.txtScore.text = §^">§.§?"Y§(this.§5#Q§.levelScore) || "0";
            }
         }
         this.§#$ §.txtCoins.visible = false;
         this.§#$ §.txtCoins.visible = false;
         if(this.§#$ §.txtLeagueGain)
         {
            this.§#$ §.txtLeagueGain.visible = false;
            this.§#$ §.mcLeagueGainIcon.visible = false;
            this.§#$ §.mcLeagueGainBGGreen.visible = false;
            this.§#$ §.mcLeagueGainBGRed.visible = false;
         }
         this.§#$ §.CoinsBG.visible = false;
         this.§#$ §.mcCoin.visible = false;
         if(this.§#$ §.mcLeagueMoveUp)
         {
            this.§#$ §.mcLeagueMoveUp.visible = false;
         }
         if(this.§#$ §.mcLeagueMoveDown)
         {
            this.§#$ §.mcLeagueMoveDown.visible = false;
         }
         this.updateLeagueIcon();
      }
      
      override protected function updateLeagueIcon() : void
      {
         super.updateLeagueIcon();
         if(!§0#@§)
         {
            return;
         }
         if(§;$-§.§ "D§.active)
         {
            if(this.§5#Q§.§8">§ > 0)
            {
               §0#@§.visible = true;
               §0#@§.txtRakning.text = this.§5#Q§.§8">§.toString();
            }
         }
      }
      
      override protected function get isMe() : Boolean
      {
         return this.§5#Q§.isMe;
      }
      
      private function get §5#Q§() : §2#<§
      {
         return data as §2#<§;
      }
      
      override protected function addLeagueIcon() : void
      {
         addChild(§0#@§ = new §+$#§.§["`§("com.AngryBirds.friendsbar.MiniStarPlayer")());
      }
      
      private function §^"2§(param1:MouseEvent) : void
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new §+#J§(§%"!§.NORMAL,§^#o§.§#!K§));
      }
      
      override protected function updatePhoto() : void
      {
         var _loc1_:String = null;
         _loc1_ = § ?§().profilePicture;
         var _loc2_:String = data.userId + "_" + _loc1_;
         if(§-!N§ && §-!N§.parent == this && §-!N§ == §[!C§[_loc2_])
         {
            return;
         }
         if(§-!N§ && §-!N§.parent == this)
         {
            removeChild(§-!N§);
            §-!N§ = null;
         }
         if(§[!C§[_loc2_])
         {
            addChild(§-!N§ = §[!C§[_loc2_]);
         }
         else
         {
            §-!N§ = new §!"l§(data.userId,§ ?§().profilePicture,data.avatarString,false,§5V§.§1$$§);
            §-!N§.x = 5;
            §-!N§.y = 5;
            §[!C§[_loc2_] = §-!N§;
            addChild(§-!N§);
         }
      }
   }
}
