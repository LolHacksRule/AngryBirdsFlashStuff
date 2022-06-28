package §#!"§
{
   import com.AngryBirds.friendsbar.InvitePlateAsset;
   import flash.events.MouseEvent;
   
   public class §5!W§ extends §+M§
   {
       
      
      private var §0!p§:InvitePlateAsset;
      
      public function §5!W§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.§0!p§ = new InvitePlateAsset());
         this.§0!p§.§ F§.mouseEnabled = false;
         this.§0!p§.addEventListener(MouseEvent.MOUSE_OVER,this.§^!l§);
         this.§0!p§.addEventListener(MouseEvent.MOUSE_OUT,this.§ r§);
         this.§0!p§.§4v§.gotoAndStop(1);
      }
      
      override public function update() : void
      {
         if(!data)
         {
            return;
         }
         §!R§();
         this.§0!p§.§ F§.text = data.userName || "";
      }
      
      private function § r§(param1:MouseEvent) : void
      {
         this.§0!p§.§4v§.gotoAndStop(1);
      }
      
      private function §^!l§(param1:MouseEvent) : void
      {
         this.§0!p§.§4v§.gotoAndStop(2);
      }
   }
}
