package com.angrybirds.friendsbar.ui
{
   import flash.events.Event;
   
   public class HighScoreScroller extends HScroller
   {
       
      
      public function HighScoreScroller(maskWidth:Number, maskHeight:Number, data:Array = null, itemRenderer:Class = null, minMargin:Number = 0, maxMargin:Number = 1.7976931348623157E308)
      {
         super(maskWidth,maskHeight,data,itemRenderer,minMargin,maxMargin);
      }
      
      override public function updatePositions() : void
      {
         var renderer:FriendItemRenderer = null;
         var x:Number = NaN;
         var newRenderer:ScrollerItemRenderer = null;
         for(var i:int = mItemRenderers.length - 1; i >= 0; i--)
         {
            renderer = mItemRenderers[i] as FriendItemRenderer;
            renderer.x = getPositionFromIndex(renderer.index + (renderer.data.offset || 0));
            if(renderer.x >= mMaskWidth || renderer.x <= -itemRendererWidth)
            {
               mSprite.removeChild(renderer);
               mItemRenderers.splice(mItemRenderers.indexOf(renderer),1);
               returnRenderer(renderer);
            }
         }
         for(i = 0; i < mData.length; i++)
         {
            x = getPositionFromIndex(i + (mData[i].offset || 0));
            if(x > -itemRendererWidth && x < mMaskWidth && !hasRendererWithIndex(i))
            {
               newRenderer = getRenderer();
               mSprite.addChild(newRenderer);
               newRenderer.data = mData[i];
               newRenderer.index = i;
               newRenderer.x = x;
               mItemRenderers.push(newRenderer);
            }
         }
      }
      
      override protected function onEnterFrame(e:Event) : void
      {
         var obj:Object = null;
         var diff:Number = NaN;
         var somethingChanged:Boolean = false;
         for each(obj in data)
         {
            if(obj.offset != obj.targetOffset)
            {
               if(obj.offset == undefined)
               {
                  obj.offset = 0;
               }
               if(obj.targetOffset == undefined)
               {
                  obj.targetOffset = 0;
               }
               diff = (obj.targetOffset - obj.offset) / 8;
               if(diff > 0 && diff < 0.01)
               {
                  obj.offset = obj.targetOffset;
               }
               else
               {
                  obj.offset += diff;
               }
               somethingChanged = true;
            }
         }
         if(mTargetOffset != mCurrentItemOffset)
         {
            super.onEnterFrame(e);
         }
         else if(somethingChanged)
         {
            this.updatePositions();
         }
      }
      
      public function get itemRenderers() : Vector.<ScrollerItemRenderer>
      {
         return mItemRenderers;
      }
   }
}
