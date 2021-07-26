package §+W§
{
   import §,#,§.§>#%§;
   import §`"t§.§7"U§;
   import com.rovio.assets.§[a§;
   import flash.display.MovieClip;
   
   public class §^#v§ extends §2!$§ implements §@#K§
   {
       
      
      private var §"#E§:MovieClip;
      
      public function §^#v§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.§"#E§ = new §[a§.§8#k§("com.AngryBirds.friendsbar.OverallScorePlateAsset")());
         this.§"#E§.mcCrown.stop();
         addLeagueIcon();
      }
      
      override public function update() : void
      {
         if(!data)
         {
            return;
         }
         this.§"#E§.gotoAndStop(!!isMe ? 2 : 1);
         updatePhoto();
         §7"U§.§+$5§(this.§"#E§.txtName,this.§0!;§.userName || "",§%!x§);
         this.§"#E§.txtFeathers.text = this.§0!;§.§2#k§.toString() || "0";
         this.§"#E§.txtStars.text = this.§0!;§.§+!9§.toString() || "0";
         if(this.§0!;§.rank <= 3)
         {
            this.§"#E§.mcCrown.visible = true;
            this.§"#E§.txtRank.visible = false;
            this.§"#E§.mcCrown.gotoAndStop(this.§0!;§.rank);
         }
         else
         {
            this.§"#E§.mcCrown.visible = false;
            this.§"#E§.txtRank.visible = true;
            §7"U§.§+$5§(this.§"#E§.txtRank,this.§0!;§.rank.toString() || "");
         }
         §`"P§();
         updateLeagueIcon();
      }
      
      public function setCanSendGift(param1:Boolean, param2:Boolean) : void
      {
         §;!#§.setCanSendGift(param1,param2);
      }
      
      private function get §0!;§() : §>#%§
      {
         return data as §>#%§;
      }
   }
}
