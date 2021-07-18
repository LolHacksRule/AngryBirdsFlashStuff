package com.AngryBirds.LevelPlayer
{
   import com.AngryBirds.LevelItemsData.LevelThemeBackground;
   import com.AngryBirds.LevelItemsData.LevelThemeBackgrounds;
   import com.rovio.assets.AssetCache;
   import com.rovio.sound.SoundEngine;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class LevelBackground extends Sprite
   {
      
      public static const SHOW_BACKGROUNDS:Boolean = true;
       
      
      public var mLevelMain:LevelMain;
      
      public var mSkyAndGround:Sprite;
      
      public var mLevelBackgroundInformation:LevelThemeBackground;
      
      public var mLayerClips:Array;
      
      public var mBackground:MovieClip;
      
      public var mForeground:MovieClip;
      
      private var mGroundLevel:Number;
      
      public var mSideScroll:Number;
      
      public var mVerticalScroll:Number;
      
      public var mTextureClass:Class;
      
      public function LevelBackground(newLevelMain:LevelMain, backgroundName:String, groundLevel:Number)
      {
         super();
         this.mLevelMain = newLevelMain;
         this.mSideScroll = 0;
         this.mVerticalScroll = 0;
         this.mLevelBackgroundInformation = LevelThemeBackgrounds.getBackground(backgroundName);
         this.mLayerClips = new Array();
         this.mBackground = new MovieClip();
         this.mForeground = new MovieClip();
         this.mSkyAndGround = new Sprite();
         this.setGroundLevel(groundLevel);
         this.createSkyAndGround();
         this.mTextureClass = AssetCache.getAssetFromCache(this.mLevelBackgroundInformation.mTextureName);
         var bg:Class = AssetCache.getAssetFromCache(this.mLevelBackgroundInformation.mName);
         for(var i:int = 0; i < this.mLevelBackgroundInformation.mLayers.length; i++)
         {
            this.mLayerClips[i] = new LevelBackgroundLayer(bg,this.mLevelBackgroundInformation.mLayers[i].mName,this.mLevelBackgroundInformation.mLayers[i].mSpeed,this.mLevelBackgroundInformation.mLayers[i].mForeground);
            if(this.mLayerClips[i].mForeground)
            {
               this.mForeground.addChild(this.mLayerClips[i]);
            }
            else
            {
               this.mBackground.addChild(this.mLayerClips[i]);
            }
         }
      }
      
      public function resetLevelBackground(backgroundName:String) : void
      {
         if(!this.mLevelBackgroundInformation || !this.mLevelMain)
         {
            return;
         }
         if(!LevelThemeBackgrounds.getBackground(backgroundName) || this.mLevelBackgroundInformation.mName.toUpperCase() == backgroundName.toUpperCase())
         {
            return;
         }
         this.mLevelBackgroundInformation = LevelThemeBackgrounds.getBackground(backgroundName);
         while(this.mForeground.numChildren > 0)
         {
            this.mForeground.removeChildAt(0);
         }
         while(this.mBackground.numChildren > 0)
         {
            this.mBackground.removeChildAt(0);
         }
         for(var i:int = 0; i < this.mLayerClips.length; i++)
         {
            (this.mLayerClips[i] as LevelBackgroundLayer).clear();
            this.mLayerClips[i] = null;
         }
         this.mLayerClips = new Array();
         this.createSkyAndGround();
         this.mTextureClass = AssetCache.getAssetFromCache(this.mLevelBackgroundInformation.mTextureName);
         var bg:Class = AssetCache.getAssetFromCache(this.mLevelBackgroundInformation.mName);
         for(i = 0; i < this.mLevelBackgroundInformation.mLayers.length; i++)
         {
            this.mLayerClips[i] = new LevelBackgroundLayer(bg,this.mLevelBackgroundInformation.mLayers[i].mName,this.mLevelBackgroundInformation.mLayers[i].mSpeed,this.mLevelBackgroundInformation.mLayers[i].mForeground);
            if(this.mLayerClips[i].mForeground)
            {
               this.mForeground.addChild(this.mLayerClips[i]);
            }
            else
            {
               this.mBackground.addChild(this.mLayerClips[i]);
            }
         }
         this.updateScrollAndScale(this.mSideScroll,this.mVerticalScroll);
      }
      
      public function playBackgroundMusic() : void
      {
         SoundEngine.playSound(this.mLevelBackgroundInformation.mAmbientSoundName,SoundEngine.DEFAULT_CHANNEL_NAME,999);
      }
      
      public function clear() : void
      {
         if(SHOW_BACKGROUNDS)
         {
            this.mLevelMain.removeChild(this.mBackground);
         }
         this.mLevelMain.removeChild(this.mSkyAndGround);
         if(SHOW_BACKGROUNDS)
         {
            this.mLevelMain.removeChild(this.mForeground);
         }
         while(this.mForeground.numChildren > 0)
         {
            this.mForeground.removeChildAt(0);
         }
         while(this.mBackground.numChildren > 0)
         {
            this.mBackground.removeChildAt(0);
         }
         for(var i:int = 0; i < this.mLayerClips.length; i++)
         {
            (this.mLayerClips[i] as LevelBackgroundLayer).clear();
            this.mLayerClips[i] = null;
         }
         this.mLayerClips = null;
         this.mBackground = null;
         this.mForeground = null;
         this.mSkyAndGround.graphics.clear();
         this.mSkyAndGround = null;
         this.mTextureClass = null;
      }
      
      public function setGroundLevel(groundLevel:Number) : void
      {
         this.mGroundLevel = groundLevel;
         this.mBackground.y = this.mGroundLevel;
         this.mForeground.y = this.mGroundLevel;
         this.mSkyAndGround.y = this.mGroundLevel;
      }
      
      public function updateScrollAndScale(sideScroll:Number, verticalScroll:Number) : void
      {
         this.mSideScroll = sideScroll;
         this.mVerticalScroll = verticalScroll;
         for(var i:int = 0; i < this.mLayerClips.length; i++)
         {
            (this.mLayerClips[i] as LevelBackgroundLayer).setSideScroll(this.mSideScroll,this.mVerticalScroll);
         }
         this.mSkyAndGround.scaleX = 1 / LevelCamera.smLevelScale;
         this.mSkyAndGround.scaleY = 1 / LevelCamera.smLevelScale;
         this.mSkyAndGround.x = -LevelCamera.smLevelX * (1 / LevelCamera.smLevelScale);
         this.mSkyAndGround.y = this.mGroundLevel - this.mVerticalScroll;
      }
      
      public function createSkyAndGround() : void
      {
         this.mSkyAndGround.graphics.clear();
         this.mSkyAndGround.graphics.lineStyle(1);
         this.mSkyAndGround.graphics.beginFill(this.mLevelBackgroundInformation.mColorGround,1);
         this.mSkyAndGround.graphics.drawRect(-5,0,LevelMain.LEVEL_WIDTH_PIXEL + 10,LevelMain.LEVEL_HEIGHT_PIXEL);
         this.mSkyAndGround.graphics.beginFill(this.mLevelBackgroundInformation.mColorSky,1);
         this.mSkyAndGround.graphics.drawRect(-5,-LevelMain.LEVEL_HEIGHT_PIXEL * 2,LevelMain.LEVEL_WIDTH_PIXEL + 10,LevelMain.LEVEL_HEIGHT_PIXEL * 2);
      }
   }
}
