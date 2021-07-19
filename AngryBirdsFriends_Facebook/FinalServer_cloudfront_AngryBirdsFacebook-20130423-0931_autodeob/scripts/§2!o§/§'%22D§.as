package §2!o§
{
   import §,l§.§ !Q§;
   import §,l§.§4"7§;
   import §;!d§.§6"L§;
   import com.angrybirds.friendsbar.TournamentChallengePlateAsset;
   import flash.events.MouseEvent;
   
   public class §'"D§ extends §`2§ implements §0!o§
   {
       
      
      private var § ;§:TournamentChallengePlateAsset;
      
      public function §'"D§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.§ ;§ = new TournamentChallengePlateAsset());
      }
      
      override public function update() : void
      {
         if(!this.§!"'§)
         {
            return;
         }
         §2!l§();
         this.§ ;§.§[m§.text = this.§!"'§.userName || "";
         this.§ ;§.§+o§.visible = !this.§!"'§.§,!C§;
         this.§ ;§.§;v§.visible = this.§!"'§.§,!C§;
         §=!8§();
         this.§ ;§.§+o§.addEventListener(MouseEvent.CLICK,this.§#!W§,false,0,true);
      }
      
      private function §#!W§(param1:MouseEvent) : void
      {
         dispatchEvent(new §6"L§(§6"L§.§[!@§,this.data,true));
         §4"7§.§&"5§.§^8§(this.data.userId);
         this.§!"'§.§,!C§ = true;
         this.§ ;§.§+o§.visible = !this.§!"'§.§,!C§;
         this.§ ;§.§;v§.visible = this.§!"'§.§,!C§;
      }
      
      public function setCanSendGift(param1:Boolean, param2:Boolean) : void
      {
         §#"2§.setCanSendGift(param1,param2);
      }
      
      public function get §!"'§() : § !Q§
      {
         return data as § !Q§;
      }
   }
}
