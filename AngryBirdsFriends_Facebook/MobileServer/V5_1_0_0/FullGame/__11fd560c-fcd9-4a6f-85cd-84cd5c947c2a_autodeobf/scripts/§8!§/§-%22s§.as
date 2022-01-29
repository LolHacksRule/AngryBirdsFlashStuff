package §8!§
{
   import §2G§.§""F§;
   import §2G§.§&"+§;
   import §[#[§.§=#Q§;
   import §`!e§.§=Z§;
   import com.rovio.assets.§!"f§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §-"s§ extends §2$-§ implements §[g§
   {
       
      
      private var §`!!§:MovieClip;
      
      public function §-"s§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.§`!!§ = new §!"f§.§##?§("com.angrybirds.friendsbar.TournamentChallengePlateAsset")());
         this.§`!!§.tabChildren = false;
      }
      
      override public function update() : void
      {
         if(!this.§^#!§)
         {
            return;
         }
         updatePhoto();
         §=#Q§.§0$,§(this.§`!!§.txtName,this.§^#!§.userName || "");
         this.§`!!§.btnChallenge.visible = !this.§^#!§.§8#W§;
         this.§`!!§.challengeSent.visible = this.§^#!§.§8#W§;
         §+!,§();
         this.§`!!§.btnChallenge.addEventListener(MouseEvent.CLICK,this.§-$=§,false,0,true);
      }
      
      private function §-$=§(param1:MouseEvent) : void
      {
         dispatchEvent(new §=Z§(§=Z§.§1d§,this.data,true));
         §&"+§.§6!§.§1#$§(this.§^#!§.userId);
         this.§^#!§.§8#W§ = true;
         this.§`!!§.btnChallenge.visible = !this.§^#!§.§8#W§;
         this.§`!!§.challengeSent.visible = this.§^#!§.§8#W§;
      }
      
      public function setCanSendGift(param1:Boolean, param2:Boolean) : void
      {
         §0#U§.setCanSendGift(param1,param2);
      }
      
      public function get §^#!§() : §""F§
      {
         return data as §""F§;
      }
   }
}
