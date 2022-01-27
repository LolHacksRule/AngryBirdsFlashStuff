package §%"q§
{
   import §[!`§.§#e§;
   import com.rovio.assets.§5"]§;
   import flash.events.MouseEvent;
   
   public class §@"7§ extends §]#§
   {
       
      
      public function §@"7§()
      {
         this.init();
         super();
      }
      
      private function init() : void
      {
         addChild(§&"_§ = new §5"]§.§4!K§("com.AngryBirds.friendsbar.InvitePlateAsset")());
         §&"_§.txtName.mouseEnabled = false;
         §&"_§.tabEnabled = §&"_§.tabChildren = false;
         addEventListener(MouseEvent.CLICK,this.§[!e§);
      }
      
      override public function update() : void
      {
         super.update();
         if(!data)
         {
            return;
         }
         §1J§();
         §8"V§(data.userName || "");
      }
      
      private function §[!e§(param1:MouseEvent) : void
      {
         if(§&"_§.visible)
         {
            dispatchEvent(new §#e§(§#e§.§%!-§,true));
         }
      }
      
      override protected function get removeAnimationClassName() : String
      {
         return "com.angrybirds.friendsbar.AnimationInviteSent";
      }
   }
}
