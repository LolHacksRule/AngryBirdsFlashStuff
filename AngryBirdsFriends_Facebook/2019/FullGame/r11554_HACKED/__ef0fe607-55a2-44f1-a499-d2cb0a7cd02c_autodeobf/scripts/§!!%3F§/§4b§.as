package §!!?§
{
   import com.rovio.assets.§2"O§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §4b§ extends Sprite
   {
      
      public static const §[S§:String = "CheckmarkAnimationCompleted";
       
      
      private var §!"!§:MovieClip;
      
      public function §4b§()
      {
         super();
         var _loc1_:Class = §2"O§.§`>§("ItemBoughtCheckmark");
         this.§!"!§ = new _loc1_();
         this.§!"!§.gotoAndPlay(1);
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         addChild(this.§!"!§);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§!"!§.currentFrame >= this.§!"!§.totalFrames)
         {
            this.dispose();
         }
      }
      
      private function dispose() : void
      {
         removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         if(parent && parent.contains(this))
         {
            parent.removeChild(this);
         }
         dispatchEvent(new Event(§[S§));
      }
   }
}
