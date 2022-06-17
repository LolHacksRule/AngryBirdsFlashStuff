package §-!+§
{
   import §]!A§.;
   import com.angrybirds.friendsbar.ButtonMiniGift_Plates;
   import com.angrybirds.friendsbar.MiniGiftCheckmarkAnimation;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §`1§
   {
       
      
      public var §;Q§:Sprite;
      
      private var §6m§:ButtonMiniGift_Plates;
      
      private var § null§:MiniGiftCheckmarkAnimation;
      
      public function §`1§()
      {
         super();
         this.§;Q§ = new Sprite();
         this.§6m§ = new ButtonMiniGift_Plates();
         this.§;Q§.addChild(this.§6m§);
      }
      
      public function get §5!K§() : ButtonMiniGift_Plates
      {
         return this.§6m§;
      }
      
      public function setCanSendGift(param1:Boolean, param2:Boolean) : void
      {
         if(param1 == false)
         {
            this.§6m§.visible = false;
            if(param2)
            {
               this.§ null§ = new MiniGiftCheckmarkAnimation();
               this.§;Q§.addChild(this.§ null§);
               §#6§.§ q§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame,false,0,true);
               this.§ null§.play();
            }
         }
         else
         {
            this.§6m§.visible = true;
            this.§^C§();
         }
      }
      
      private function §^C§() : void
      {
         if(this.§ null§)
         {
            if(this.§;Q§.contains(this.§ null§))
            {
               this.§;Q§.removeChild(this.§ null§);
            }
            §#6§.§ q§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            this.§ null§ = null;
         }
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§ null§)
         {
            if(this.§ null§.currentFrame == this.§ null§.totalFrames)
            {
               this.§^C§();
            }
         }
      }
   }
}
