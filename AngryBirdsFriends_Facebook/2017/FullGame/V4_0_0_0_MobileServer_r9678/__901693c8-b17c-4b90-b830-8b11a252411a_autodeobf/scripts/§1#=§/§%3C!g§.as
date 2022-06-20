package §1#=§
{
   import § o§.§%"!§;
   import §&"J§.§?$6§;
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
   
   public class §<!g§ extends §%#K§
   {
      
      private static var §[!C§:Object = {};
       
      
      private var §#$ §:MovieClip;
      
      public function §<!g§()
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
            this.addEventListener(MouseEvent.CLICK,this.§^"2§);
            this.buttonMode = true;
            this.useHandCursor = true;
            this.mouseChildren = false;
            this.tabEnabled = false;
         }
         else
         {
            this.removeEventListener(MouseEvent.CLICK,this.§^"2§);
            this.buttonMode = false;
            this.useHandCursor = false;
            this.mouseChildren = true;
            if(this.§;#z§.§,!;§)
            {
               this.§#$ §.gotoAndStop(3);
            }
            else
            {
               this.§#$ §.gotoAndStop(1);
            }
         }
         this.§#$ §.mcCrown.visible = false;
         this.§#$ §.txtRank.text = this.§;#z§.rank.toString();
         this.§#$ §.txtRank.visible = this.§#$ §.txtRank.text != "0";
         if(this.§;#z§.§,!;§)
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
            §@!g§.§["1§(this.§#$ §.txtName,this.§;#z§.userName || "",§>"+§);
            this.§#$ §.txtScore.text = §^">§.§?"Y§(this.§;#z§.§1#e§) || "0";
         }
         this.§#$ §.txtCoins.text = this.§;#z§.coins.toString();
         this.§#$ §.txtCoins.visible = this.§;#z§.coins > 0;
         if(this.§#$ §.txtLeagueGain)
         {
            this.§#$ §.txtLeagueGain.text = this.§;#z§.§>r§ > 0 ? "+" + this.§;#z§.§>r§ : this.§;#z§.§>r§.toString();
            this.§#$ §.txtLeagueGain.visible = this.§;#z§.§>r§ != 0;
            this.§#$ §.mcLeagueGainIcon.visible = this.§;#z§.§>r§ != 0;
            this.§#$ §.mcLeagueGainBGGreen.visible = this.§;#z§.§>r§ > 0;
            this.§#$ §.mcLeagueGainBGRed.visible = this.§;#z§.§>r§ < 0;
         }
         this.§#$ §.CoinsBG.visible = this.§;#z§.coins > 0;
         this.§#$ §.mcCoin.visible = this.§;#z§.coins > 0;
         if(!this.§;#z§.§,!;§)
         {
            this.§#$ §.mcLeagueMoveUp.visible = this.§;#z§.§#N§ == "u";
            this.§#$ §.mcLeagueMoveDown.visible = this.§;#z§.§#N§ == "d";
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
            if(this.§;#z§.§%S§ > 0)
            {
               §0#@§.visible = true;
               §0#@§.txtRakning.text = this.§;#z§.§%S§.toString();
            }
         }
      }
      
      override protected function get isMe() : Boolean
      {
         return this.§;#z§.isMe;
      }
      
      private function get §;#z§() : §?$6§
      {
         return data as §?$6§;
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
         var _loc1_:String = § ?§().profilePicture;
         var _loc2_:§?$6§ = §?$6§(data);
         var _loc3_:String = !!_loc2_.userId ? _loc2_.userId : (!!_loc2_.nickName ? _loc2_.nickName : null);
         var _loc4_:String = _loc3_ + "_" + _loc1_;
         if(§-!N§ && §-!N§.parent == this && §-!N§ == §[!C§[_loc4_])
         {
            return;
         }
         if(§-!N§ && §-!N§.parent == this)
         {
            removeChild(§-!N§);
            §-!N§ = null;
         }
         if(§[!C§[_loc4_])
         {
            addChild(§-!N§ = §[!C§[_loc4_]);
         }
         else
         {
            §-!N§ = new §!"l§(data.userId,§ ?§().profilePicture,data.avatarString,false,§5V§.§1$$§);
            §-!N§.x = 5;
            §-!N§.y = 5;
            §[!C§[_loc4_] = §-!N§;
            addChild(§-!N§);
         }
      }
   }
}
