package §<m§
{
   import §2!,§.§3!S§;
   import com.AngryBirds.friendsbar.OverallScorePlateAsset;
   
   public class §9O§ extends §"b§ implements §]<§
   {
       
      
      private var §7G§:OverallScorePlateAsset;
      
      public function §9O§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.§7G§ = new OverallScorePlateAsset());
         this.§7G§.§[e§.stop();
      }
      
      override public function update() : void
      {
         if(!data)
         {
            return;
         }
         this.§7G§.gotoAndStop(!!§<S§ ? 2 : 1);
         §>v§();
         this.§7G§.§@!Z§.text = this.§;"?§.userName || "";
         this.§7G§.§%"6§.text = this.§;"?§.§8U§.toString() || "0";
         this.§7G§.§`]§.text = this.§;"?§.§5!^§.toString() || "0";
         if(this.§;"?§.§]!S§ <= 3)
         {
            this.§7G§.§[e§.visible = true;
            this.§7G§.§`!"§.visible = false;
            this.§7G§.§[e§.gotoAndStop(this.§;"?§.§]!S§);
         }
         else
         {
            this.§7G§.§[e§.visible = false;
            this.§7G§.§`!"§.visible = true;
            this.§7G§.§`!"§.text = this.§;"?§.§]!S§.toString() || "";
         }
         §>@§();
      }
      
      public function setCanSendGift(param1:Boolean, param2:Boolean) : void
      {
         §@M§.setCanSendGift(param1,param2);
      }
      
      private function get §;"?§() : §3!S§
      {
         return data as §3!S§;
      }
   }
}
