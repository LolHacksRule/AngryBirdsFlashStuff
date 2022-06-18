package §2!u§
{
   import §"!>§.§'!x§;
   import §8"b§.§&!b§;
   import §]"'§.§,#[§;
   import §]"'§.§-!#§;
   import com.rovio.assets.§2"O§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §5#T§ extends §^#h§ implements §'!9§
   {
       
      
      private var §#"r§:MovieClip;
      
      public function §5#T§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.§#"r§ = new §2"O§.§`>§("com.angrybirds.friendsbar.TournamentChallengePlateAsset")());
         this.§#"r§.tabChildren = false;
      }
      
      override public function update() : void
      {
         if(!this.§]"V§)
         {
            return;
         }
         updatePhoto();
         §&!b§.§9G§(this.§#"r§.txtName,this.§]"V§.userName || "");
         this.§#"r§.btnChallenge.visible = !this.§]"V§.§"L§;
         this.§#"r§.challengeSent.visible = this.§]"V§.§"L§;
         §]r§();
         this.§#"r§.btnChallenge.addEventListener(MouseEvent.CLICK,this.§ !4§,false,0,true);
      }
      
      private function § !4§(param1:MouseEvent) : void
      {
         dispatchEvent(new §'!x§(§'!x§.§[R§,this.data,true));
         §-!#§.§?q§.§1">§(this.§]"V§.userId);
         this.§]"V§.§"L§ = true;
         this.§#"r§.btnChallenge.visible = !this.§]"V§.§"L§;
         this.§#"r§.challengeSent.visible = this.§]"V§.§"L§;
      }
      
      public function setCanSendGift(param1:Boolean, param2:Boolean) : void
      {
         §^!W§.setCanSendGift(param1,param2);
      }
      
      public function get §]"V§() : §,#[§
      {
         return data as §,#[§;
      }
   }
}
