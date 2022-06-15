package §2!X§
{
   import §%$!§.§[!6§;
   import §,n§.§+!f§;
   import §,n§.§?#!§;
   import §1!@§.§&#a§;
   import §2V§.§+" §;
   import §7g§.§4!q§;
   import §>!#§.§9#a§;
   import §?"R§.§[W§;
   import §^!,§.§<d§;
   import com.rovio.assets.§@`§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §6#b§ extends §5$<§
   {
      
      private static var §,!%§:Object = {};
       
      
      private var §["h§:MovieClip;
      
      public function §6#b§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.§["h§ = new §@`§.§4!i§("com.AngryBirds.friendsbar.LeagueScorePlateAsset")());
         this.§["h§.mcCrown.stop();
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
            this.§["h§.gotoAndStop(2);
            §&#a§.§^E§(this.§["h§.txtName,this.§[3§.userName || "",§2#0§);
            this.addEventListener(MouseEvent.CLICK,this.§&#R§);
            this.buttonMode = true;
            this.useHandCursor = true;
            this.mouseChildren = false;
         }
         else
         {
            this.removeEventListener(MouseEvent.CLICK,this.§&#R§);
            this.buttonMode = false;
            this.useHandCursor = false;
            this.mouseChildren = true;
            if(this.§[3§ && this.§[3§.§%!+§)
            {
               this.§["h§.gotoAndStop(3);
            }
            else
            {
               this.§["h§.gotoAndStop(1);
               §&#a§.§^E§(this.§["h§.txtName,this.§[3§.userName || "",§2#0§);
            }
         }
         this.§["h§.mcCrown.visible = false;
         this.§["h§.txtRank.text = this.§[3§.rank.toString();
         this.§["h§.txtRank.visible = this.§["h§.txtRank.text != "0";
         if(this.§[3§.§%!+§)
         {
            if(§!v§ && §!v§.parent == this)
            {
               removeChild(§!v§);
               §!v§ = null;
            }
         }
         else
         {
            this.updatePhoto();
            if(this.§["h§.txtScore)
            {
               this.§["h§.txtScore.text = §9#a§.§^#&§(this.§[3§.levelScore) || "0";
            }
         }
         this.§["h§.txtCoins.visible = false;
         this.§["h§.CoinsBG.visible = false;
         this.§["h§.mcCoin.visible = false;
         if(this.§["h§.mcLeagueMoveUp)
         {
            this.§["h§.mcLeagueMoveUp.visible = false;
         }
         if(this.§["h§.mcLeagueMoveDown)
         {
            this.§["h§.mcLeagueMoveDown.visible = false;
         }
         this.updateLeagueIcon();
      }
      
      override protected function updateLeagueIcon() : void
      {
         super.updateLeagueIcon();
         if(!§7#-§)
         {
            return;
         }
         if(§4!q§.§3!]§.active)
         {
            if(this.§[3§.§8U§ > 0)
            {
               §7#-§.visible = true;
               §7#-§.txtRakning.text = this.§[3§.§8U§.toString();
            }
         }
      }
      
      override protected function get isMe() : Boolean
      {
         return this.§[3§.isMe;
      }
      
      private function get §[3§() : §[!6§
      {
         return data as §[!6§;
      }
      
      override protected function addLeagueIcon() : void
      {
         addChild(§7#-§ = new §@`§.§4!i§("com.AngryBirds.friendsbar.MiniStarPlayer")());
      }
      
      private function §&#R§(param1:MouseEvent) : void
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new §+" §(§[W§.NORMAL,§<d§.§8"K§));
      }
      
      override protected function updatePhoto() : void
      {
         var _loc1_:String = null;
         _loc1_ = §["S§().profilePicture;
         var _loc2_:String = data.userId + "_" + _loc1_;
         if(§!v§ && §!v§.parent == this && §!v§ == §,!%§[_loc2_])
         {
            return;
         }
         if(§!v§ && §!v§.parent == this)
         {
            removeChild(§!v§);
            §!v§ = null;
         }
         if(§,!%§[_loc2_])
         {
            addChild(§!v§ = §,!%§[_loc2_]);
         }
         else
         {
            §!v§ = new §?#!§(data.userId,§["S§().profilePicture,data.avatarString,false,§+!f§.§%#M§);
            §!v§.x = 5;
            §!v§.y = 5;
            §,!%§[_loc2_] = §!v§;
            addChild(§!v§);
         }
      }
   }
}
