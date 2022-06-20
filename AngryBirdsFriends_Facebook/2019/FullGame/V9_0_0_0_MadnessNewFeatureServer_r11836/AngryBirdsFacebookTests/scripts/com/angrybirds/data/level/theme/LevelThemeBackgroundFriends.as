package com.angrybirds.data.level.theme
{
   public class LevelThemeBackgroundFriends extends LevelThemeBackground
   {
       
      
      public function LevelThemeBackgroundFriends(name:String, colorSky:int, colorGround:int, ambientName:String, volume:Number, textureName:String, backgroundBlockTextureName:String, iconName:String)
      {
         super(name,colorSky,colorGround,ambientName,volume,textureName,backgroundBlockTextureName,iconName);
      }
      
      public function initLayersFromObject(bgLayers:Object, fgLayers:Object, animationObjects:Object) : void
      {
         var bgLayerData:Object = null;
         var fgLayerData:Object = null;
         for each(bgLayerData in bgLayers)
         {
            this.initializeLayer(bgLayerData,false,animationObjects);
         }
         for each(fgLayerData in fgLayers)
         {
            this.initializeLayer(fgLayerData,true,animationObjects);
         }
      }
      
      private function initializeLayer(layerData:Object, foreground:Boolean, animationObjects:Object) : void
      {
         var spriteNames:Array = null;
         var animName:String = null;
         var sn:String = null;
         var animationObjectName:* = null;
         var animationObject:Object = null;
         var xOffsetPercent:Number = NaN;
         var yOffsetPercent:Number = NaN;
         var duration:Number = NaN;
         var animScale:Number = NaN;
         var visible:Boolean = false;
         var movement:Object = null;
         var finalScale:Number = NaN;
         var spriteName:String = layerData.sprite;
         if(layerData.sprites !== undefined)
         {
            spriteNames = new Array();
            for each(sn in layerData.sprites)
            {
               spriteNames.push(sn);
            }
         }
         var speed:Number = layerData.parallax;
         var scale:Number = layerData.scale !== undefined ? Number(layerData.scale) : Number(1);
         var frameTime:Number = layerData.frameTime !== undefined ? Number(layerData.frameTime * 1000) : Number(0);
         var offsetX:Number = 0;
         if(layerData.xOffset !== undefined)
         {
            offsetX = layerData.xOffset;
         }
         else if(layerData.positionX !== undefined)
         {
            offsetX = layerData.positionX;
         }
         var offsetY:Number = 0;
         if(layerData.yOffset !== undefined)
         {
            offsetY = layerData.yOffset;
         }
         else if(layerData.positionY !== undefined)
         {
            offsetY = layerData.positionY;
         }
         var velocityX:Number = 0;
         if(layerData.velX !== undefined)
         {
            velocityX = layerData.velX;
         }
         else if(layerData.velocity !== undefined)
         {
            velocityX = layerData.velocity;
         }
         var tileable:Boolean = layerData.looping !== undefined ? Boolean(layerData.looping) : true;
         var optional:Boolean = layerData.optional !== undefined ? Boolean(layerData.optional) : false;
         var moveStartOffsetX:Number = layerData.moveStartOffsetX !== undefined ? Number(layerData.moveStartOffsetX) : Number(0);
         var moveEndOffsetX:Number = layerData.moveEndOffsetX !== undefined ? Number(layerData.moveEndOffsetX) : Number(0);
         var highQuality:Boolean = layerData.highQuality !== undefined ? Boolean(layerData.highQuality) : false;
         var layerVisibility:Boolean = layerData.visible !== undefined ? Boolean(layerData.visible) : true;
         var layer:LevelThemeBackgroundLayer = new LevelThemeBackgroundLayer(spriteName,spriteNames,frameTime,null,scale,speed,offsetX,offsetY,velocityX,foreground,tileable,optional,moveStartOffsetX,moveEndOffsetX,highQuality,layerVisibility);
         for each(animName in layerData.animations)
         {
            for(animationObjectName in animationObjects)
            {
               if(animName == animationObjectName)
               {
                  animationObject = animationObjects[animName];
                  xOffsetPercent = !!animationObject.xOffsetPercent ? Number(animationObject.xOffsetPercent) : Number(0);
                  yOffsetPercent = !!animationObject.yOffsetPercent ? Number(animationObject.yOffsetPercent) : Number(0);
                  duration = !!animationObject.duration ? Number(animationObject.duration) : Number(-1);
                  animScale = !!animationObject.scale ? Number(animationObject.scale) : Number(1);
                  visible = !!animationObject.hasOwnProperty("visible") ? Boolean(animationObject.visible) : true;
                  movement = animationObject.movement;
                  finalScale = !!animationObject.finalScale ? Number(animationObject.finalScale) : Number(animScale);
                  layer.setAnimationData(animName,animationObject.type,animationObject.tween,xOffsetPercent,yOffsetPercent,duration,animationObject.trigger,animScale,animationObject.audio,animationObject.audioVolume,animationObject.audioLoop,visible,movement,finalScale);
                  break;
               }
            }
         }
         mLayers.push(layer);
      }
   }
}
