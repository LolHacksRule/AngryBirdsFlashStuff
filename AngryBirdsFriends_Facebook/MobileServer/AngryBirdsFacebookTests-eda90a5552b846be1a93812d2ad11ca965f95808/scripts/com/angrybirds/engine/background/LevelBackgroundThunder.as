package com.angrybirds.engine.background
{
   import com.angrybirds.data.level.theme.LevelThemeBackground;
   import com.angrybirds.engine.leveleventmanager.LevelEventPublisher;
   import com.rovio.graphics.TextureManager;
   import com.rovio.sound.SoundEngine;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   import starling.display.DisplayObject;
   import starling.display.Image;
   import starling.display.Quad;
   import starling.display.Sprite;
   import starling.textures.Texture;
   
   public class LevelBackgroundThunder extends LevelBackground
   {
      
      private static const THUNDER_TIME_MAX:Number = 1.5;
      
      private static const THUNDER_IN_TIME:Number = 0.15;
      
      private static const THUNDER_OUT_TIME:Number = 0.25;
      
      private static const THUNDER_INTERVAL_MIN:Number = 3;
      
      private static const THUNDER_INTERVAL_MAX:Number = 20;
       
      
      private var mThunderTime:Number;
      
      private var mThunderLength:Number;
      
      private var mLightningQuad:Quad;
      
      private var mThunderSoundPlayed:Boolean;
      
      private var mThunderSoundDelay:Number;
      
      private var mGroundBitmap:BitmapData;
      
      private var mGroundTexture:Texture;
      
      private var mUpdateSkip:int = 0;
      
      public function LevelBackgroundThunder(levelEventPublisher:LevelEventPublisher, background:LevelThemeBackground, groundLevel:Number, textureManager:TextureManager, minimumScale:Number, highQuality:Boolean = true)
      {
         super(levelEventPublisher,background,groundLevel,textureManager,minimumScale,highQuality);
         this.mThunderTime = -(3 + Math.random() * 3);
      }
      
      override public function dispose() : void
      {
         if(this.mGroundTexture)
         {
            textureManager.unregisterBitmapDataTexture(this.mGroundTexture);
            this.mGroundTexture = null;
         }
         if(this.mGroundBitmap)
         {
            this.mGroundBitmap.dispose();
            this.mGroundBitmap = null;
         }
         super.dispose();
      }
      
      override protected function createGroundQuad(color:uint) : Quad
      {
         if(this.mGroundTexture)
         {
            textureManager.unregisterBitmapDataTexture(this.mGroundTexture);
            this.mGroundTexture = null;
         }
         if(this.mGroundBitmap)
         {
            this.mGroundBitmap.dispose();
            this.mGroundBitmap = null;
         }
         this.mGroundBitmap = new BitmapData(2,2,false,color);
         this.mGroundTexture = textureManager.getTextureFromBitmapData(this.mGroundBitmap);
         var quad:Quad = new Image(this.mGroundTexture,true,false);
         quad.width = 4096;
         quad.height = 4096;
         return quad;
      }
      
      override public function update(deltaTime:Number) : void
      {
         if(this.mLightningQuad == null)
         {
            if(this.mThunderTime > 0)
            {
               this.doThunder();
            }
         }
         else if(this.mLightningQuad)
         {
            this.updateThunder();
         }
         this.playThunderSound();
         this.mThunderTime += deltaTime / 1000;
      }
      
      private function doThunder() : void
      {
         var bounds:Rectangle = null;
         var sprite:Sprite = null;
         if(backgroundLayersSprite.numChildren > 0)
         {
            sprite = backgroundLayersSprite.getChildAt(0) as Sprite;
            if(sprite)
            {
               bounds = sprite.getBounds(sprite);
               bounds.top -= 2048;
               this.mLightningQuad = new Quad(bounds.width,bounds.height,16777215);
               this.mLightningQuad.x = bounds.left;
               this.mLightningQuad.y = bounds.top;
               this.mLightningQuad.alpha = 0;
               sprite.addChild(this.mLightningQuad);
            }
            this.mUpdateSkip = 0;
            this.mThunderTime = 0;
            if(Math.random() < 0.25)
            {
               this.mThunderLength = 0.7 + Math.random() * (THUNDER_TIME_MAX - 0.7);
            }
            else
            {
               this.mThunderLength = 0.3 + Math.random() * (THUNDER_TIME_MAX - 0.3) * 0.3;
            }
            this.mThunderSoundDelay = 0.2 + Math.random() * 2;
            this.mThunderSoundPlayed = false;
         }
      }
      
      private function updateThunder() : void
      {
         var scalar:Number = NaN;
         var sprite:Sprite = null;
         var component:uint = 0;
         var fullThunderColor:uint = 0;
         var obj:DisplayObject = null;
         var thunderAlpha:Number = 0;
         if(this.mThunderTime < THUNDER_IN_TIME)
         {
            thunderAlpha = this.mThunderTime / THUNDER_IN_TIME;
         }
         else if(this.mThunderTime < THUNDER_IN_TIME + this.mThunderLength)
         {
            this.mUpdateSkip = (this.mUpdateSkip + 1) % 2;
            if(this.mUpdateSkip != 1)
            {
               return;
            }
            scalar = (THUNDER_TIME_MAX + this.mThunderLength) / (THUNDER_TIME_MAX * 3);
            thunderAlpha = 1 - scalar + Math.random() * scalar;
         }
         else if(this.mThunderTime < THUNDER_IN_TIME + this.mThunderLength + THUNDER_OUT_TIME)
         {
            thunderAlpha = 1 - (this.mThunderTime - (THUNDER_IN_TIME + this.mThunderLength)) / THUNDER_OUT_TIME;
         }
         this.mLightningQuad.alpha = thunderAlpha;
         var thunderColor:uint = Math.round((1 - thunderAlpha) * 255);
         if(this.mThunderTime > THUNDER_TIME_MAX)
         {
            if(backgroundLayersSprite.numChildren > 0)
            {
               sprite = backgroundLayersSprite.getChildAt(0) as Sprite;
               if(sprite)
               {
                  sprite.removeChild(this.mLightningQuad,true);
               }
            }
            this.mLightningQuad = null;
            thunderColor = 255;
            this.mThunderTime = -(THUNDER_INTERVAL_MIN + (THUNDER_INTERVAL_MAX - THUNDER_INTERVAL_MIN) * Math.random());
         }
         var start:int = backgroundLayersSprite.numChildren - 1;
         for(var i:int = start; i >= 1; i--)
         {
            component = thunderColor * (i + start) / (start * 2);
            if(thunderColor == 255)
            {
               component = 255;
            }
            fullThunderColor = (component << 16) + (component << 8) + component;
            obj = backgroundLayersSprite.getChildAt(i);
            obj.color = fullThunderColor;
         }
         start = foregroundLayersSprite.numChildren - 1;
         for(var j:int = start; j >= 0; j--)
         {
            obj = foregroundLayersSprite.getChildAt(j);
            obj.color = (component << 16) + (component << 8) + component;
         }
         groundSprite.color = (component << 16) + (component << 8) + component;
      }
      
      private function playThunderSound() : void
      {
         if(this.mThunderTime > this.mThunderSoundDelay)
         {
            if(!this.mThunderSoundPlayed)
            {
               SoundEngine.playSoundFromVariation("Lightning04","ChannelExplosions");
               this.mThunderSoundPlayed = true;
            }
         }
      }
   }
}
