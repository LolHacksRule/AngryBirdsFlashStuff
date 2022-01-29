package §&"`§
{
   import com.rovio.assets.§!"f§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §@",§ extends Sprite
   {
      
      public static const §!!,§:String = "CheckmarkAnimationCompleted";
       
      
      private var §=t§:MovieClip;
      
      public function §@",§()
      {
         super();
         var _loc1_:Class = §!"f§.§##?§("ItemBoughtCheckmark");
         this.§=t§ = new _loc1_();
         this.§=t§.gotoAndPlay(1);
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         addChild(this.§=t§);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§=t§.currentFrame >= this.§=t§.totalFrames)
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
         dispatchEvent(new Event(§!!,§));
      }
   }
}
