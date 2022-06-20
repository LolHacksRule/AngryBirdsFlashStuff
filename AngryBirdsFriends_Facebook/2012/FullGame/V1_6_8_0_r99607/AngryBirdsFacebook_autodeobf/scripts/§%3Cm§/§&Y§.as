package §<m§
{
   import § !§.§?N§;
   import §2!,§.§!"§;
   import §2!,§.§%!j§;
   import com.angrybirds.friendsbar.TournamentChallengePlateAsset;
   import flash.events.MouseEvent;
   
   public class §&Y§ extends §"b§ implements §]<§
   {
       
      
      private var §7G§:TournamentChallengePlateAsset;
      
      public function §&Y§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.§7G§ = new TournamentChallengePlateAsset());
      }
      
      override public function update() : void
      {
         if(!this.§^!4§)
         {
            return;
         }
         §>v§();
         this.§7G§.§@!Z§.text = this.§^!4§.userName || "";
         this.§7G§.§`e§.visible = !this.§^!4§.§;L§;
         this.§7G§.§8f§.visible = this.§^!4§.§;L§;
         §>@§();
         this.§7G§.§`e§.addEventListener(MouseEvent.CLICK,this.§4!§,false,0,true);
      }
      
      private function §4!§(param1:MouseEvent) : void
      {
         dispatchEvent(new §?N§(§?N§.§`"<§,this.data,true));
         §!"§.§8c§.§[3§(this.data.userId);
         this.§^!4§.§;L§ = true;
         this.§7G§.§`e§.visible = !this.§^!4§.§;L§;
         this.§7G§.§8f§.visible = this.§^!4§.§;L§;
      }
      
      public function setCanSendGift(param1:Boolean, param2:Boolean) : void
      {
         §@M§.setCanSendGift(param1,param2);
      }
      
      public function get §^!4§() : §%!j§
      {
         return data as §%!j§;
      }
   }
}
