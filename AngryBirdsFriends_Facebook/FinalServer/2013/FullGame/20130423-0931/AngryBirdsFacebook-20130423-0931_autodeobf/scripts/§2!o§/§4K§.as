package §2!o§
{
   import §@!"§.§?l§;
   import com.angrybirds.friendsbar.ButtonMiniGift_Plates;
   import com.angrybirds.friendsbar.MiniGiftCheckmarkAnimation;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §4K§
   {
       
      
      public var §<!6§:Sprite;
      
      private var §#"2§:ButtonMiniGift_Plates;
      
      private var §!V§:MiniGiftCheckmarkAnimation;
      
      public function §4K§()
      {
         super();
         this.§<!6§ = new Sprite();
         this.§#"2§ = new ButtonMiniGift_Plates();
         this.§<!6§.addChild(this.§#"2§);
      }
      
      public function get §[8§() : ButtonMiniGift_Plates
      {
         return this.§#"2§;
      }
      
      public function setCanSendGift(param1:Boolean, param2:Boolean) : void
      {
         if(param1 == false)
         {
            this.§#"2§.visible = false;
            if(param2)
            {
               this.§!V§ = new MiniGiftCheckmarkAnimation();
               this.§<!6§.addChild(this.§!V§);
               §?l§.§ "G§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame,false,0,true);
               this.§!V§.play();
            }
         }
         else
         {
            this.§#"2§.visible = true;
            this.§'!J§();
         }
      }
      
      private function §'!J§() : void
      {
         if(this.§!V§)
         {
            if(this.§<!6§.contains(this.§!V§))
            {
               this.§<!6§.removeChild(this.§!V§);
            }
            §?l§.§ "G§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            this.§!V§ = null;
         }
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§!V§)
         {
            if(this.§!V§.currentFrame == this.§!V§.totalFrames)
            {
               this.§'!J§();
            }
         }
      }
   }
}
