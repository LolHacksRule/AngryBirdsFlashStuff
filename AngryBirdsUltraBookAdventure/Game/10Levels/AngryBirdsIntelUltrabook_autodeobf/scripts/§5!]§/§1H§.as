package §5!]§
{
   import com.AngryBirds.friendsbar.InvitePlateAsset;
   import flash.events.MouseEvent;
   
   public class §1H§ extends BasePlate
   {
       
      
      private var §&!K§:InvitePlateAsset;
      
      public function §1H§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.§&!K§ = new InvitePlateAsset());
         this.§&!K§.§!'§.mouseEnabled = false;
         this.§&!K§.addEventListener(MouseEvent.MOUSE_OVER,this.§ !;§);
         this.§&!K§.addEventListener(MouseEvent.MOUSE_OUT,this.§[k§);
         this.§&!K§.§>!O§.gotoAndStop(1);
      }
      
      override public function update() : void
      {
         if(!data)
         {
            return;
         }
         §-2§();
         this.§&!K§.§!'§.text = data.userName || "";
      }
      
      private function §[k§(event:MouseEvent) : void
      {
         this.§&!K§.§>!O§.gotoAndStop(1);
      }
      
      private function § !;§(event:MouseEvent) : void
      {
         this.§&!K§.§>!O§.gotoAndStop(2);
      }
   }
}
