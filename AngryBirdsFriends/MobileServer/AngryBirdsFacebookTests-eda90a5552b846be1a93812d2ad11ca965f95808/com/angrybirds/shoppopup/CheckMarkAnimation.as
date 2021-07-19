package com.angrybirds.shoppopup
{
   import com.rovio.assets.AssetCache;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class CheckMarkAnimation extends Sprite
   {
      
      public static const EVENT_CHECKMARK_ANIMATION_COMPLETED:String = "CheckmarkAnimationCompleted";
       
      
      private var mCheckMark:MovieClip;
      
      public function CheckMarkAnimation()
      {
         super();
         var asset:Class = AssetCache.getAssetFromCache("ItemBoughtCheckmark");
         this.mCheckMark = new asset();
         this.mCheckMark.gotoAndPlay(1);
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         addChild(this.mCheckMark);
      }
      
      private function onEnterFrame(e:Event) : void
      {
         if(this.mCheckMark.currentFrame >= this.mCheckMark.totalFrames)
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
         dispatchEvent(new Event(EVENT_CHECKMARK_ANIMATION_COMPLETED));
      }
   }
}
