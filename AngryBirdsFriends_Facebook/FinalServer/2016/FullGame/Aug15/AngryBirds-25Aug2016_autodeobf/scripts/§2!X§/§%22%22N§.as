package §2!X§
{
   import §%$!§.§%!2§;
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
   
   public class §""N§ extends §5$<§
   {
      
      private static var §,!%§:Object = {};
       
      
      private var §["h§:MovieClip;
      
      public function §""N§()
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
            this.addEventListener(MouseEvent.CLICK,this.§&#R§);
            this.buttonMode = true;
            this.useHandCursor = true;
            this.mouseChildren = false;
            this.tabEnabled = false;
         }
         else
         {
            this.removeEventListener(MouseEvent.CLICK,this.§&#R§);
            this.buttonMode = false;
            this.useHandCursor = false;
            this.mouseChildren = true;
            if(this.§&#U§.§%!+§)
            {
               this.§["h§.gotoAndStop(3);
            }
            else
            {
               this.§["h§.gotoAndStop(1);
            }
         }
         this.§["h§.mcCrown.visible = false;
         this.§["h§.txtRank.text = this.§&#U§.rank.toString();
         this.§["h§.txtRank.visible = this.§["h§.txtRank.text != "0";
         if(this.§&#U§.§%!+§)
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
            §&#a§.§^E§(this.§["h§.txtName,this.§&#U§.userName || "",§2#0§);
            this.§["h§.txtScore.text = §9#a§.§^#&§(this.§&#U§.§?#7§) || "0";
         }
         this.§["h§.txtCoins.text = this.§&#U§.coins.toString();
         this.§["h§.txtCoins.visible = this.§&#U§.coins > 0;
         this.§["h§.CoinsBG.visible = this.§&#U§.coins > 0;
         this.§["h§.mcCoin.visible = this.§&#U§.coins > 0;
         if(!this.§&#U§.§%!+§)
         {
            this.§["h§.mcLeagueMoveUp.visible = this.§&#U§.§9m§ == "u";
            this.§["h§.mcLeagueMoveDown.visible = this.§&#U§.§9m§ == "d";
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
            if(this.§&#U§.§^#N§ > 0)
            {
               §7#-§.visible = true;
               §7#-§.txtRakning.text = this.§&#U§.§^#N§.toString();
            }
         }
      }
      
      override protected function get isMe() : Boolean
      {
         return this.§&#U§.isMe;
      }
      
      private function get §&#U§() : §%!2§
      {
         return data as §%!2§;
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
         var _loc1_:String = §["S§().profilePicture;
         var _loc2_:§%!2§ = §%!2§(data);
         var _loc3_:String = !!_loc2_.userId ? _loc2_.userId : (!!_loc2_.nickName ? _loc2_.nickName : null);
         var _loc4_:String = _loc3_ + "_" + _loc1_;
         if(§!v§ && §!v§.parent == this && §!v§ == §,!%§[_loc4_])
         {
            return;
         }
         if(§!v§ && §!v§.parent == this)
         {
            removeChild(§!v§);
            §!v§ = null;
         }
         if(§,!%§[_loc4_])
         {
            addChild(§!v§ = §,!%§[_loc4_]);
         }
         else
         {
            §!v§ = new §?#!§(data.userId,§["S§().profilePicture,data.avatarString,false,§+!f§.§%#M§);
            §!v§.x = 5;
            §!v§.y = 5;
            §,!%§[_loc4_] = §!v§;
            addChild(§!v§);
         }
      }
   }
}
