package §%"q§
{
   import §[!`§.§#e§;
   import com.rovio.assets.§5"]§;
   import flash.events.MouseEvent;
   
   public class §9!^§ extends §]#§
   {
       
      
      public function §9!^§()
      {
         this.init();
         super();
      }
      
      private function init() : void
      {
         addChild(§&"_§ = new §5"]§.§4!K§("com.angrybirds.friendsbar.ChallengePlateAsset")());
         §&"_§.txtName.mouseEnabled = false;
         §&"_§.tabEnabled = §&"_§.tabChildren = false;
         addEventListener(MouseEvent.CLICK,this.§5"J§);
      }
      
      override public function update() : void
      {
         if(!data)
         {
            return;
         }
         §1J§();
         §8"V§(data.userName || "");
      }
      
      private function §5"J§(param1:MouseEvent) : void
      {
         dispatchEvent(new §#e§(§#e§.CHALLENGE,true));
      }
      
      override protected function get removeAnimationClassName() : String
      {
         return "com.angrybirds.friendsbar.AnimationChallengeSent";
      }
   }
}
