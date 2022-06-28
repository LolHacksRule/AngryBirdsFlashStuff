package §5,§
{
   import flash.events.Event;
   
   public class HighScoreScroller extends HScroller
   {
       
      
      public function HighScoreScroller(maskWidth:Number, maskHeight:Number, data:Array = null, itemRenderer:Class = null, minMargin:Number = 0, maxMargin:Number = 1.7976931348623157E308)
      {
         super(maskWidth,maskHeight,data,itemRenderer,minMargin,maxMargin);
      }
      
      override protected function updatePositions() : void
      {
         var renderer:FriendItemRenderer = null;
         var x:Number = NaN;
         var newRenderer:§'J§ = null;
         for(var i:int = §?S§.length - 1; i >= 0; )
         {
            renderer = §?S§[i] as FriendItemRenderer;
            renderer.x = §2!R§(renderer.index + (renderer.data.offset || 0));
            if(renderer.x >= §3!>§ || renderer.x <= -§#Q§)
            {
               §'6§.removeChild(renderer);
               §?S§.splice(§?S§.indexOf(renderer),1);
               §8Q§(renderer);
            }
            i--;
         }
         for(i = 0; i < §&^§.length; )
         {
            x = §2!R§(i + (§&^§[i].offset || 0));
            if(x > -§#Q§ && x < §3!>§ && !§8!M§(i))
            {
               newRenderer = §!e§();
               §'6§.addChild(newRenderer);
               newRenderer.data = §&^§[i];
               newRenderer.index = i;
               newRenderer.x = x;
               §?S§.push(newRenderer);
            }
            i++;
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
         if(§[?§ != §?U§)
         {
            super.onEnterFrame(e);
         }
         else if(somethingChanged)
         {
            this.updatePositions();
         }
      }
   }
}
