package §5,§
{
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class HScroller
   {
       
      
      protected var §'6§:Sprite;
      
      protected var §3!>§:Number;
      
      protected var §1!h§:Number;
      
      protected var §>!6§:Class;
      
      protected var §3M§:Number;
      
      protected var §'C§:Number;
      
      protected var §,!>§:Number;
      
      protected var §?!§:Number;
      
      protected var §?L§:Number = -1;
      
      protected var §&^§:Array;
      
      protected var §+T§:int = -1;
      
      protected var §?U§:Number = 0;
      
      protected var §[?§:int = 0;
      
      protected var §'B§:Vector.<§'J§>;
      
      protected var §?S§:Vector.<§'J§>;
      
      public function HScroller(maskWidth:Number, maskHeight:Number, data:Array = null, itemRenderer:Class = null, minMargin:Number = 0, maxMargin:Number = 1.7976931348623157E308)
      {
         this.§'B§ = new Vector.<§'J§>(0);
         this.§?S§ = new Vector.<§'J§>(0);
         super();
         this.§'6§ = new Sprite();
         this.§3!>§ = maskWidth;
         this.§1!h§ = maskHeight;
         this.§&^§ = data;
         this.§>!6§ = itemRenderer || §'J§;
         this.§3M§ = minMargin;
         this.§'C§ = maxMargin;
         this.§0#§();
         this.§!;§();
         if(this.§&^§)
         {
            this.§`!a§();
         }
         this.§'6§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      protected function §0#§() : void
      {
         this.§?!§ = Math.floor(this.§3!>§ / (this.§#Q§ + this.§3M§));
      }
      
      public function get scrollerSprite() : Sprite
      {
         return this.§'6§;
      }
      
      protected function §!;§() : void
      {
         var mask:Sprite = new Sprite();
         mask.graphics.beginFill(0,1);
         mask.graphics.drawRect(0,0,this.§3!>§,this.§1!h§);
         mask.graphics.endFill();
         this.§'6§.addChild(mask);
         this.§'6§.mask = mask;
      }
      
      public function §3u§(value:Number) : void
      {
         var renderer:§'J§ = null;
         this.§3!>§ = this.§'6§.mask.width = value;
         this.§?!§ = Math.max(0,Math.floor(this.§3!>§ / (this.§#Q§ + this.§3M§)));
         this.§+T§ = Math.min(this.§?!§,this.§&^§.length);
         for(this.§<N§(); this.§?S§.length > this.§?!§; )
         {
            renderer = this.§?S§.pop();
            if(renderer == null)
            {
               trace("Removed null renderer from mItemRenderers!");
            }
            else
            {
               this.§'6§.removeChild(renderer);
               this.§8Q§(renderer);
            }
         }
         this.§>^§(0);
         this.§?U§ = this.§[?§;
         this.updatePositions();
      }
      
      protected function §`!a§() : void
      {
         var renderer:§'J§ = null;
         this.§?U§ = 0;
         this.§[?§ = 0;
         this.§+T§ = Math.min(this.§?!§,this.§&^§.length);
         this.§<N§();
         for(var i:int = 0; i < this.§+T§; i++)
         {
            renderer = this.§!e§();
            this.§'6§.addChild(renderer);
            renderer.index = i;
            renderer.data = this.§&^§[i];
            this.§?S§.push(renderer);
         }
         this.updatePositions();
      }
      
      protected function §<N§() : void
      {
         this.§,!>§ = Math.min((this.§3!>§ - this.§+T§ * this.§#Q§) / this.§+T§,this.§'C§);
      }
      
      protected function get §#Q§() : Number
      {
         var tempRenderer:§'J§ = null;
         if(this.§?L§ == -1)
         {
            tempRenderer = this.§!e§();
            this.§?L§ = tempRenderer.width;
            this.§8Q§(tempRenderer);
         }
         return this.§?L§;
      }
      
      public function scroll(offset:int, skipAnimation:Boolean = false) : void
      {
         if(this.§&^§.length == this.§+T§)
         {
            return;
         }
         this.§>^§(offset);
         if(skipAnimation)
         {
            this.§?U§ = this.§[?§;
            this.updatePositions();
         }
      }
      
      protected function §>^§(offset:int) : void
      {
         if(this.§[?§ - offset > 0)
         {
            this.§[?§ = 0;
         }
         else if(this.§[?§ - offset - this.§ ?§ < -this.§&^§.length)
         {
            this.§[?§ = -(this.§&^§.length - this.§ ?§);
         }
         else
         {
            this.§[?§ -= offset;
         }
      }
      
      protected function onEnterFrame(e:Event) : void
      {
         if(this.§[?§ == this.§?U§)
         {
            return;
         }
         this.§?U§ += (this.§[?§ - this.§?U§) / 4;
         if(Math.abs(this.§?U§ - this.§[?§) < 0.01)
         {
            this.§?U§ = this.§[?§;
         }
         this.updatePositions();
      }
      
      protected function updatePositions() : void
      {
         var renderer:§'J§ = null;
         var x:Number = NaN;
         var newRenderer:§'J§ = null;
         for(var i:int = this.§?S§.length - 1; i >= 0; )
         {
            renderer = this.§?S§[i];
            renderer.x = this.§2!R§(renderer.index);
            if(renderer.x >= this.§3!>§ || renderer.x <= -this.§#Q§)
            {
               this.§'6§.removeChild(renderer);
               this.§?S§.splice(this.§?S§.indexOf(renderer),1);
               this.§8Q§(renderer);
            }
            i--;
         }
         for(i = 0; i < this.§&^§.length; )
         {
            x = this.§2!R§(i);
            if(x > -this.§#Q§ && x < this.§3!>§ && !this.§8!M§(i))
            {
               newRenderer = this.§!e§();
               this.§'6§.addChild(newRenderer);
               newRenderer.data = this.§&^§[i];
               newRenderer.index = i;
               newRenderer.x = x;
               this.§?S§.push(newRenderer);
            }
            i++;
         }
      }
      
      protected function §2!R§(index:Number) : Number
      {
         return Math.round(this.§,!>§ / 2 + (index + this.§?U§) * (this.§#Q§ + this.§,!>§));
      }
      
      protected function §8!M§(index:int) : Boolean
      {
         for(var i:int = 0; i < this.§?S§.length; )
         {
            if(this.§?S§[i].index == index)
            {
               return true;
            }
            i++;
         }
         return false;
      }
      
      public function §3!b§() : void
      {
         var renderer:§'J§ = null;
         for each(renderer in this.§?S§)
         {
            renderer.data = this.§&^§[renderer.index];
         }
      }
      
      public function get data() : Array
      {
         return this.§&^§;
      }
      
      public function set data(value:Array) : void
      {
         this.§&^§ = value;
         this.clear();
         if(this.§&^§)
         {
            this.§`!a§();
         }
      }
      
      public function get § ?§() : int
      {
         return this.§+T§;
      }
      
      public function clear() : void
      {
         for(var renderer:§'J§ = null; this.§?S§.length > 0; )
         {
            renderer = this.§?S§.pop();
            this.§'6§.removeChild(renderer);
            this.§8Q§(renderer);
         }
      }
      
      public function get offset() : int
      {
         return -this.§[?§;
      }
      
      protected function §!e§() : §'J§
      {
         if(this.§'B§.length > 0)
         {
            return this.§'B§.pop();
         }
         var itemRenderer:§'J§ = new this.§>!6§();
         itemRenderer.§`5§ = this;
         return itemRenderer;
      }
      
      protected function §8Q§(renderer:§'J§) : void
      {
         renderer.data = null;
         this.§'B§.push(renderer);
      }
      
      public function dispose() : void
      {
         this.clear();
         this.§'6§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
   }
}
