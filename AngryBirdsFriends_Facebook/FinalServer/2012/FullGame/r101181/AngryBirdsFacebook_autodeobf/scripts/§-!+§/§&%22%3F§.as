package §-!+§
{
   import §]!>§.§>+§;
   import com.AngryBirds.friendsbar.OverallScorePlateAsset;
   
   public class §&"?§ extends §=G§ implements §1C§
   {
       
      
      private var §,@§:OverallScorePlateAsset;
      
      public function §&"?§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.§,@§ = new OverallScorePlateAsset());
         this.§,@§.§9"9§.stop();
      }
      
      override public function update() : void
      {
         if(!data)
         {
            return;
         }
         this.§,@§.gotoAndStop(!!§,!]§ ? 2 : 1);
         §8""§();
         this.§,@§.§'J§.text = this.§&u§.userName || "";
         this.§,@§.§]!3§.text = this.§&u§.§2!0§.toString() || "0";
         this.§,@§.§%"0§.text = this.§&u§.§>!v§.toString() || "0";
         if(this.§&u§.§9!Y§ <= 3)
         {
            this.§,@§.§9"9§.visible = true;
            this.§,@§.§%!Z§.visible = false;
            this.§,@§.§9"9§.gotoAndStop(this.§&u§.§9!Y§);
         }
         else
         {
            this.§,@§.§9"9§.visible = false;
            this.§,@§.§%!Z§.visible = true;
            this.§,@§.§%!Z§.text = this.§&u§.§9!Y§.toString() || "";
         }
         §`!§();
      }
      
      public function setCanSendGift(param1:Boolean, param2:Boolean) : void
      {
         §6m§.setCanSendGift(param1,param2);
      }
      
      private function get §&u§() : §>+§
      {
         return data as §>+§;
      }
   }
}
