package §<z§
{
   import com.AngryBirds.friendsbar.InvitePlateAsset;
   import flash.events.MouseEvent;
   
   public class §8!9§ extends §1S§
   {
       
      
      private var §"v§:InvitePlateAsset;
      
      public function §8!9§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.§"v§ = new InvitePlateAsset());
         this.§"v§.§'!a§.mouseEnabled = false;
         this.§"v§.addEventListener(MouseEvent.MOUSE_OVER,this.§<!N§);
         this.§"v§.addEventListener(MouseEvent.MOUSE_OUT,this.§1!A§);
         this.§"v§.§>!S§.gotoAndStop(1);
      }
      
      override public function update() : void
      {
         if(!data)
         {
            return;
         }
         §3W§();
         this.§"v§.§'!a§.text = data.userName || "";
      }
      
      private function §1!A§(param1:MouseEvent) : void
      {
         this.§"v§.§>!S§.gotoAndStop(1);
      }
      
      private function §<!N§(param1:MouseEvent) : void
      {
         this.§"v§.§>!S§.gotoAndStop(2);
      }
   }
}
