package §1"a§
{
   import §]Q§.§&#P§;
   import com.rovio.assets.§5_§;
   import flash.events.MouseEvent;
   
   public class §6-§ extends §8!N§
   {
       
      
      public function §6-§()
      {
         this.init();
         super();
      }
      
      private function init() : void
      {
         addChild(§5!-§ = new §5_§.§`"G§("com.angrybirds.friendsbar.ChallengePlateAsset")());
         §5!-§.txtName.mouseEnabled = false;
         §5!-§.tabEnabled = §5!-§.tabChildren = false;
         addEventListener(MouseEvent.CLICK,this.§["O§);
      }
      
      override public function update() : void
      {
         if(!data)
         {
            return;
         }
         §<"9§();
         §^"d§(data.userName || "");
      }
      
      private function §["O§(param1:MouseEvent) : void
      {
         dispatchEvent(new §&#P§(§&#P§.CHALLENGE,true));
      }
      
      override protected function get removeAnimationClassName() : String
      {
         return "com.angrybirds.friendsbar.AnimationChallengeSent";
      }
   }
}
