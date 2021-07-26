package §`D§
{
   import com.rovio.assets.§[a§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §^!-§ extends Sprite
   {
      
      public static const §3!L§:String = "CheckmarkAnimationCompleted";
       
      
      private var §?$<§:MovieClip;
      
      public function §^!-§()
      {
         super();
         var _loc1_:Class = §[a§.§8#k§("ItemBoughtCheckmark");
         this.§?$<§ = new _loc1_();
         this.§?$<§.gotoAndPlay(1);
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         addChild(this.§?$<§);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§?$<§.currentFrame >= this.§?$<§.totalFrames)
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
         dispatchEvent(new Event(§3!L§));
      }
   }
}
