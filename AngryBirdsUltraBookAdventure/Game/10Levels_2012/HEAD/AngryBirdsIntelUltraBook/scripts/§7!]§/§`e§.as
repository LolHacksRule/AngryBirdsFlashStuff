package §7!]§
{
   import §"[§.LevelBackground;
   import §'_§.Texture;
   import §1!&§.§!!9§;
   import §1!&§.§&p§;
   import §1!&§.DisplayObject;
   import §1!&§.Sprite;
   import §3!j§.SoundEngine;
   import §8!?§.TextureManager;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §`e§ extends LevelBackground
   {
      
      private static const THUNDER_TIME_MAX:Number = 1.5;
      
      private static const THUNDER_IN_TIME:Number = 0.15;
      
      private static const THUNDER_OUT_TIME:Number = 0.25;
      
      private static const THUNDER_INTERVAL_MIN:Number = 3;
      
      private static const THUNDER_INTERVAL_MAX:Number = 20;
       
      
      private var §`u§:Number;
      
      private var §0g§:Number;
      
      private var §2;§:§!!9§;
      
      private var §7%§:Boolean;
      
      private var §^!^§:Number;
      
      private var §!!=§:BitmapData;
      
      private var §>n§:Texture;
      
      private var §3!M§:int = 0;
      
      public function §`e§(backgroundName:String, groundLevel:Number, textureManager:TextureManager, mimimumScale:Number)
      {
         super(backgroundName,groundLevel,textureManager,mimimumScale);
         this.§`u§ = -(3 + Math.random() * 3);
      }
      
      override public function dispose() : void
      {
         if(this.§>n§)
         {
            textureManager.unregisterBitmapDataTexture(this.§>n§);
            this.§>n§ = null;
         }
         if(this.§!!=§)
         {
            this.§!!=§.dispose();
            this.§!!=§ = null;
         }
         super.dispose();
      }
      
      override protected function createGroundQuad(color:uint) : §!!9§
      {
         if(this.§>n§)
         {
            textureManager.unregisterBitmapDataTexture(this.§>n§);
            this.§>n§ = null;
         }
         if(this.§!!=§)
         {
            this.§!!=§.dispose();
            this.§!!=§ = null;
         }
         this.§!!=§ = new BitmapData(2,2,false,color);
         this.§>n§ = textureManager.getTextureFromBitmapData(this.§!!=§);
         var quad:§!!9§ = new §&p§(this.§>n§,true,false);
         quad.width = 4096;
         quad.height = 4096;
         return quad;
      }
      
      override public function update(deltaTime:Number) : void
      {
         if(this.§2;§ == null)
         {
            if(this.§`u§ > 0)
            {
               this.§8X§();
            }
         }
         else if(this.§2;§)
         {
            this.§2!-§();
         }
         this.§2!1§();
         this.§`u§ += deltaTime / 1000;
      }
      
      private function §8X§() : void
      {
         var bounds:Rectangle = null;
         var sprite:Sprite = null;
         if(§+!I§.numChildren > 0)
         {
            sprite = §+!I§.getChildAt(0) as Sprite;
            if(sprite)
            {
               bounds = sprite.getBounds(sprite);
               bounds.top -= 2048;
               this.§2;§ = new §!!9§(bounds.width,bounds.height,16777215);
               this.§2;§.x = bounds.left;
               this.§2;§.y = bounds.top;
               this.§2;§.alpha = 0;
               sprite.addChild(this.§2;§);
            }
            this.§3!M§ = 0;
            this.§`u§ = 0;
            if(Math.random() < 0.25)
            {
               this.§0g§ = 0.7 + Math.random() * (THUNDER_TIME_MAX - 0.7);
            }
            else
            {
               this.§0g§ = 0.3 + Math.random() * (THUNDER_TIME_MAX - 0.3) * 0.3;
            }
            this.§^!^§ = 0.2 + Math.random() * 2;
            this.§7%§ = false;
         }
      }
      
      private function §2!-§() : void
      {
         var scalar:Number = NaN;
         var sprite:Sprite = null;
         var component:uint = 0;
         var fullThunderColor:uint = 0;
         var obj:DisplayObject = null;
         var thunderAlpha:Number = 0;
         if(this.§`u§ < THUNDER_IN_TIME)
         {
            thunderAlpha = this.§`u§ / THUNDER_IN_TIME;
         }
         else if(this.§`u§ < THUNDER_IN_TIME + this.§0g§)
         {
            this.§3!M§ = (this.§3!M§ + 1) % 2;
            if(this.§3!M§ != 1)
            {
               return;
            }
            scalar = (THUNDER_TIME_MAX + this.§0g§) / (THUNDER_TIME_MAX * 3);
            thunderAlpha = 1 - scalar + Math.random() * scalar;
         }
         else if(this.§`u§ < THUNDER_IN_TIME + this.§0g§ + THUNDER_OUT_TIME)
         {
            thunderAlpha = 1 - (this.§`u§ - (THUNDER_IN_TIME + this.§0g§)) / THUNDER_OUT_TIME;
         }
         this.§2;§.alpha = thunderAlpha;
         var thunderColor:uint = Math.round((1 - thunderAlpha) * 255);
         if(this.§`u§ > THUNDER_TIME_MAX)
         {
            if(§+!I§.numChildren > 0)
            {
               sprite = §+!I§.getChildAt(0) as Sprite;
               if(sprite)
               {
                  sprite.removeChild(this.§2;§,true);
               }
            }
            this.§2;§ = null;
            thunderColor = 255;
            this.§`u§ = -(THUNDER_INTERVAL_MIN + (THUNDER_INTERVAL_MAX - THUNDER_INTERVAL_MIN) * Math.random());
         }
         var start:int = §+!I§.numChildren - 1;
         for(var i:int = start; i >= 1; i--)
         {
            component = thunderColor * (i + start) / (start * 2);
            if(thunderColor == 255)
            {
               component = 255;
            }
            fullThunderColor = (component << 16) + (component << 8) + component;
            obj = §+!I§.getChildAt(i);
            obj.color = fullThunderColor;
         }
         start = § -§.numChildren - 1;
         for(var j:int = start; j >= 0; j--)
         {
            obj = § -§.getChildAt(j);
            obj.color = (component << 16) + (component << 8) + component;
         }
         §0I§.color = (component << 16) + (component << 8) + component;
      }
      
      private function §2!1§() : void
      {
         if(this.§`u§ > this.§^!^§)
         {
            if(!this.§7%§)
            {
               SoundEngine.§4!k§("Lightning04","ChannelExplosions");
               this.§7%§ = true;
            }
         }
      }
   }
}
