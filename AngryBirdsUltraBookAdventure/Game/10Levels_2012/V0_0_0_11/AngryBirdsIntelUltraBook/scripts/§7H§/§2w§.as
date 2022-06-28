package §7H§
{
   import §,!_§.TextureManager;
   import §6!7§.§-m§;
   import §6!7§.§3x§;
   import §6!7§.DisplayObject;
   import §6!7§.Sprite;
   import §7i§.Texture;
   import §<§.LevelBackground;
   import §=?§.SoundEngine;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §2w§ extends LevelBackground
   {
      
      private static const THUNDER_TIME_MAX:Number = 1.5;
      
      private static const THUNDER_IN_TIME:Number = 0.15;
      
      private static const THUNDER_OUT_TIME:Number = 0.25;
      
      private static const THUNDER_INTERVAL_MIN:Number = 3;
      
      private static const THUNDER_INTERVAL_MAX:Number = 20;
       
      
      private var §[!K§:Number;
      
      private var §1P§:Number;
      
      private var §%N§:§3x§;
      
      private var §2P§:Boolean;
      
      private var §?!F§:Number;
      
      private var § L§:BitmapData;
      
      private var §[`§:Texture;
      
      private var §?N§:int = 0;
      
      public function §2w§(backgroundName:String, groundLevel:Number, textureManager:TextureManager, mimimumScale:Number)
      {
         super(backgroundName,groundLevel,textureManager,mimimumScale);
         this.§[!K§ = -(3 + Math.random() * 3);
      }
      
      override public function dispose() : void
      {
         if(this.§[`§)
         {
            textureManager.unregisterBitmapDataTexture(this.§[`§);
            this.§[`§ = null;
         }
         if(this.§ L§)
         {
            this.§ L§.dispose();
            this.§ L§ = null;
         }
         super.dispose();
      }
      
      override protected function createGroundQuad(color:uint) : §3x§
      {
         if(this.§[`§)
         {
            textureManager.unregisterBitmapDataTexture(this.§[`§);
            this.§[`§ = null;
         }
         if(this.§ L§)
         {
            this.§ L§.dispose();
            this.§ L§ = null;
         }
         this.§ L§ = new BitmapData(2,2,false,color);
         this.§[`§ = textureManager.getTextureFromBitmapData(this.§ L§);
         var quad:§3x§ = new §-m§(this.§[`§,true,false);
         quad.width = 4096;
         quad.height = 4096;
         return quad;
      }
      
      override public function update(deltaTime:Number) : void
      {
         if(this.§%N§ == null)
         {
            if(this.§[!K§ > 0)
            {
               this.§[;§();
            }
         }
         else if(this.§%N§)
         {
            this.§@!L§();
         }
         this.§>G§();
         this.§[!K§ += deltaTime / 1000;
      }
      
      private function §[;§() : void
      {
         var bounds:Rectangle = null;
         var sprite:Sprite = null;
         if(§4a§.numChildren > 0)
         {
            sprite = §4a§.getChildAt(0) as Sprite;
            if(sprite)
            {
               bounds = sprite.getBounds(sprite);
               bounds.top -= 2048;
               this.§%N§ = new §3x§(bounds.width,bounds.height,16777215);
               this.§%N§.x = bounds.left;
               this.§%N§.y = bounds.top;
               this.§%N§.alpha = 0;
               sprite.addChild(this.§%N§);
            }
            this.§?N§ = 0;
            this.§[!K§ = 0;
            if(Math.random() < 0.25)
            {
               this.§1P§ = 0.7 + Math.random() * (THUNDER_TIME_MAX - 0.7);
            }
            else
            {
               this.§1P§ = 0.3 + Math.random() * (THUNDER_TIME_MAX - 0.3) * 0.3;
            }
            this.§?!F§ = 0.2 + Math.random() * 2;
            this.§2P§ = false;
         }
      }
      
      private function §@!L§() : void
      {
         var scalar:Number = NaN;
         var sprite:Sprite = null;
         var component:uint = 0;
         var fullThunderColor:uint = 0;
         var obj:DisplayObject = null;
         var thunderAlpha:Number = 0;
         if(this.§[!K§ < THUNDER_IN_TIME)
         {
            thunderAlpha = this.§[!K§ / THUNDER_IN_TIME;
         }
         else if(this.§[!K§ < THUNDER_IN_TIME + this.§1P§)
         {
            this.§?N§ = (this.§?N§ + 1) % 2;
            if(this.§?N§ != 1)
            {
               return;
            }
            scalar = (THUNDER_TIME_MAX + this.§1P§) / (THUNDER_TIME_MAX * 3);
            thunderAlpha = 1 - scalar + Math.random() * scalar;
         }
         else if(this.§[!K§ < THUNDER_IN_TIME + this.§1P§ + THUNDER_OUT_TIME)
         {
            thunderAlpha = 1 - (this.§[!K§ - (THUNDER_IN_TIME + this.§1P§)) / THUNDER_OUT_TIME;
         }
         this.§%N§.alpha = thunderAlpha;
         var thunderColor:uint = Math.round((1 - thunderAlpha) * 255);
         if(this.§[!K§ > THUNDER_TIME_MAX)
         {
            if(§4a§.numChildren > 0)
            {
               sprite = §4a§.getChildAt(0) as Sprite;
               if(sprite)
               {
                  sprite.removeChild(this.§%N§,true);
               }
            }
            this.§%N§ = null;
            thunderColor = 255;
            this.§[!K§ = -(THUNDER_INTERVAL_MIN + (THUNDER_INTERVAL_MAX - THUNDER_INTERVAL_MIN) * Math.random());
         }
         var start:int = §4a§.numChildren - 1;
         for(var i:int = start; i >= 1; i--)
         {
            component = thunderColor * (i + start) / (start * 2);
            if(thunderColor == 255)
            {
               component = 255;
            }
            fullThunderColor = (component << 16) + (component << 8) + component;
            obj = §4a§.getChildAt(i);
            obj.color = fullThunderColor;
         }
         start = §1!g§.numChildren - 1;
         for(var j:int = start; j >= 0; j--)
         {
            obj = §1!g§.getChildAt(j);
            obj.color = (component << 16) + (component << 8) + component;
         }
         §@![§.color = (component << 16) + (component << 8) + component;
      }
      
      private function §>G§() : void
      {
         if(this.§[!K§ > this.§?!F§)
         {
            if(!this.§2P§)
            {
               SoundEngine.§1h§("Lightning04","ChannelExplosions");
               this.§2P§ = true;
            }
         }
      }
   }
}
