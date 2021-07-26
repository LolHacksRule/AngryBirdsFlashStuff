package §=E§
{
   import §^!U§.§!8§;
   import com.AngryBirds.friendsbar.OverallScorePlateAsset;
   
   public class §;!q§ extends §"<§ implements §[K§
   {
       
      
      private var §'o§:OverallScorePlateAsset;
      
      public function §;!q§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.§'o§ = new OverallScorePlateAsset());
         this.§'o§.§0!r§.stop();
      }
      
      override public function update() : void
      {
         if(!data)
         {
            return;
         }
         this.§'o§.gotoAndStop(!!§4R§ ? 2 : 1);
         §^9§();
         this.§'o§.§'!W§.text = this.§;!#§.userName || "";
         this.§'o§.§%W§.text = this.§;!#§.§;!x§.toString() || "0";
         this.§'o§.§]E§.text = this.§;!#§.§%u§.toString() || "0";
         if(this.§;!#§.§+!r§ <= 3)
         {
            this.§'o§.§0!r§.visible = true;
            this.§'o§.§[j§.visible = false;
            this.§'o§.§0!r§.gotoAndStop(this.§;!#§.§+!r§);
         }
         else
         {
            this.§'o§.§0!r§.visible = false;
            this.§'o§.§[j§.visible = true;
            this.§'o§.§[j§.text = this.§;!#§.§+!r§.toString() || "";
         }
         §%!h§();
      }
      
      public function setCanSendGift(param1:Boolean, param2:Boolean) : void
      {
         §;!K§.setCanSendGift(param1,param2);
      }
      
      private function get §;!#§() : §!8§
      {
         return data as §!8§;
      }
   }
}
