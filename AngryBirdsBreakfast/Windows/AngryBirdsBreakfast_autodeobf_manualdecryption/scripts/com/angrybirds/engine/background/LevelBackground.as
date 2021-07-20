package com.angrybirds.engine.background
{
   import com.rovio.graphics.TextureManager;
   import com.angrybirds.engine.camera.LevelCamera;
   import com.angrybirds.data.level.theme.LevelThemeBackgroundLayer;
   import com.angrybirds.data.level.theme.LevelThemeBackground;
   import com.rovio.sound.SoundEngine;
   import com.rovio.sound.SoundEffect;
   import starling.display.Quad;
   import starling.display.DisplayObject;
   import starling.display.Sprite;
   import com.rovio.factory.Log;
   
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
      
      protected var mParticleEmittersEnabled:Boolean = true;
      
      protected var mVisible:Boolean = true;
      
      protected var mAmbientChannel:SoundEffect;
      
      protected var mMinimumScale:Number;
      
      protected var mHighQuality:Boolean = true;
      
      protected var mSkyColor:int = 0;
      
      protected var mScale:Number = 1.0;
      
      public function LevelBackground(param1:LevelThemeBackground, param2:Number, param3:TextureManager, param4:Number, param5:Boolean = true)
      {
         this.mLayers = new Vector.<LevelBackgroundLayer>();
         super();
         this.mTextureManager = param3;
         this.mScreenX = 0;
         this.mScreenY = 0;
         this.mGroundLevel = param2;
         this.mBackgroundLayersSprite = new Sprite();
         this.mForegroundLayersSprite = new Sprite();
         this.mGroundSprite = new Sprite();
         this.mMinimumScale = param4;
         this.mHighQuality = param5;
         this.initBackground(param1,param4);
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
      
      public function MulTM() : Boolean
      {
         return this.mVisible;
      }
      
      public function setVisible(param1:Boolean) : void
      {
         if(this.mVisible == param1)
         {
            return;
         }
         this.mVisible = param1;
         if(param1)
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
      
      protected function Add(param1:LevelThemeBackground) : void
      {
      }
      
      protected function initBackground(param1:LevelThemeBackground, param2:Number) : void
      {
         var _loc4_:LevelThemeBackgroundLayer = null;
         var _loc5_:Sprite = null;
         var _loc6_:LevelBackgroundLayer = null;
         this.mLevelBackgroundInformation = param1;
         this.Add(this.mLevelBackgroundInformation);
         this.mBackgroundLayersSprite.y = this.mGroundLevel;
         this.mForegroundLayersSprite.y = this.mGroundLevel;
         this.mGroundSprite.y = this.mGroundLevel;
         this.createSkyAndGround();
         var _loc3_:int = 0;
         while(_loc3_ < this.mLevelBackgroundInformation.layerCount)
         {
            _loc4_ = this.mLevelBackgroundInformation.getLayer(_loc3_);
            if(this.mHighQuality || !_loc4_.optional)
            {
               _loc5_ = new Sprite();
               _loc6_ = this.createLayer(_loc4_,_loc5_,this.textureManager,param2);
               this.mLayers.push(_loc6_);
               if(_loc6_.isForegroundLayer)
               {
                  this.mForegroundLayersSprite.addChild(_loc5_);
               }
               else
               {
                  this.mBackgroundLayersSprite.addChild(_loc5_);
               }
            }
            else if(_loc4_.color)
            {
               this.setSkyColor(parseInt(_loc4_.color,16));
            }
            _loc3_++;
         }
      }
      
      protected function createLayer(param1:LevelThemeBackgroundLayer, param2:Sprite, param3:TextureManager, param4:Number) : LevelBackgroundLayer
      {
         return new LevelBackgroundLayer(param1,param2,param3,param4);
      }
      
      private function createSkyAndGround() : void
      {
         var _loc1_:Quad = null;
         if(this.mLevelBackgroundInformation.colorSky)
         {
            this.setSkyColor(this.mLevelBackgroundInformation.colorSky);
         }
         if(this.mLevelBackgroundInformation.colorGround)
         {
            _loc1_ = this.createGroundQuad(uint(this.mLevelBackgroundInformation.colorGround));
            _loc1_.y = 0;
            this.mGroundSprite.addChild(_loc1_);
         }
      }
      
      protected function createGroundQuad(param1:uint) : Quad
      {
         return new Quad(4096,4096,param1);
      }
      
      private function setSkyColor(param1:int) : void
      {
         this.mSkyColor = param1;
      }
      
      public function resetLevelBackground(param1:LevelThemeBackground) : void
      {
         this.clearGraphics();
         Log.log("Switch background! NEW BACKGROUND NAME = " + param1.id);
         this.initBackground(param1,this.mMinimumScale);
      }
      
      public function setParticlesEnabled(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:LevelBackgroundLayer = null;
         if(param1 == this.mParticleEmittersEnabled)
         {
            return;
         }
         this.mParticleEmittersEnabled = param1;
         for each(_loc3_ in this.mLayers)
         {
            _loc3_.setParticlesEnabled(param1);
         }
      }
      
      public function playAmbientSound() : void
      {
         if(SoundEngine.getChannelController("CHANNEL_AMBIENT") == null || !SoundEngine.getChannelController("CHANNEL_AMBIENT").isPlaying())
         {
            SoundEngine.playSound(this.ambientSoundName,"CHANNEL_AMBIENT",999);
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
      
      public function toggleLayerVisibility(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.mBackgroundLayersSprite.numChildren)
         {
            _loc2_ = this.mBackgroundLayersSprite.getChildAt(param1);
         }
         else if(param1 - this.mBackgroundLayersSprite.numChildren < this.mForegroundLayersSprite.numChildren)
         {
            _loc2_ = this.mForegroundLayersSprite.getChildAt(param1 - this.mBackgroundLayersSprite.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         var _loc8_:int = 0;
         this.mScreenX = param1;
         this.mScreenY = param2;
         if(this.mLayers != null)
         {
            _loc8_ = 0;
            while(_loc8_ < this.mLayers.length)
            {
               this.mLayers[_loc8_].setScreenOffset(this.mScreenX,this.mScreenY,param5,param3,param4,param6,param7);
               _loc8_++;
            }
         }
         if(this.mGroundSprite != null)
         {
            this.mGroundSprite.scaleX = this.mGroundSprite.scaleY = 1 / LevelCamera.levelScale;
            this.mGroundSprite.x = 0;
            this.mGroundSprite.y = this.mGroundLevel - this.mScreenY + 100;
         }
      }
      
      public function getCurrentThemeName() : String
      {
         return this.mLevelBackgroundInformation.id;
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:LevelBackgroundLayer = null;
         for each(_loc2_ in this.mLayers)
         {
            _loc2_.update(param1);
         }
      }
   }
}
