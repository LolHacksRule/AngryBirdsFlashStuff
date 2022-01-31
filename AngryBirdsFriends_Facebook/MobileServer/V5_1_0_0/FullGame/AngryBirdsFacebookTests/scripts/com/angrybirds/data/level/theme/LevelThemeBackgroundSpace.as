package com.angrybirds.data.level.theme
{
   public class LevelThemeBackgroundSpace extends LevelThemeBackground
   {
       
      
      protected var mGravitySliceSpriteName:String;
      
      protected var mGravitySliceSpriteFadedName:String;
      
      protected var mGravityBoxSpriteName:String;
      
      protected var mGravityBoxSpriteFadedName:String;
      
      protected var mTextureScale:Number = 1.0;
      
      protected var mScale:Number = 1.0;
      
      protected var mLoadNames:Array;
      
      protected var mHasForeground:Boolean;
      
      public function LevelThemeBackgroundSpace(name:String, colorSky:int, colorGround:int, ambientName:String, textureName:String, gravitySliceSpriteName:String, gravitySliceSpriteFadedName:String, gravityBoxSpriteName:String, gravityBoxSpriteFadedName:String, iconName:String, scale:Number, textureScale:Number, loadNames:Array)
      {
         super(name,colorSky,colorGround,ambientName,-1,textureName,null,iconName);
         this.mGravitySliceSpriteName = gravitySliceSpriteName;
         this.mGravitySliceSpriteFadedName = gravitySliceSpriteFadedName;
         this.mGravityBoxSpriteName = gravityBoxSpriteName;
         this.mGravityBoxSpriteFadedName = gravityBoxSpriteFadedName;
         this.mScale = scale;
         this.mTextureScale = textureScale;
         if(!loadNames)
         {
            this.mLoadNames = [];
         }
         else
         {
            this.mLoadNames = loadNames.concat();
         }
      }
      
      public function get gravitySliceSpriteName() : String
      {
         return this.mGravitySliceSpriteName;
      }
      
      public function get gravitySliceSpriteFadedName() : String
      {
         return this.mGravitySliceSpriteFadedName;
      }
      
      public function get gravityBoxSpriteName() : String
      {
         return this.mGravityBoxSpriteName;
      }
      
      public function get gravityBoxSpriteFadedName() : String
      {
         return this.mGravityBoxSpriteFadedName;
      }
      
      public function get textureScale() : Number
      {
         return this.mTextureScale;
      }
      
      public function get loadNames() : Array
      {
         return this.mLoadNames.concat();
      }
      
      override public function get colorGround() : int
      {
         if(this.mHasForeground)
         {
            return super.colorGround;
         }
         return 0;
      }
      
      private function initializeLayer(layerData:Object, foreground:Boolean = false) : void
      {
         var amount:int = 0;
         var x:Number = NaN;
         var y:Number = NaN;
         var w:Number = NaN;
         var h:Number = NaN;
         var velX:Number = NaN;
         var velY:Number = NaN;
         var variation:Number = NaN;
         var randomRotation:Boolean = false;
         var sprites:Array = null;
         var spriteName:String = layerData.sprite;
         var scale:Number = (!!layerData.scale ? layerData.scale : 1) * this.mScale;
         var zDistance:Number = !!layerData.zDistance ? Number(layerData.zDistance) : Number(0);
         var offsetX:Number = !!layerData.offsetX ? Number(layerData.offsetX) : Number(0);
         var offsetY:Number = !!layerData.offsetY ? Number(layerData.offsetY) : Number(0);
         var angleMult:Number = layerData.angleMult !== undefined ? Number(layerData.angleMult) : Number(0);
         var scaleSpeed:Number = layerData.scaleSpeed !== undefined ? Number(layerData.scaleSpeed) : Number(1);
         var xMult:Number = layerData.xMult !== undefined ? Number(layerData.xMult) : Number(1);
         var yMult:Number = layerData.yMult !== undefined ? Number(layerData.yMult) : Number(1);
         var tileable:Boolean = layerData.bLoop !== undefined ? Boolean(layerData.bLoop) : true;
         var velocityX:Number = layerData.velX !== undefined ? Number(layerData.velX) : Number(0);
         var velocityY:Number = layerData.velY !== undefined ? Number(layerData.velY) : Number(0);
         var moveStartOffsetX:Number = layerData.moveStartOffsetX !== undefined ? Number(layerData.moveStartOffsetX) : Number(0);
         var moveEndOffsetX:Number = layerData.moveEndOffsetX !== undefined ? Number(layerData.moveEndOffsetX) : Number(0);
         var layer:LevelThemeBackgroundLayerSpace = null;
         layer = new LevelThemeBackgroundLayerSpace(spriteName,null,scale,zDistance,offsetX,offsetY,xMult,yMult,angleMult,scaleSpeed,velocityX,velocityY,foreground,tileable,false,moveStartOffsetX,moveEndOffsetX,false);
         var elements:Object = layerData.elements;
         if(elements)
         {
            amount = elements.amount;
            if(amount > 0)
            {
               x = !!elements.x ? Number(elements.x) : Number(0);
               y = !!elements.y ? Number(elements.y) : Number(0);
               w = !!elements.w ? Number(elements.w) : Number(1);
               h = !!elements.h ? Number(elements.h) : Number(1);
               velX = !!elements.velX ? Number(elements.velX) : Number(0);
               velY = !!elements.velY ? Number(elements.velY) : Number(0);
               variation = !!elements.variation ? Number(elements.variation) : Number(0);
               randomRotation = elements.randomRotation;
               sprites = elements.sprites;
               layer.initializeExtraElements(amount,x,y,w,h,velX,velY,variation,randomRotation,sprites);
            }
         }
         mLayers.push(layer);
      }
      
      public function initLayersFromObjectArrays(bgLayers:Array, fgLayers:Array) : void
      {
         var bgLayerData:Object = null;
         var fgLayerData:Object = null;
         var fgLayerArray:Array = null;
         var fgLayerObject:Object = null;
         for each(bgLayerData in bgLayers)
         {
            this.initializeLayer(bgLayerData,false);
         }
         for each(fgLayerData in fgLayers)
         {
            if(fgLayerData is Array)
            {
               fgLayerArray = fgLayerData as Array;
               if(fgLayerArray.length >= 4)
               {
                  fgLayerObject = {
                     "sprite":fgLayerArray[1],
                     "scale":fgLayerArray[3],
                     "zDistance":fgLayerArray[2]
                  };
                  this.initializeLayer(fgLayerObject,true);
                  this.mHasForeground = true;
               }
            }
         }
      }
   }
}
