package §%"q§
{
   import §`!b§.§`§;
   import com.rovio.assets.§5"]§;
   
   public class §7!L§ extends §0!h§
   {
       
      
      public function §7!L§()
      {
         this.init();
         super();
      }
      
      private function init() : void
      {
         addChild(§&"_§ = new §5"]§.§4!K§("com.angrybirds.friendsbar.TournamentTotalScorePlateAsset")());
         §&"_§.mcCrown.stop();
      }
      
      override public function update() : void
      {
         if(!data)
         {
            return;
         }
         super.update();
         §&"_§.gotoAndStop(!!§%"r§ ? 2 : 1);
         §1J§();
         §8"V§(this.§7#6§.userName || "");
         §&"_§.txtScore.text = §3!a§(this.§7#6§.§7"_§) || "0";
         if(this.§7#6§.§["Q§ <= 3)
         {
            §&"_§.mcCrown.visible = true;
            §&"_§.txtRank.visible = false;
            §&"_§.mcCrown.gotoAndStop(this.§7#6§.§["Q§);
         }
         else
         {
            §&"_§.mcCrown.visible = false;
            §&"_§.txtRank.visible = true;
            §&"_§.txtRank.text = this.§7#6§.§["Q§.toString() || "";
         }
      }
      
      private function get §7#6§() : §`#1§
      {
         return §`#1§(data);
      }
   }
}
