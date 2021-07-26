package §5" §
{
   import com.rovio.assets.§6$A§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §,!7§ extends Sprite
   {
      
      public static const §'!9§:String = "CheckmarkAnimationCompleted";
       
      
      private var §;#J§:MovieClip;
      
      public function §,!7§()
      {
         super();
         var _loc1_:Class = §6$A§.§1!m§("ItemBoughtCheckmark");
         this.§;#J§ = new _loc1_();
         this.§;#J§.gotoAndPlay(1);
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         addChild(this.§;#J§);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§;#J§.currentFrame >= this.§;#J§.totalFrames)
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
         dispatchEvent(new Event(§'!9§));
      }
   }
}
