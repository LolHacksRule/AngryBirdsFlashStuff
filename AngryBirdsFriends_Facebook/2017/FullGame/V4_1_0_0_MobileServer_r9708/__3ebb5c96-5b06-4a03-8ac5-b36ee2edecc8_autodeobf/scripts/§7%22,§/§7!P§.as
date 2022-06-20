package §7",§
{
   import com.rovio.assets.§+$#§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §7!P§ extends Sprite
   {
      
      public static const § J§:String = "CheckmarkAnimationCompleted";
       
      
      private var §;!§:MovieClip;
      
      public function §7!P§()
      {
         super();
         var _loc1_:Class = §+$#§.§["`§("ItemBoughtCheckmark");
         this.§;!§ = new _loc1_();
         this.§;!§.gotoAndPlay(1);
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         addChild(this.§;!§);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§;!§.currentFrame >= this.§;!§.totalFrames)
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
         dispatchEvent(new Event(§ J§));
      }
   }
}
