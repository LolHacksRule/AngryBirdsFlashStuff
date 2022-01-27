package §[!h§
{
   import §!!0§.SoundEngine;
   import §#!,§.§0!b§;
   import §#!,§.§6!Y§;
   import §#!,§.DisplayObject;
   import §#!,§.Sprite;
   import §,!7§.TextureManager;
   import §-s§.LevelBackground;
   import §6!J§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §?X§ extends LevelBackground
   {
      
      private static const THUNDER_TIME_MAX:Number = 1.5;
      
      private static const THUNDER_IN_TIME:Number = 0.15;
      
      private static const THUNDER_OUT_TIME:Number = 0.25;
      
      private static const THUNDER_INTERVAL_MIN:Number = 3;
      
      private static const THUNDER_INTERVAL_MAX:Number = 20;
       
      
      private var §3^§:Number;
      
      private var §%!W§:Number;
      
      private var §;C§:§6!Y§;
      
      private var §9!R§:Boolean;
      
      private var §"!K§:Number;
      
      private var §+%§:BitmapData;
      
      private var §6!+§:Texture;
      
      private var §9!O§:int = 0;
      
      public function §?X§(backgroundName:String, groundLevel:Number, textureManager:TextureManager, mimimumScale:Number)
      {
         super(backgroundName,groundLevel,textureManager,mimimumScale);
         this.§3^§ = -(3 + Math.random() * 3);
      }
      
      override public function dispose() : void
      {
         if(this.§6!+§)
         {
            textureManager.unregisterBitmapDataTexture(this.§6!+§);
            this.§6!+§ = null;
         }
         if(this.§+%§)
         {
            this.§+%§.dispose();
            this.§+%§ = null;
         }
         super.dispose();
      }
      
      override protected function createGroundQuad(color:uint) : §6!Y§
      {
         if(this.§6!+§)
         {
            textureManager.unregisterBitmapDataTexture(this.§6!+§);
            this.§6!+§ = null;
         }
         if(this.§+%§)
         {
            this.§+%§.dispose();
            this.§+%§ = null;
         }
         this.§+%§ = new BitmapData(2,2,false,color);
         this.§6!+§ = textureManager.getTextureFromBitmapData(this.§+%§);
         var quad:§6!Y§ = new §0!b§(this.§6!+§,true,false);
         quad.width = 4096;
         quad.height = 4096;
         return quad;
      }
      
      override public function update(deltaTime:Number) : void
      {
         if(this.§;C§ == null)
         {
            if(this.§3^§ > 0)
            {
               this.§;!<§();
            }
         }
         else if(this.§;C§)
         {
            this.§!L§();
         }
         this.§+!J§();
         this.§3^§ += deltaTime / 1000;
      }
      
      private function §;!<§() : void
      {
         var bounds:Rectangle = null;
         var sprite:Sprite = null;
         if(§3!I§.numChildren > 0)
         {
            sprite = §3!I§.getChildAt(0) as Sprite;
            if(sprite)
            {
               bounds = sprite.getBounds(sprite);
               bounds.top -= 2048;
               this.§;C§ = new §6!Y§(bounds.width,bounds.height,16777215);
               this.§;C§.x = bounds.left;
               this.§;C§.y = bounds.top;
               this.§;C§.alpha = 0;
               sprite.addChild(this.§;C§);
            }
            this.§9!O§ = 0;
            this.§3^§ = 0;
            if(Math.random() < 0.25)
            {
               this.§%!W§ = 0.7 + Math.random() * (THUNDER_TIME_MAX - 0.7);
            }
            else
            {
               this.§%!W§ = 0.3 + Math.random() * (THUNDER_TIME_MAX - 0.3) * 0.3;
            }
            this.§"!K§ = 0.2 + Math.random() * 2;
            this.§9!R§ = false;
         }
      }
      
      private function §!L§() : void
      {
         var scalar:Number = NaN;
         var sprite:Sprite = null;
         var component:uint = 0;
         var fullThunderColor:uint = 0;
         var obj:DisplayObject = null;
         var thunderAlpha:Number = 0;
         if(this.§3^§ < THUNDER_IN_TIME)
         {
            thunderAlpha = this.§3^§ / THUNDER_IN_TIME;
         }
         else if(this.§3^§ < THUNDER_IN_TIME + this.§%!W§)
         {
            this.§9!O§ = (this.§9!O§ + 1) % 2;
            if(this.§9!O§ != 1)
            {
               return;
            }
            scalar = (THUNDER_TIME_MAX + this.§%!W§) / (THUNDER_TIME_MAX * 3);
            thunderAlpha = 1 - scalar + Math.random() * scalar;
         }
         else if(this.§3^§ < THUNDER_IN_TIME + this.§%!W§ + THUNDER_OUT_TIME)
         {
            thunderAlpha = 1 - (this.§3^§ - (THUNDER_IN_TIME + this.§%!W§)) / THUNDER_OUT_TIME;
         }
         this.§;C§.alpha = thunderAlpha;
         var thunderColor:uint = Math.round((1 - thunderAlpha) * 255);
         if(this.§3^§ > THUNDER_TIME_MAX)
         {
            if(§3!I§.numChildren > 0)
            {
               sprite = §3!I§.getChildAt(0) as Sprite;
               if(sprite)
               {
                  sprite.removeChild(this.§;C§,true);
               }
            }
            this.§;C§ = null;
            thunderColor = 255;
            this.§3^§ = -(THUNDER_INTERVAL_MIN + (THUNDER_INTERVAL_MAX - THUNDER_INTERVAL_MIN) * Math.random());
         }
         var start:int = §3!I§.numChildren - 1;
         for(var i:int = start; i >= 1; i--)
         {
            component = thunderColor * (i + start) / (start * 2);
            if(thunderColor == 255)
            {
               component = 255;
            }
            fullThunderColor = (component << 16) + (component << 8) + component;
            obj = §3!I§.getChildAt(i);
            obj.color = fullThunderColor;
         }
         start = §`!d§.numChildren - 1;
         for(var j:int = start; j >= 0; j--)
         {
            obj = §`!d§.getChildAt(j);
            obj.color = (component << 16) + (component << 8) + component;
         }
         §1!W§.color = (component << 16) + (component << 8) + component;
      }
      
      private function §+!J§() : void
      {
         if(this.§3^§ > this.§"!K§)
         {
            if(!this.§9!R§)
            {
               SoundEngine.§[!D§("Lightning04","ChannelExplosions");
               this.§9!R§ = true;
            }
         }
      }
   }
}
