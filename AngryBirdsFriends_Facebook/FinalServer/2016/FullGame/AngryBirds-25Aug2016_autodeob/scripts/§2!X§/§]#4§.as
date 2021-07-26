package §2!X§
{
   import §%$!§.§1#`§;
   import §%$!§.§^#l§;
   import §1!@§.§&#a§;
   import §9!s§.§!#d§;
   import com.rovio.assets.§@`§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §]#4§ extends §5$<§ implements §;z§
   {
       
      
      private var §["h§:MovieClip;
      
      public function §]#4§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.§["h§ = new §@`§.§4!i§("com.angrybirds.friendsbar.TournamentChallengePlateAsset")());
         this.§["h§.tabChildren = false;
      }
      
      override public function update() : void
      {
         if(!this.§^[§)
         {
            return;
         }
         updatePhoto();
         §&#a§.§^E§(this.§["h§.txtName,this.§^[§.userName || "");
         this.§["h§.btnChallenge.visible = !this.§^[§.§;O§;
         this.§["h§.challengeSent.visible = this.§^[§.§;O§;
         §0#V§();
         this.§["h§.btnChallenge.addEventListener(MouseEvent.CLICK,this.§[#4§,false,0,true);
      }
      
      private function §[#4§(param1:MouseEvent) : void
      {
         dispatchEvent(new §!#d§(§!#d§.§9T§,this.data,true));
         §1#`§.§3!]§.§5$;§(this.§^[§.userId);
         this.§^[§.§;O§ = true;
         this.§["h§.btnChallenge.visible = !this.§^[§.§;O§;
         this.§["h§.challengeSent.visible = this.§^[§.§;O§;
      }
      
      public function setCanSendGift(param1:Boolean, param2:Boolean) : void
      {
         §,!X§.setCanSendGift(param1,param2);
      }
      
      public function get §^[§() : §^#l§
      {
         return data as §^#l§;
      }
   }
}
