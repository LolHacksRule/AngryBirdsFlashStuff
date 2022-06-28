package §#r§
{
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class HScroller
   {
       
      
      protected var §1!J§:Sprite;
      
      protected var §'-§:Number;
      
      protected var §@!d§:Number;
      
      protected var § q§:Class;
      
      protected var §%y§:Number;
      
      protected var §%!i§:Number;
      
      protected var §;!!§:Number;
      
      protected var §6!,§:Number;
      
      protected var §^!@§:Number = -1;
      
      protected var §@! §:Array;
      
      protected var §6N§:int = -1;
      
      protected var §[$§:Number = 0;
      
      protected var §,w§:int = 0;
      
      protected var §1-§:Vector.<§1M§>;
      
      protected var §=!Q§:Vector.<§1M§>;
      
      public function HScroller(maskWidth:Number, maskHeight:Number, data:Array = null, itemRenderer:Class = null, minMargin:Number = 0, maxMargin:Number = 1.7976931348623157E308)
      {
         this.§1-§ = new Vector.<§1M§>(0);
         this.§=!Q§ = new Vector.<§1M§>(0);
         super();
         this.§1!J§ = new Sprite();
         this.§'-§ = maskWidth;
         this.§@!d§ = maskHeight;
         this.§@! § = data;
         this.§ q§ = itemRenderer || §1M§;
         this.§%y§ = minMargin;
         this.§%!i§ = maxMargin;
         this.§,V§();
         this.§?!-§();
         if(this.§@! §)
         {
            this.§=^§();
         }
         this.§1!J§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      protected function §,V§() : void
      {
         this.§6!,§ = Math.floor(this.§'-§ / (this.§3$§ + this.§%y§));
      }
      
      public function get scrollerSprite() : Sprite
      {
         return this.§1!J§;
      }
      
      protected function §?!-§() : void
      {
         var mask:Sprite = new Sprite();
         mask.graphics.beginFill(0,1);
         mask.graphics.drawRect(0,0,this.§'-§,this.§@!d§);
         mask.graphics.endFill();
         this.§1!J§.addChild(mask);
         this.§1!J§.mask = mask;
      }
      
      public function §+@§(value:Number) : void
      {
         var renderer:§1M§ = null;
         this.§'-§ = this.§1!J§.mask.width = value;
         this.§6!,§ = Math.max(0,Math.floor(this.§'-§ / (this.§3$§ + this.§%y§)));
         this.§6N§ = Math.min(this.§6!,§,this.§@! §.length);
         for(this.§5G§(); this.§=!Q§.length > this.§6!,§; )
         {
            renderer = this.§=!Q§.pop();
            if(renderer == null)
            {
               trace("Removed null renderer from mItemRenderers!");
            }
            else
            {
               this.§1!J§.removeChild(renderer);
               this.§%!Z§(renderer);
            }
         }
         this.§&!T§(0);
         this.§[$§ = this.§,w§;
         this.updatePositions();
      }
      
      protected function §=^§() : void
      {
         var renderer:§1M§ = null;
         this.§[$§ = 0;
         this.§,w§ = 0;
         this.§6N§ = Math.min(this.§6!,§,this.§@! §.length);
         this.§5G§();
         for(var i:int = 0; i < this.§6N§; i++)
         {
            renderer = this.§`"§();
            this.§1!J§.addChild(renderer);
            renderer.index = i;
            renderer.data = this.§@! §[i];
            this.§=!Q§.push(renderer);
         }
         this.updatePositions();
      }
      
      protected function §5G§() : void
      {
         this.§;!!§ = Math.min((this.§'-§ - this.§6N§ * this.§3$§) / this.§6N§,this.§%!i§);
      }
      
      protected function get §3$§() : Number
      {
         var tempRenderer:§1M§ = null;
         if(this.§^!@§ == -1)
         {
            tempRenderer = this.§`"§();
            this.§^!@§ = tempRenderer.width;
            this.§%!Z§(tempRenderer);
         }
         return this.§^!@§;
      }
      
      public function scroll(offset:int, skipAnimation:Boolean = false) : void
      {
         if(this.§@! §.length == this.§6N§)
         {
            return;
         }
         this.§&!T§(offset);
         if(skipAnimation)
         {
            this.§[$§ = this.§,w§;
            this.updatePositions();
         }
      }
      
      protected function §&!T§(offset:int) : void
      {
         if(this.§,w§ - offset > 0)
         {
            this.§,w§ = 0;
         }
         else if(this.§,w§ - offset - this.§&4§ < -this.§@! §.length)
         {
            this.§,w§ = -(this.§@! §.length - this.§&4§);
         }
         else
         {
            this.§,w§ -= offset;
         }
      }
      
      protected function onEnterFrame(e:Event) : void
      {
         if(this.§,w§ == this.§[$§)
         {
            return;
         }
         this.§[$§ += (this.§,w§ - this.§[$§) / 4;
         if(Math.abs(this.§[$§ - this.§,w§) < 0.01)
         {
            this.§[$§ = this.§,w§;
         }
         this.updatePositions();
      }
      
      protected function updatePositions() : void
      {
         var renderer:§1M§ = null;
         var x:Number = NaN;
         var newRenderer:§1M§ = null;
         for(var i:int = this.§=!Q§.length - 1; i >= 0; )
         {
            renderer = this.§=!Q§[i];
            renderer.x = this.§3!#§(renderer.index);
            if(renderer.x >= this.§'-§ || renderer.x <= -this.§3$§)
            {
               this.§1!J§.removeChild(renderer);
               this.§=!Q§.splice(this.§=!Q§.indexOf(renderer),1);
               this.§%!Z§(renderer);
            }
            i--;
         }
         for(i = 0; i < this.§@! §.length; )
         {
            x = this.§3!#§(i);
            if(x > -this.§3$§ && x < this.§'-§ && !this.§%@§(i))
            {
               newRenderer = this.§`"§();
               this.§1!J§.addChild(newRenderer);
               newRenderer.data = this.§@! §[i];
               newRenderer.index = i;
               newRenderer.x = x;
               this.§=!Q§.push(newRenderer);
            }
            i++;
         }
      }
      
      protected function §3!#§(index:Number) : Number
      {
         return Math.round(this.§;!!§ / 2 + (index + this.§[$§) * (this.§3$§ + this.§;!!§));
      }
      
      protected function §%@§(index:int) : Boolean
      {
         for(var i:int = 0; i < this.§=!Q§.length; )
         {
            if(this.§=!Q§[i].index == index)
            {
               return true;
            }
            i++;
         }
         return false;
      }
      
      public function §&0§() : void
      {
         var renderer:§1M§ = null;
         for each(renderer in this.§=!Q§)
         {
            renderer.data = this.§@! §[renderer.index];
         }
      }
      
      public function get data() : Array
      {
         return this.§@! §;
      }
      
      public function set data(value:Array) : void
      {
         this.§@! § = value;
         this.clear();
         if(this.§@! §)
         {
            this.§=^§();
         }
      }
      
      public function get §&4§() : int
      {
         return this.§6N§;
      }
      
      public function clear() : void
      {
         for(var renderer:§1M§ = null; this.§=!Q§.length > 0; )
         {
            renderer = this.§=!Q§.pop();
            this.§1!J§.removeChild(renderer);
            this.§%!Z§(renderer);
         }
      }
      
      public function get offset() : int
      {
         return -this.§,w§;
      }
      
      protected function §`"§() : §1M§
      {
         if(this.§1-§.length > 0)
         {
            return this.§1-§.pop();
         }
         var itemRenderer:§1M§ = new this.§ q§();
         itemRenderer.§5%§ = this;
         return itemRenderer;
      }
      
      protected function §%!Z§(renderer:§1M§) : void
      {
         renderer.data = null;
         this.§1-§.push(renderer);
      }
      
      public function dispose() : void
      {
         this.clear();
         this.§1!J§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
   }
}
