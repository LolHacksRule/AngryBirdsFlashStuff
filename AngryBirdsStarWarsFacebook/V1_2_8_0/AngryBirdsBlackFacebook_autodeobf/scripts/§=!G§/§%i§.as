package §=!G§
{
   import §"d§.§%-§;
   import com.rovio.assets.§%!Z§;
   import flash.events.MouseEvent;
   
   public class §%i§ extends §1x§
   {
       
      
      public function §%i§()
      {
         this.init();
         super();
      }
      
      private function init() : void
      {
         addChild(§,# § = new §%!Z§.§;",§("com.AngryBirds.friendsbar.InvitePlateAsset")());
         §,# §.txtName.mouseEnabled = false;
         §,# §.tabEnabled = §,# §.tabChildren = false;
         addEventListener(MouseEvent.CLICK,this.§-#'§);
      }
      
      override public function update() : void
      {
         super.update();
         if(!data)
         {
            return;
         }
         §0!Q§();
         §[!_§(data.userName || "");
      }
      
      private function §-#'§(param1:MouseEvent) : void
      {
         if(§,# §.visible)
         {
            dispatchEvent(new §%-§(§%-§.§!!Q§,true));
         }
      }
      
      override protected function get removeAnimationClassName() : String
      {
         return "com.angrybirds.friendsbar.AnimationInviteSent";
      }
   }
}
