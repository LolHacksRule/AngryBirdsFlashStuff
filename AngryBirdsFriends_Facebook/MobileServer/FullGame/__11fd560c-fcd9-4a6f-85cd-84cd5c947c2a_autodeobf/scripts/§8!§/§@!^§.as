package §8!§
{
   import §2G§.§9"=§;
   import §[#[§.§=#Q§;
   import com.rovio.assets.§!"f§;
   import flash.display.MovieClip;
   
   public class §@!^§ extends §2$-§ implements §[g§
   {
       
      
      private var §`!!§:MovieClip;
      
      public function §@!^§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.§`!!§ = new §!"f§.§##?§("com.AngryBirds.friendsbar.OverallScorePlateAsset")());
         this.§`!!§.mcCrown.stop();
         addLeagueIcon();
      }
      
      override public function update() : void
      {
         if(!data)
         {
            return;
         }
         this.§`!!§.gotoAndStop(!!isMe ? 2 : 1);
         updatePhoto();
         §=#Q§.§0$,§(this.§`!!§.txtName,this.§`"l§.userName || "",§`"6§);
         this.§`!!§.txtFeathers.text = this.§`"l§.§0"Q§.toString() || "0";
         this.§`!!§.txtStars.text = this.§`"l§.§>$%§.toString() || "0";
         if(this.§`"l§.rank <= 3)
         {
            this.§`!!§.mcCrown.visible = true;
            this.§`!!§.txtRank.visible = false;
            this.§`!!§.mcCrown.gotoAndStop(this.§`"l§.rank);
         }
         else
         {
            this.§`!!§.mcCrown.visible = false;
            this.§`!!§.txtRank.visible = true;
            §=#Q§.§0$,§(this.§`!!§.txtRank,this.§`"l§.rank.toString() || "");
         }
         §+!,§();
         updateLeagueIcon();
      }
      
      public function setCanSendGift(param1:Boolean, param2:Boolean) : void
      {
         §0#U§.setCanSendGift(param1,param2);
      }
      
      private function get §`"l§() : §9"=§
      {
         return data as §9"=§;
      }
   }
}
