package §=E§
{
   import §-n§.§!h§;
   import §^!U§.§39§;
   import §^!U§.§7@§;
   import com.angrybirds.friendsbar.TournamentChallengePlateAsset;
   import flash.events.MouseEvent;
   
   public class §5!l§ extends §"<§ implements §[K§
   {
       
      
      private var §'o§:TournamentChallengePlateAsset;
      
      public function §5!l§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.§'o§ = new TournamentChallengePlateAsset());
      }
      
      override public function update() : void
      {
         if(!this.§^"-§)
         {
            return;
         }
         §^9§();
         this.§'o§.§'!W§.text = this.§^"-§.userName || "";
         this.§'o§.§#2§.visible = !this.§^"-§.§>!h§;
         this.§'o§.§;!X§.visible = this.§^"-§.§>!h§;
         §%!h§();
         this.§'o§.§#2§.addEventListener(MouseEvent.CLICK,this.§0!C§,false,0,true);
      }
      
      private function §0!C§(param1:MouseEvent) : void
      {
         dispatchEvent(new §!h§(§!h§.§=>§,this.data,true));
         §7@§.§1[§.§&!f§(this.data.userId);
         this.§^"-§.§>!h§ = true;
         this.§'o§.§#2§.visible = !this.§^"-§.§>!h§;
         this.§'o§.§;!X§.visible = this.§^"-§.§>!h§;
      }
      
      public function setCanSendGift(param1:Boolean, param2:Boolean) : void
      {
         §;!K§.setCanSendGift(param1,param2);
      }
      
      public function get §^"-§() : §39§
      {
         return data as §39§;
      }
   }
}
