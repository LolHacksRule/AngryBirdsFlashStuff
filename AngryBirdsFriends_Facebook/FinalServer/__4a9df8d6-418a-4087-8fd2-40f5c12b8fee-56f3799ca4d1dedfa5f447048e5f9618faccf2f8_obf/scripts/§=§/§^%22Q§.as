package §=§#0
{
   import §!#C§.§1%§;
   import §!#C§.§4"p§;
   import §"!n§.§;"x§;
   import §?!]§.§6#k§;
   import com.rovio.assets.§6$A§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §^"Q§ extends § #i§ implements §0V§
   {
       
      
      private var §8"@§:MovieClip;
      
      public function §^"Q§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.§8"@§ = new §6$A§.§1!m§("com.angrybirds.friendsbar.TournamentChallengePlateAsset")());
         this.§8"@§.tabChildren = false;
      }
      
      override public function update() : void
      {
         if(!this.§<!O§)
         {
            return;
         }
         updatePhoto();
         §;"x§.§+>§(this.§8"@§.txtName,this.§<!O§.userName || "");
         this.§8"@§.btnChallenge.visible = !this.§<!O§.§[$0§;
         this.§8"@§.challengeSent.visible = this.§<!O§.§[$0§;
         §+!$§();
         this.§8"@§.btnChallenge.addEventListener(MouseEvent.CLICK,this.§+!O§,false,0,true);
      }
      
      private function §+!O§(param1:MouseEvent) : void
      {
         dispatchEvent(new §6#k§(§6#k§.§4!x§,this.data,true));
         §1%§.§`"H§.§=#S§(this.§<!O§.userId);
         this.§<!O§.§[$0§ = true;
         this.§8"@§.btnChallenge.visible = !this.§<!O§.§[$0§;
         this.§8"@§.challengeSent.visible = this.§<!O§.§[$0§;
      }
      
      public function setCanSendGift(param1:Boolean, param2:Boolean) : void
      {
         §6-§.setCanSendGift(param1,param2);
      }
      
      public function get §<!O§() : §4"p§
      {
         return data as §4"p§;
      }
   }
}
