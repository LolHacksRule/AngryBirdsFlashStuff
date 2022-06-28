package §_-05L§
{
   import com.AngryBirds.friendsbar.InvitePlateAsset;
   import flash.events.MouseEvent;
   
   public class §_-uk§ extends §_-Po§
   {
       
      
      private var §_-nQ§:InvitePlateAsset;
      
      public function §_-uk§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.§_-nQ§ = new InvitePlateAsset());
         this.§_-nQ§.§_-AQ§.mouseEnabled = false;
         this.§_-nQ§.addEventListener(MouseEvent.MOUSE_OVER,this.§_-te§);
         this.§_-nQ§.addEventListener(MouseEvent.MOUSE_OUT,this.§_-35§);
         this.§_-nQ§.§_-VK§.gotoAndStop(1);
      }
      
      override public function update() : void
      {
         if(!data)
         {
            return;
         }
         §_-0-m§();
         this.§_-nQ§.§_-AQ§.text = data.userName || "";
      }
      
      private function §_-35§(param1:MouseEvent) : void
      {
         this.§_-nQ§.§_-VK§.gotoAndStop(1);
      }
      
      private function §_-te§(param1:MouseEvent) : void
      {
         this.§_-nQ§.§_-VK§.gotoAndStop(2);
      }
   }
}
