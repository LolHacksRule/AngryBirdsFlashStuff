package §2!o§
{
   import §,l§.§"6§;
   import com.AngryBirds.friendsbar.OverallScorePlateAsset;
   
   public class §7!Z§ extends §`2§ implements §0!o§
   {
       
      
      private var § ;§:OverallScorePlateAsset;
      
      public function §7!Z§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.§ ;§ = new OverallScorePlateAsset());
         this.§ ;§.§8%§.stop();
      }
      
      override public function update() : void
      {
         if(!data)
         {
            return;
         }
         this.§ ;§.gotoAndStop(!!§]F§ ? 2 : 1);
         §2!l§();
         this.§ ;§.§[m§.text = this.§,[§.userName || "";
         this.§ ;§.§ !^§.text = this.§,[§.§1!B§.toString() || "0";
         this.§ ;§.§^R§.text = this.§,[§.§[![§.toString() || "0";
         if(this.§,[§.§'Q§ <= 3)
         {
            this.§ ;§.§8%§.visible = true;
            this.§ ;§.§,"<§.visible = false;
            this.§ ;§.§8%§.gotoAndStop(this.§,[§.§'Q§);
         }
         else
         {
            this.§ ;§.§8%§.visible = false;
            this.§ ;§.§,"<§.visible = true;
            this.§ ;§.§,"<§.text = this.§,[§.§'Q§.toString() || "";
         }
         §=!8§();
      }
      
      public function setCanSendGift(param1:Boolean, param2:Boolean) : void
      {
         §#"2§.setCanSendGift(param1,param2);
      }
      
      private function get §,[§() : §"6§
      {
         return data as §"6§;
      }
   }
}
