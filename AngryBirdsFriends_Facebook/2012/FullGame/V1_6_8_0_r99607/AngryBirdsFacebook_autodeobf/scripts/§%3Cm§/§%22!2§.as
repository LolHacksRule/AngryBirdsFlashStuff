package §<m§
{
   import §+I§.§9!%§;
   import com.angrybirds.friendsbar.ButtonMiniGift_Plates;
   import com.angrybirds.friendsbar.MiniGiftCheckmarkAnimation;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §"!2§
   {
       
      
      public var §!!C§:Sprite;
      
      private var §@M§:ButtonMiniGift_Plates;
      
      private var §1" §:MiniGiftCheckmarkAnimation;
      
      public function §"!2§()
      {
         super();
         this.§!!C§ = new Sprite();
         this.§@M§ = new ButtonMiniGift_Plates();
         this.§!!C§.addChild(this.§@M§);
      }
      
      public function get §9B§() : ButtonMiniGift_Plates
      {
         return this.§@M§;
      }
      
      public function setCanSendGift(param1:Boolean, param2:Boolean) : void
      {
         if(param1 == false)
         {
            this.§@M§.visible = false;
            if(param2)
            {
               this.§1" § = new MiniGiftCheckmarkAnimation();
               this.§!!C§.addChild(this.§1" §);
               §9!%§.§ !W§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame,false,0,true);
               this.§1" §.play();
            }
         }
         else
         {
            this.§@M§.visible = true;
            this.§#" §();
         }
      }
      
      private function §#" §() : void
      {
         if(this.§1" §)
         {
            if(this.§!!C§.contains(this.§1" §))
            {
               this.§!!C§.removeChild(this.§1" §);
            }
            §9!%§.§ !W§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            this.§1" § = null;
         }
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§1" §)
         {
            if(this.§1" §.currentFrame == this.§1" §.totalFrames)
            {
               this.§#" §();
            }
         }
      }
   }
}
