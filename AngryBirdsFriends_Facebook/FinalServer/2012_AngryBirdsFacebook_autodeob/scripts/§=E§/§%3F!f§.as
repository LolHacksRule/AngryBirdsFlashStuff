package §=E§
{
   import §5!G§.§&2§;
   import com.angrybirds.friendsbar.ButtonMiniGift_Plates;
   import com.angrybirds.friendsbar.MiniGiftCheckmarkAnimation;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §?!f§
   {
       
      
      public var §=!8§:Sprite;
      
      private var §;!K§:ButtonMiniGift_Plates;
      
      private var §1g§:MiniGiftCheckmarkAnimation;
      
      public function §?!f§()
      {
         super();
         this.§=!8§ = new Sprite();
         this.§;!K§ = new ButtonMiniGift_Plates();
         this.§=!8§.addChild(this.§;!K§);
      }
      
      public function get §`!k§() : ButtonMiniGift_Plates
      {
         return this.§;!K§;
      }
      
      public function setCanSendGift(param1:Boolean, param2:Boolean) : void
      {
         if(param1 == false)
         {
            this.§;!K§.visible = false;
            if(param2)
            {
               this.§1g§ = new MiniGiftCheckmarkAnimation();
               this.§=!8§.addChild(this.§1g§);
               §&2§.§5!k§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame,false,0,true);
               this.§1g§.play();
            }
         }
         else
         {
            this.§;!K§.visible = true;
            this.§>V§();
         }
      }
      
      private function §>V§() : void
      {
         if(this.§1g§)
         {
            if(this.§=!8§.contains(this.§1g§))
            {
               this.§=!8§.removeChild(this.§1g§);
            }
            §&2§.§5!k§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            this.§1g§ = null;
         }
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§1g§)
         {
            if(this.§1g§.currentFrame == this.§1g§.totalFrames)
            {
               this.§>V§();
            }
         }
      }
   }
}
