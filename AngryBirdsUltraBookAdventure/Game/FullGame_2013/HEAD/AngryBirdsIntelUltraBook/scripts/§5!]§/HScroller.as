package §5!]§
{
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class HScroller
   {
       
      
      protected var §"!,§:Sprite;
      
      protected var §&n§:Number;
      
      protected var §;!P§:Number;
      
      protected var §8!a§:Class;
      
      protected var §@k§:Number;
      
      protected var §=o§:Number;
      
      protected var §&!k§:Number;
      
      protected var §6!M§:Number;
      
      protected var §7!e§:Number = -1;
      
      protected var §+p§:Array;
      
      protected var §"!I§:int = -1;
      
      protected var §+W§:Number = 0;
      
      protected var §"L§:int = 0;
      
      protected var §]!T§:Vector.<§`4§>;
      
      protected var §-!$§:Vector.<§`4§>;
      
      public function HScroller(maskWidth:Number, maskHeight:Number, data:Array = null, itemRenderer:Class = null, minMargin:Number = 0, maxMargin:Number = 1.7976931348623157E308)
      {
         this.§]!T§ = new Vector.<§`4§>(0);
         this.§-!$§ = new Vector.<§`4§>(0);
         super();
         this.§"!,§ = new Sprite();
         this.§&n§ = maskWidth;
         this.§;!P§ = maskHeight;
         this.§+p§ = data;
         this.§8!a§ = itemRenderer || §`4§;
         this.§@k§ = minMargin;
         this.§=o§ = maxMargin;
         this.§48§();
         this.§>!b§();
         if(this.§+p§)
         {
            this.§7H§();
         }
         this.§"!,§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      protected function §48§() : void
      {
         this.§6!M§ = Math.floor(this.§&n§ / (this.§@!8§ + this.§@k§));
      }
      
      public function get scrollerSprite() : Sprite
      {
         return this.§"!,§;
      }
      
      protected function §>!b§() : void
      {
         var mask:Sprite = new Sprite();
         mask.graphics.beginFill(0,1);
         mask.graphics.drawRect(0,0,this.§&n§,this.§;!P§);
         mask.graphics.endFill();
         this.§"!,§.addChild(mask);
         this.§"!,§.mask = mask;
      }
      
      public function § m§(value:Number) : void
      {
         var renderer:§`4§ = null;
         this.§&n§ = this.§"!,§.mask.width = value;
         this.§6!M§ = Math.max(0,Math.floor(this.§&n§ / (this.§@!8§ + this.§@k§)));
         this.§"!I§ = Math.min(this.§6!M§,this.§+p§.length);
         for(this.§]q§(); this.§-!$§.length > this.§6!M§; )
         {
            renderer = this.§-!$§.pop();
            if(renderer == null)
            {
               trace("Removed null renderer from mItemRenderers!");
            }
            else
            {
               this.§"!,§.removeChild(renderer);
               this.§![§(renderer);
            }
         }
         this.§?!I§(0);
         this.§+W§ = this.§"L§;
         this.updatePositions();
      }
      
      protected function §7H§() : void
      {
         var renderer:§`4§ = null;
         this.§+W§ = 0;
         this.§"L§ = 0;
         this.§"!I§ = Math.min(this.§6!M§,this.§+p§.length);
         this.§]q§();
         for(var i:int = 0; i < this.§"!I§; i++)
         {
            renderer = this.§+-§();
            this.§"!,§.addChild(renderer);
            renderer.index = i;
            renderer.data = this.§+p§[i];
            this.§-!$§.push(renderer);
         }
         this.updatePositions();
      }
      
      protected function §]q§() : void
      {
         this.§&!k§ = Math.min((this.§&n§ - this.§"!I§ * this.§@!8§) / this.§"!I§,this.§=o§);
      }
      
      protected function get §@!8§() : Number
      {
         var tempRenderer:§`4§ = null;
         if(this.§7!e§ == -1)
         {
            tempRenderer = this.§+-§();
            this.§7!e§ = tempRenderer.width;
            this.§![§(tempRenderer);
         }
         return this.§7!e§;
      }
      
      public function scroll(offset:int, skipAnimation:Boolean = false) : void
      {
         if(this.§+p§.length == this.§"!I§)
         {
            return;
         }
         this.§?!I§(offset);
         if(skipAnimation)
         {
            this.§+W§ = this.§"L§;
            this.updatePositions();
         }
      }
      
      protected function §?!I§(offset:int) : void
      {
         if(this.§"L§ - offset > 0)
         {
            this.§"L§ = 0;
         }
         else if(this.§"L§ - offset - this.§!0§ < -this.§+p§.length)
         {
            this.§"L§ = -(this.§+p§.length - this.§!0§);
         }
         else
         {
            this.§"L§ -= offset;
         }
      }
      
      protected function onEnterFrame(e:Event) : void
      {
         if(this.§"L§ == this.§+W§)
         {
            return;
         }
         this.§+W§ += (this.§"L§ - this.§+W§) / 4;
         if(Math.abs(this.§+W§ - this.§"L§) < 0.01)
         {
            this.§+W§ = this.§"L§;
         }
         this.updatePositions();
      }
      
      protected function updatePositions() : void
      {
         var renderer:§`4§ = null;
         var x:Number = NaN;
         var newRenderer:§`4§ = null;
         for(var i:int = this.§-!$§.length - 1; i >= 0; )
         {
            renderer = this.§-!$§[i];
            renderer.x = this.§`a§(renderer.index);
            if(renderer.x >= this.§&n§ || renderer.x <= -this.§@!8§)
            {
               this.§"!,§.removeChild(renderer);
               this.§-!$§.splice(this.§-!$§.indexOf(renderer),1);
               this.§![§(renderer);
            }
            i--;
         }
         for(i = 0; i < this.§+p§.length; )
         {
            x = this.§`a§(i);
            if(x > -this.§@!8§ && x < this.§&n§ && !this.§<!M§(i))
            {
               newRenderer = this.§+-§();
               this.§"!,§.addChild(newRenderer);
               newRenderer.data = this.§+p§[i];
               newRenderer.index = i;
               newRenderer.x = x;
               this.§-!$§.push(newRenderer);
            }
            i++;
         }
      }
      
      protected function §`a§(index:Number) : Number
      {
         return Math.round(this.§&!k§ / 2 + (index + this.§+W§) * (this.§@!8§ + this.§&!k§));
      }
      
      protected function §<!M§(index:int) : Boolean
      {
         for(var i:int = 0; i < this.§-!$§.length; )
         {
            if(this.§-!$§[i].index == index)
            {
               return true;
            }
            i++;
         }
         return false;
      }
      
      public function §,Z§() : void
      {
         var renderer:§`4§ = null;
         for each(renderer in this.§-!$§)
         {
            renderer.data = this.§+p§[renderer.index];
         }
      }
      
      public function get data() : Array
      {
         return this.§+p§;
      }
      
      public function set data(value:Array) : void
      {
         this.§+p§ = value;
         this.clear();
         if(this.§+p§)
         {
            this.§7H§();
         }
      }
      
      public function get §!0§() : int
      {
         return this.§"!I§;
      }
      
      public function clear() : void
      {
         for(var renderer:§`4§ = null; this.§-!$§.length > 0; )
         {
            renderer = this.§-!$§.pop();
            this.§"!,§.removeChild(renderer);
            this.§![§(renderer);
         }
      }
      
      public function get offset() : int
      {
         return -this.§"L§;
      }
      
      protected function §+-§() : §`4§
      {
         if(this.§]!T§.length > 0)
         {
            return this.§]!T§.pop();
         }
         var itemRenderer:§`4§ = new this.§8!a§();
         itemRenderer.§96§ = this;
         return itemRenderer;
      }
      
      protected function §![§(renderer:§`4§) : void
      {
         renderer.data = null;
         this.§]!T§.push(renderer);
      }
      
      public function dispose() : void
      {
         this.clear();
         this.§"!,§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
   }
}
