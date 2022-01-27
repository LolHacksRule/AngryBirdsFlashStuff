package §=!G§
{
   import §0"k§.§6!v§;
   import com.rovio.assets.§%!Z§;
   
   public class §2!7§ extends §3"M§
   {
       
      
      public function §2!7§()
      {
         this.init();
         super();
      }
      
      private function init() : void
      {
         addChild(§,# § = new §%!Z§.§;",§("com.AngryBirds.friendsbar.OverallScorePlateAsset")());
         §,# §.mcCrown.stop();
      }
      
      override public function update() : void
      {
         if(!data)
         {
            return;
         }
         super.update();
         §,# §.gotoAndStop(!!§<2§ ? 2 : 1);
         §0!Q§();
         §[!_§(this.§,!3§.userName || "");
         §,# §.txtFeathers.text = this.§,!3§.§@#$§.toString() || "0";
         §,# §.txtStars.text = this.§,!3§.§2z§.toString() || "0";
         if(this.§,!3§.§5!b§ <= 3)
         {
            §,# §.mcCrown.visible = true;
            §,# §.txtRank.visible = false;
            §,# §.mcCrown.gotoAndStop(this.§,!3§.§5!b§);
         }
         else
         {
            §,# §.mcCrown.visible = false;
            §,# §.txtRank.visible = true;
            §,# §.txtRank.text = this.§,!3§.§5!b§.toString() || "";
         }
      }
      
      private function get §,!3§() : §6!v§
      {
         return §6!v§(data);
      }
   }
}
