package §=§#0
{
   import §!#C§.§8##§;
   import §"!n§.§;"x§;
   import com.rovio.assets.§6$A§;
   import flash.display.MovieClip;
   
   public class § h§ extends § #i§ implements §0V§
   {
       
      
      private var §8"@§:MovieClip;
      
      public function § h§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.§8"@§ = new §6$A§.§1!m§("com.AngryBirds.friendsbar.OverallScorePlateAsset")());
         this.§8"@§.mcCrown.stop();
         addLeagueIcon();
      }
      
      override public function update() : void
      {
         if(!data)
         {
            return;
         }
         this.§8"@§.gotoAndStop(!!isMe ? 2 : 1);
         updatePhoto();
         §;"x§.§+>§(this.§8"@§.txtName,this.§1"O§.userName || "",§4#I§);
         this.§8"@§.txtFeathers.text = this.§1"O§.§7M§.toString() || "0";
         this.§8"@§.txtStars.text = this.§1"O§.§?"C§.toString() || "0";
         if(this.§1"O§.rank <= 3)
         {
            this.§8"@§.mcCrown.visible = true;
            this.§8"@§.txtRank.visible = false;
            this.§8"@§.mcCrown.gotoAndStop(this.§1"O§.rank);
         }
         else
         {
            this.§8"@§.mcCrown.visible = false;
            this.§8"@§.txtRank.visible = true;
            §;"x§.§+>§(this.§8"@§.txtRank,this.§1"O§.rank.toString() || "");
         }
         §+!$§();
         updateLeagueIcon();
      }
      
      public function setCanSendGift(param1:Boolean, param2:Boolean) : void
      {
         §6-§.setCanSendGift(param1,param2);
      }
      
      private function get §1"O§() : §8##§
      {
         return data as §8##§;
      }
   }
}
