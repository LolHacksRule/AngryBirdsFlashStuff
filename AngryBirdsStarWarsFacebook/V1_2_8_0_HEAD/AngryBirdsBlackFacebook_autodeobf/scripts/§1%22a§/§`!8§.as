package §1"a§
{
   import §"k§.§-!i§;
   import com.rovio.assets.§5_§;
   
   public class §`!8§ extends §"!w§
   {
       
      
      public function §`!8§()
      {
         this.init();
         super();
      }
      
      private function init() : void
      {
         addChild(§5!-§ = new §5_§.§`"G§("com.AngryBirds.friendsbar.OverallScorePlateAsset")());
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
         §^"d§(this.§+"3§.userName || "");
         §5!-§.txtFeathers.text = this.§+"3§.§0#!§.toString() || "0";
         §5!-§.txtStars.text = this.§+"3§.§[!F§.toString() || "0";
         if(this.§+"3§.§9!<§ <= 3)
         {
            §5!-§.mcCrown.visible = true;
            §5!-§.txtRank.visible = false;
            §5!-§.mcCrown.gotoAndStop(this.§+"3§.§9!<§);
         }
         else
         {
            §5!-§.mcCrown.visible = false;
            §5!-§.txtRank.visible = true;
            §5!-§.txtRank.text = this.§+"3§.§9!<§.toString() || "";
         }
      }
      
      private function get §+"3§() : §-!i§
      {
         return §-!i§(data);
      }
   }
}
