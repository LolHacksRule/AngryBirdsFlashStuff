package §=!G§
{
   import §"d§.§%-§;
   import com.rovio.assets.§%!Z§;
   import flash.events.MouseEvent;
   
   public class §4!"§ extends §1x§
   {
       
      
      public function §4!"§()
      {
         this.init();
         super();
      }
      
      private function init() : void
      {
         addChild(§,# § = new §%!Z§.§;",§("com.angrybirds.friendsbar.ChallengePlateAsset")());
         §,# §.txtName.mouseEnabled = false;
         §,# §.tabEnabled = §,# §.tabChildren = false;
         addEventListener(MouseEvent.CLICK,this.§[!`§);
      }
      
      override public function update() : void
      {
         if(!data)
         {
            return;
         }
         §0!Q§();
         §[!_§(data.userName || "");
      }
      
      private function §[!`§(param1:MouseEvent) : void
      {
         dispatchEvent(new §%-§(§%-§.CHALLENGE,true));
      }
      
      override protected function get removeAnimationClassName() : String
      {
         return "com.angrybirds.friendsbar.AnimationChallengeSent";
      }
   }
}
