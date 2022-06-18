package §4#l§
{
   import com.rovio.assets.§=@§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §%"&§ extends Sprite
   {
      
      public static const §,$%§:String = "CheckmarkAnimationCompleted";
       
      
      private var §3t§:MovieClip;
      
      public function §%"&§()
      {
         super();
         var _loc1_:Class = §=@§.§9!x§("ItemBoughtCheckmark");
         this.§3t§ = new _loc1_();
         this.§3t§.gotoAndPlay(1);
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         addChild(this.§3t§);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§3t§.currentFrame >= this.§3t§.totalFrames)
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
         dispatchEvent(new Event(§,$%§));
      }
   }
}
