package §#r§
{
   import com.AngryBirds.friendsbar.InvitePlateAsset;
   import flash.events.MouseEvent;
   
   public class §^<§ extends BasePlate
   {
       
      
      private var §[!8§:InvitePlateAsset;
      
      public function §^<§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.§[!8§ = new InvitePlateAsset());
         this.§[!8§.§@I§.mouseEnabled = false;
         this.§[!8§.addEventListener(MouseEvent.MOUSE_OVER,this.§-!5§);
         this.§[!8§.addEventListener(MouseEvent.MOUSE_OUT,this.§;^§);
         this.§[!8§.§ !_§.gotoAndStop(1);
      }
      
      override public function update() : void
      {
         if(!data)
         {
            return;
         }
         §]C§();
         this.§[!8§.§@I§.text = data.userName || "";
      }
      
      private function §;^§(event:MouseEvent) : void
      {
         this.§[!8§.§ !_§.gotoAndStop(1);
      }
      
      private function §-!5§(event:MouseEvent) : void
      {
         this.§[!8§.§ !_§.gotoAndStop(2);
      }
   }
}
