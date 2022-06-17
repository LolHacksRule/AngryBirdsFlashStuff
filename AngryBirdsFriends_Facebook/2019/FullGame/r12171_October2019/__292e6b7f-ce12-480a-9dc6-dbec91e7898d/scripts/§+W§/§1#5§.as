package §+W§
{
   import §,#,§.§4!g§;
   import §,#,§.§;#p§;
   import §7"X§.§2"R§;
   import §`"t§.§7"U§;
   import com.rovio.assets.§[a§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §1#5§ extends §2!$§ implements §@#K§
   {
       
      
      private var §"#E§:MovieClip;
      
      public function §1#5§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.§"#E§ = new §[a§.§8#k§("com.angrybirds.friendsbar.TournamentChallengePlateAsset")());
         this.§"#E§.tabChildren = false;
      }
      
      override public function update() : void
      {
         if(!this.§;2§)
         {
            return;
         }
         updatePhoto();
         §7"U§.§+$5§(this.§"#E§.txtName,this.§;2§.userName || "");
         this.§"#E§.btnChallenge.visible = !this.§;2§.§3"$§;
         this.§"#E§.challengeSent.visible = this.§;2§.§3"$§;
         §`"P§();
         this.§"#E§.btnChallenge.addEventListener(MouseEvent.CLICK,this.§##L§,false,0,true);
      }
      
      private function §##L§(param1:MouseEvent) : void
      {
         dispatchEvent(new §2"R§(§2"R§.§'"F§,this.data,true));
         §4!g§.§+!,§.§@%§(this.§;2§.userId);
         this.§;2§.§3"$§ = true;
         this.§"#E§.btnChallenge.visible = !this.§;2§.§3"$§;
         this.§"#E§.challengeSent.visible = this.§;2§.§3"$§;
      }
      
      public function setCanSendGift(param1:Boolean, param2:Boolean) : void
      {
         §;!#§.setCanSendGift(param1,param2);
      }
      
      public function get §;2§() : §;#p§
      {
         return data as §;#p§;
      }
   }
}
