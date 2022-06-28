package §#r§
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
         var newRenderer:§1M§ = null;
         for(var i:int = §=!Q§.length - 1; i >= 0; )
         {
            renderer = §=!Q§[i] as FriendItemRenderer;
            renderer.x = §3!#§(renderer.index + (renderer.data.offset || 0));
            if(renderer.x >= §'-§ || renderer.x <= -§3$§)
            {
               §1!J§.removeChild(renderer);
               §=!Q§.splice(§=!Q§.indexOf(renderer),1);
               §%!Z§(renderer);
            }
            i--;
         }
         for(i = 0; i < §@! §.length; )
         {
            x = §3!#§(i + (§@! §[i].offset || 0));
            if(x > -§3$§ && x < §'-§ && !§%@§(i))
            {
               newRenderer = §`"§();
               §1!J§.addChild(newRenderer);
               newRenderer.data = §@! §[i];
               newRenderer.index = i;
               newRenderer.x = x;
               §=!Q§.push(newRenderer);
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
         if(§,w§ != §[$§)
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
