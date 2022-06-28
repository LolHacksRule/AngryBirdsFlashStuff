package §5,§
{
   import com.AngryBirds.friendsbar.InvitePlateAsset;
   import flash.events.MouseEvent;
   
   public class §9!<§ extends BasePlate
   {
       
      
      private var §^!J§:InvitePlateAsset;
      
      public function §9!<§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.§^!J§ = new InvitePlateAsset());
         this.§^!J§.§9y§.mouseEnabled = false;
         this.§^!J§.addEventListener(MouseEvent.MOUSE_OVER,this.§5-§);
         this.§^!J§.addEventListener(MouseEvent.MOUSE_OUT,this.§]!1§);
         this.§^!J§.§%!!§.gotoAndStop(1);
      }
      
      override public function update() : void
      {
         if(!data)
         {
            return;
         }
         §3!P§();
         this.§^!J§.§9y§.text = data.userName || "";
      }
      
      private function §]!1§(event:MouseEvent) : void
      {
         this.§^!J§.§%!!§.gotoAndStop(1);
      }
      
      private function §5-§(event:MouseEvent) : void
      {
         this.§^!J§.§%!!§.gotoAndStop(2);
      }
   }
}
