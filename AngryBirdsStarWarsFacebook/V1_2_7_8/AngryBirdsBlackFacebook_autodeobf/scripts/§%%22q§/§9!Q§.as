package §%"q§
{
   import §`!b§.§?"S§;
   import com.rovio.assets.§5"]§;
   
   public class §9!Q§ extends §0!h§
   {
       
      
      public function §9!Q§()
      {
         this.init();
         super();
      }
      
      private function init() : void
      {
         addChild(§&"_§ = new §5"]§.§4!K§("com.AngryBirds.friendsbar.OverallScorePlateAsset")());
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
         §8"V§(this.§'!b§.userName || "");
         §&"_§.txtFeathers.text = this.§'!b§.§]!D§.toString() || "0";
         §&"_§.txtStars.text = this.§'!b§.§^"2§.toString() || "0";
         if(this.§'!b§.§["Q§ <= 3)
         {
            §&"_§.mcCrown.visible = true;
            §&"_§.txtRank.visible = false;
            §&"_§.mcCrown.gotoAndStop(this.§'!b§.§["Q§);
         }
         else
         {
            §&"_§.mcCrown.visible = false;
            §&"_§.txtRank.visible = true;
            §&"_§.txtRank.text = this.§'!b§.§["Q§.toString() || "";
         }
      }
      
      private function get §'!b§() : §?"S§
      {
         return §?"S§(data);
      }
   }
}
