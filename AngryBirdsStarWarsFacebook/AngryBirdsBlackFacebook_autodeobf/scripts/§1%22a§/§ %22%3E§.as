package §1"a§
{
   import §"k§.§4#G§;
   import com.rovio.assets.§5_§;
   
   public class § ">§ extends §"!w§
   {
       
      
      public function § ">§()
      {
         this.init();
         super();
      }
      
      private function init() : void
      {
         addChild(§5!-§ = new §5_§.§`"G§("com.angrybirds.friendsbar.TournamentTotalScorePlateAsset")());
         §5!-§.mcCrown.stop();
      }
      
      override public function update() : void
      {
         if(!data)
         {
            return;
         }
         super.update();
         §5!-§.gotoAndStop(!!§?r§ ? 2 : 1);
         §<"9§();
         §^"d§(this.§;#P§.userName || "");
         §5!-§.txtScore.text = §@#F§(this.§;#P§.§]"q§) || "0";
         if(this.§;#P§.§9!<§ <= 3)
         {
            §5!-§.mcCrown.visible = true;
            §5!-§.txtRank.visible = false;
            §5!-§.mcCrown.gotoAndStop(this.§;#P§.§9!<§);
         }
         else
         {
            §5!-§.mcCrown.visible = false;
            §5!-§.txtRank.visible = true;
            §5!-§.txtRank.text = this.§;#P§.§9!<§.toString() || "";
         }
      }
      
      private function get §;#P§() : §4#G§
      {
         return §4#G§(data);
      }
   }
}
