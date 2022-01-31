package com.angrybirds.engine.background
{
   import com.angrybirds.data.level.theme.LevelThemeBackground;
   import com.angrybirds.data.level.theme.LevelThemeBackgroundLayer;
   import com.angrybirds.engine.camera.LevelCamera;
   import com.angrybirds.engine.leveleventmanager.LevelEventPublisher;
   import com.rovio.factory.Log;
   import com.rovio.graphics.TextureManager;
   import com.rovio.sound.SoundEffect;
   import com.rovio.sound.SoundEngine;
   import starling.core.Starling;
   import starling.display.DisplayObject;
   import starling.display.Quad;
   import starling.display.Sprite;
   
   public class LevelBackground
   {
      
      public static const SHOW_BACKGROUNDS:Boolean = true;
       
      
      protected var mTextureManager:TextureManager;
      
      protected var mLevelBackgroundInformation:LevelThemeBackground;
      
      protected var mLayers:Vector.<LevelBackgroundLayer>;
      
      protected var mBackgroundLayersSprite:Sprite;
      
      protected var mForegroundLayersSprite:Sprite;
      
      protected var mGroundSprite:Sprite;
      
      protected var mGroundLevel:Number;
      
      protected var mScreenX:Number;
      
      protected var mScreenY:Number;
      
      protected var mParticleEmittersEnabled:Boolean = false;
      
      protected var mVisible:Boolean = true;
      
      protected var mAmbientChannel:SoundEffect;
      
      protected var mMinimumScale:Number;
      
      protected var mHighQuality:Boolean = true;
      
      protected var mSkyColor:int = 0;
      
      protected var mScale:Number = 1.0;
      
      private var mLevelEventPublisher:LevelEventPublisher;
      
      public function LevelBackground(levelEventPublisher:LevelEventPublisher, background:LevelThemeBackground, groundLevel:Number, textureManager:TextureManager, minimumScale:Number, highQuality:Boolean = true)
      {
         this.mLayers = new Vector.<LevelBackgroundLayer>();
         super();
         this.mTextureManager = textureManager;
         this.mLevelEventPublisher = levelEventPublisher;
         this.mScreenX = 0;
         this.mScreenY = 0;
         this.mGroundLevel = groundLevel;
         this.mBackgroundLayersSprite = new Sprite();
         this.mForegroundLayersSprite = new Sprite();
         this.mGroundSprite = new Sprite();
         this.mMinimumScale = minimumScale;
         this.mHighQuality = highQuality;
         this.mParticleEmittersEnabled = true;
         this.initBackground(background,minimumScale);
      }
      
      public function get areParticlesEnabled() : Boolean
      {
         return this.mParticleEmittersEnabled;
      }
      
      public function get groundSprite() : Sprite
      {
         return this.mGroundSprite;
      }
      
      public function get backgroundLayersSprite() : Sprite
      {
         return this.mBackgroundLayersSprite;
      }
      
      public function get foregroundLayersSprite() : Sprite
      {
         return this.mForegroundLayersSprite;
      }
      
      public function get skyColor() : int
      {
         return this.mSkyColor;
      }
      
      protected function get textureManager() : TextureManager
      {
         return this.mTextureManager;
      }
      
      public function dispose() : void
      {
         this.clearGraphics();
         this.stopAmbientSound();
         if(this.mBackgroundLayersSprite)
         {
            this.mBackgroundLayersSprite.dispose();
            this.mBackgroundLayersSprite = null;
         }
         if(this.mForegroundLayersSprite)
         {
            this.mForegroundLayersSprite.dispose();
            this.mForegroundLayersSprite = null;
         }
         if(this.mGroundSprite)
         {
            this.mGroundSprite.dispose();
            this.mGroundSprite = null;
         }
      }
      
      public function isVisible() : Boolean
      {
         return this.mVisible;
      }
      
      public function setVisible(visible:Boolean) : void
      {
         if(this.mVisible == visible)
         {
            return;
         }
         this.mVisible = visible;
         if(!visible)
         {
            this.clearGraphics();
         }
         else
         {
            this.initBackground(this.mLevelBackgroundInformation,this.mMinimumScale);
         }
      }
      
      public function getGroundTextureName() : String
      {
         return this.mLevelBackgroundInformation.textureName;
      }
      
      public function getBackgroundTextureName() : String
      {
         return this.mLevelBackgroundInformation.backgroundBlockTextureName;
      }
      
      private function clearGraphics() : void
      {
         while(this.mForegroundLayersSprite.numChildren > 0)
         {
            this.mForegroundLayersSprite.removeChildAt(0,true);
         }
         while(this.mBackgroundLayersSprite.numChildren > 0)
         {
            this.mBackgroundLayersSprite.removeChildAt(0,true);
         }
         while(this.mLayers.length > 0)
         {
            this.mLayers.pop().dispose();
         }
      }
      
      protected function preProcessBackground(background:LevelThemeBackground) : void
      {
      }
      
      protected function initBackground(background:LevelThemeBackground, minimumScale:Number) : void
      {
         var data:LevelThemeBackgroundLayer = null;
         var sprite:Sprite = null;
         var layer:LevelBackgroundLayer = null;
         this.mLevelBackgroundInformation = background;
         this.preProcessBackground(this.mLevelBackgroundInformation);
         this.mBackgroundLayersSprite.y = this.mGroundLevel;
         this.mForegroundLayersSprite.y = this.mGroundLevel;
         this.mGroundSprite.y = this.mGroundLevel;
         this.createSkyAndGround();
         for(var i:int = 0; i < this.mLevelBackgroundInformation.layerCount; i++)
         {
            data = this.mLevelBackgroundInformation.getLayer(i);
            if(this.mHighQuality || !data.optional)
            {
               sprite = new Sprite();
               layer = this.createLayer(data,sprite,this.textureManager,minimumScale);
               this.mLayers.push(layer);
               if(layer.isForegroundLayer)
               {
                  this.mForegroundLayersSprite.addChild(sprite);
               }
               else
               {
                  this.mBackgroundLayersSprite.addChild(sprite);
               }
            }
            else if(data.color)
            {
               this.setSkyColor(parseInt(data.color,16));
            }
         }
      }
      
      protected function createLayer(data:LevelThemeBackgroundLayer, sprite:Sprite, textureManager:TextureManager, minimumScale:Number) : LevelBackgroundLayer
      {
         return new LevelBackgroundLayer(this.mLevelEventPublisher,data,sprite,textureManager,minimumScale);
      }
      
      private function createSkyAndGround() : void
      {
         var quad:Quad = null;
         if(this.mLevelBackgroundInformation.colorSky)
         {
            this.setSkyColor(this.mLevelBackgroundInformation.colorSky);
         }
         if(this.mLevelBackgroundInformation.colorGround)
         {
            quad = this.createGroundQuad(uint(this.mLevelBackgroundInformation.colorGround));
            quad.y = 0;
            this.mGroundSprite.addChild(quad);
         }
      }
      
      protected function createGroundQuad(color:uint) : Quad
      {
         return new Quad(4096,4096,color);
      }
      
      private function setSkyColor(color:int) : void
      {
         this.mSkyColor = color;
         if(Starling.current)
         {
            Starling.current.color = color;
         }
      }
      
      public function resetLevelBackground(background:LevelThemeBackground) : void
      {
         this.clearGraphics();
         Log.log("Switch background! NEW BACKGROUND NAME = " + background.id);
         this.initBackground(background,this.mMinimumScale);
      }
      
      public function setParticlesEnabled(enabled:Boolean, forceUpdate:Boolean = true) : void
      {
         var layer:LevelBackgroundLayer = null;
         if(enabled == this.mParticleEmittersEnabled)
         {
            return;
         }
         this.mParticleEmittersEnabled = enabled;
         for each(layer in this.mLayers)
         {
            layer.setParticlesEnabled(enabled);
         }
      }
      
      public function playAmbientSound() : void
      {
         if(SoundEngine.getChannelController("CHANNEL_AMBIENT") == null || !SoundEngine.getChannelController("CHANNEL_AMBIENT").isPlaying())
         {
            SoundEngine.playSound(this.ambientSoundName,"CHANNEL_AMBIENT",999,this.ambientSoundVolume);
         }
      }
      
      public function stopAmbientSound() : void
      {
         SoundEngine.stopChannel("CHANNEL_AMBIENT");
      }
      
      public function get ambientSoundName() : String
      {
         return this.mLevelBackgroundInformation.ambientSoundName;
      }
      
      public function get ambientSoundVolume() : Number
      {
         return this.mLevelBackgroundInformation.ambientSoundVolume;
      }
      
      public function toggleLayerVisibility(index:Number) : void
      {
         var obj:DisplayObject = null;
         if(index < this.mBackgroundLayersSprite.numChildren)
         {
            obj = this.mBackgroundLayersSprite.getChildAt(index);
         }
         else if(index - this.mBackgroundLayersSprite.numChildren < this.mForegroundLayersSprite.numChildren)
         {
            obj = this.mForegroundLayersSprite.getChildAt(index - this.mBackgroundLayersSprite.numChildren);
         }
         if(obj)
         {
            obj.visible = !obj.visible;
         }
      }
      
      public function setScreenOffset(x:Number, y:Number, width:Number, height:Number, scale:Number, widthScale:Number, heightScale:Number) : void
      {
         var i:int = 0;
         this.mScreenX = x;
         this.mScreenY = y;
         if(this.mLayers != null)
         {
            for(i = 0; i < this.mLayers.length; i++)
            {
               this.mLayers[i].setScreenOffset(this.mScreenX,this.mScreenY,scale,width,height,widthScale,heightScale);
            }
         }
         if(this.mGroundSprite != null)
         {
            this.mGroundSprite.scaleX = this.mGroundSprite.scaleY = 1 / LevelCamera.levelScale;
            this.updateGroundSpriteOffset();
         }
      }
      
      protected function updateGroundSpriteOffset() : void
      {
         this.mGroundSprite.x = 0;
         this.mGroundSprite.y = this.mGroundLevel - this.mScreenY;
      }
      
      public function getCurrentThemeName() : String
      {
         return this.mLevelBackgroundInformation.id;
      }
      
      public function update(deltaTimeMilliSeconds:Number) : void
      {
         var layer:LevelBackgroundLayer = null;
         for each(layer in this.mLayers)
         {
            layer.update(deltaTimeMilliSeconds);
         }
      }
   }
}
