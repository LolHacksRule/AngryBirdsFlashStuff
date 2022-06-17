package §3#q§
{
   import §!!H§.§ $4§;
   import §8#^§.§-B§;
   import §>#Y§.§5!0§;
   import §>#Y§.§6"k§;
   import com.rovio.assets.§=@§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §##,§ extends §8#>§ implements §8#'§
   {
       
      
      private var §'!L§:MovieClip;
      
      public function §##,§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.§'!L§ = new §=@§.§9!x§("com.angrybirds.friendsbar.TournamentChallengePlateAsset")());
         this.§'!L§.tabChildren = false;
      }
      
      override public function update() : void
      {
         if(!this.§["T§)
         {
            return;
         }
         updatePhoto();
         § $4§.§'#d§(this.§'!L§.txtName,this.§["T§.userName || "");
         this.§'!L§.btnChallenge.visible = !this.§["T§.§5"x§;
         this.§'!L§.challengeSent.visible = this.§["T§.§5"x§;
         §;"#§();
         this.§'!L§.btnChallenge.addEventListener(MouseEvent.CLICK,this.§&#X§,false,0,true);
      }
      
      private function §&#X§(param1:MouseEvent) : void
      {
         dispatchEvent(new §-B§(§-B§.§!# §,this.data,true));
         §6"k§.§3"1§.§@"L§(this.§["T§.userId);
         this.§["T§.§5"x§ = true;
         this.§'!L§.btnChallenge.visible = !this.§["T§.§5"x§;
         this.§'!L§.challengeSent.visible = this.§["T§.§5"x§;
      }
      
      public function setCanSendGift(param1:Boolean, param2:Boolean) : void
      {
         §,^§.setCanSendGift(param1,param2);
      }
      
      public function get §["T§() : §5!0§
      {
         return data as §5!0§;
      }
   }
}
