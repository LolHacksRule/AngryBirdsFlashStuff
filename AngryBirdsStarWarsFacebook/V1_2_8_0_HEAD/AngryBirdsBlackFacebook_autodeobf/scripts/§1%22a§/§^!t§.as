package §1"a§
{
   import §]Q§.§&#P§;
   import com.rovio.assets.§5_§;
   import flash.events.MouseEvent;
   
   public class §^!t§ extends §8!N§
   {
       
      
      public function §^!t§()
      {
         this.init();
         super();
      }
      
      private function init() : void
      {
         addChild(§5!-§ = new §5_§.§`"G§("com.AngryBirds.friendsbar.InvitePlateAsset")());
         §5!-§.txtName.mouseEnabled = false;
         §5!-§.tabEnabled = §5!-§.tabChildren = false;
         addEventListener(MouseEvent.CLICK,this.§[#Q§);
      }
      
      override public function update() : void
      {
         super.update();
         if(!data)
         {
            return;
         }
         §<"9§();
         §^"d§(data.userName || "");
      }
      
      private function §[#Q§(param1:MouseEvent) : void
      {
         if(§5!-§.visible)
         {
            dispatchEvent(new §&#P§(§&#P§.§,"=§,true));
         }
      }
      
      override protected function get removeAnimationClassName() : String
      {
         return "com.angrybirds.friendsbar.AnimationInviteSent";
      }
   }
}
