package §=!G§
{
   import §0"k§.§6!U§;
   import com.rovio.assets.§%!Z§;
   
   public class §6#!§ extends §3"M§
   {
       
      
      public function §6#!§()
      {
         this.init();
         super();
      }
      
      private function init() : void
      {
         addChild(§,# § = new §%!Z§.§;",§("com.angrybirds.friendsbar.TournamentTotalScorePlateAsset")());
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
         §[!_§(this.§^"w§.userName || "");
         §,# §.txtScore.text = §=!`§(this.§^"w§.§%D§) || "0";
         if(this.§^"w§.§5!b§ <= 3)
         {
            §,# §.mcCrown.visible = true;
            §,# §.txtRank.visible = false;
            §,# §.mcCrown.gotoAndStop(this.§^"w§.§5!b§);
         }
         else
         {
            §,# §.mcCrown.visible = false;
            §,# §.txtRank.visible = true;
            §,# §.txtRank.text = this.§^"w§.§5!b§.toString() || "";
         }
      }
      
      private function get §^"w§() : §6!U§
      {
         return §6!U§(data);
      }
   }
}
