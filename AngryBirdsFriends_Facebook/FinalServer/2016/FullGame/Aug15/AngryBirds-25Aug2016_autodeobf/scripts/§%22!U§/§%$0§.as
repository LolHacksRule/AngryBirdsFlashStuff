package §"!U§
{
   import com.rovio.assets.§@`§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §%$0§ extends Sprite
   {
      
      public static const §>$;§:String = "CheckmarkAnimationCompleted";
       
      
      private var §?""§:MovieClip;
      
      public function §%$0§()
      {
         super();
         var _loc1_:Class = §@`§.§4!i§("ItemBoughtCheckmark");
         this.§?""§ = new _loc1_();
         this.§?""§.gotoAndPlay(1);
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         addChild(this.§?""§);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§?""§.currentFrame >= this.§?""§.totalFrames)
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
         dispatchEvent(new Event(§>$;§));
      }
   }
}
