package §2!X§
{
   import §%$!§.§>!G§;
   import §1!@§.§&#a§;
   import com.rovio.assets.§@`§;
   import flash.display.MovieClip;
   
   public class §4#K§ extends §5$<§ implements §;z§
   {
       
      
      private var §["h§:MovieClip;
      
      public function §4#K§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.§["h§ = new §@`§.§4!i§("com.AngryBirds.friendsbar.OverallScorePlateAsset")());
         this.§["h§.mcCrown.stop();
         addLeagueIcon();
      }
      
      override public function update() : void
      {
         if(!data)
         {
            return;
         }
         this.§["h§.gotoAndStop(!!isMe ? 2 : 1);
         updatePhoto();
         §&#a§.§^E§(this.§["h§.txtName,this.§ #w§.userName || "",§2#0§);
         this.§["h§.txtFeathers.text = this.§ #w§.§"#[§.toString() || "0";
         this.§["h§.txtStars.text = this.§ #w§.§3#1§.toString() || "0";
         if(this.§ #w§.rank <= 3)
         {
            this.§["h§.mcCrown.visible = true;
            this.§["h§.txtRank.visible = false;
            this.§["h§.mcCrown.gotoAndStop(this.§ #w§.rank);
         }
         else
         {
            this.§["h§.mcCrown.visible = false;
            this.§["h§.txtRank.visible = true;
            §&#a§.§^E§(this.§["h§.txtRank,this.§ #w§.rank.toString() || "");
         }
         §0#V§();
         updateLeagueIcon();
      }
      
      public function setCanSendGift(param1:Boolean, param2:Boolean) : void
      {
         §,!X§.setCanSendGift(param1,param2);
      }
      
      private function get § #w§() : §>!G§
      {
         return data as §>!G§;
      }
   }
}
