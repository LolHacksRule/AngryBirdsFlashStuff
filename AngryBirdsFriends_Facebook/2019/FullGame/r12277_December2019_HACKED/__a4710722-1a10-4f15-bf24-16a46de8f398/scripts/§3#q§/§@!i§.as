package §3#q§
{
   import §!!H§.§ $4§;
   import §>#Y§.§0!j§;
   import com.rovio.assets.§=@§;
   import flash.display.MovieClip;
   
   public class §@!i§ extends §8#>§ implements §8#'§
   {
       
      
      private var §'!L§:MovieClip;
      
      public function §@!i§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.§'!L§ = new §=@§.§9!x§("com.AngryBirds.friendsbar.OverallScorePlateAsset")());
         this.§'!L§.mcCrown.stop();
         addLeagueIcon();
      }
      
      override public function update() : void
      {
         if(!data)
         {
            return;
         }
         this.§'!L§.gotoAndStop(!!isMe ? 2 : 1);
         updatePhoto();
         § $4§.§'#d§(this.§'!L§.txtName,this.§;!T§.userName || "",§ "7§);
         this.§'!L§.txtFeathers.text = this.§;!T§.§4"^§.toString() || "0";
         this.§'!L§.txtStars.text = this.§;!T§.§?$<§.toString() || "0";
         if(this.§;!T§.rank <= 3)
         {
            this.§'!L§.mcCrown.visible = true;
            this.§'!L§.txtRank.visible = false;
            this.§'!L§.mcCrown.gotoAndStop(this.§;!T§.rank);
         }
         else
         {
            this.§'!L§.mcCrown.visible = false;
            this.§'!L§.txtRank.visible = true;
            § $4§.§'#d§(this.§'!L§.txtRank,this.§;!T§.rank.toString() || "");
         }
         §;"#§();
         updateLeagueIcon();
      }
      
      public function setCanSendGift(param1:Boolean, param2:Boolean) : void
      {
         §,^§.setCanSendGift(param1,param2);
      }
      
      private function get §;!T§() : §0!j§
      {
         return data as §0!j§;
      }
   }
}
