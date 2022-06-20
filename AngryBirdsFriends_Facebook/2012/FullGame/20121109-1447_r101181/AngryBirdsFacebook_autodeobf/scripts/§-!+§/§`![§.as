package §-!+§
{
   import §,"2§.§;6§;
   import §]!>§.§,;§;
   import §]!>§.§0!!§;
   import com.angrybirds.friendsbar.TournamentChallengePlateAsset;
   import flash.events.MouseEvent;
   
   public class §`![§ extends §=G§ implements §1C§
   {
       
      
      private var §,@§:TournamentChallengePlateAsset;
      
      public function §`![§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.§,@§ = new TournamentChallengePlateAsset());
      }
      
      override public function update() : void
      {
         if(!this.§1E§)
         {
            return;
         }
         §8""§();
         this.§,@§.§'J§.text = this.§1E§.userName || "";
         this.§,@§.§==§.visible = !this.§1E§.§^!Z§;
         this.§,@§.§#!,§.visible = this.§1E§.§^!Z§;
         §`!§();
         this.§,@§.§==§.addEventListener(MouseEvent.CLICK,this.§1;§,false,0,true);
      }
      
      private function §1;§(param1:MouseEvent) : void
      {
         dispatchEvent(new §;6§(§;6§.§<!e§,this.data,true));
         §0!!§.§;"§.§=[§(this.data.userId);
         this.§1E§.§^!Z§ = true;
         this.§,@§.§==§.visible = !this.§1E§.§^!Z§;
         this.§,@§.§#!,§.visible = this.§1E§.§^!Z§;
      }
      
      public function setCanSendGift(param1:Boolean, param2:Boolean) : void
      {
         §6m§.setCanSendGift(param1,param2);
      }
      
      public function get §1E§() : §,;§
      {
         return data as §,;§;
      }
   }
}
