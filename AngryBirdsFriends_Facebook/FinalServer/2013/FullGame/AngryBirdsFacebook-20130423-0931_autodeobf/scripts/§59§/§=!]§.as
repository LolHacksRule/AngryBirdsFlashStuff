package §59§
{
   import com.rovio.assets.§?q§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §=!]§ extends Sprite
   {
       
      
      private var §6"2§:MovieClip;
      
      public function §=!]§()
      {
         super();
         var _loc1_:Class = §?q§.§ q§("ItemBoughtCheckmark");
         this.§6"2§ = new _loc1_();
         this.§6"2§.gotoAndPlay(1);
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         addChild(this.§6"2§);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§6"2§.currentFrame >= this.§6"2§.totalFrames)
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
      }
   }
}
