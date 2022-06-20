package com.angrybirds.data.level.theme
{
   public class LevelThemeBackgroundFriends extends LevelThemeBackground
   {
       
      
      public function LevelThemeBackgroundFriends(name:String, colorSky:int, colorGround:int, ambientName:String, volume:Number, textureName:String, backgroundBlockTextureName:String, iconName:String)
      {
         super(name,colorSky,colorGround,ambientName,volume,textureName,backgroundBlockTextureName,iconName);
      }
      
      public function initLayersFromObject(bgLayers:Object, fgLayers:Object) : void
      {
         var bgLayerData:Object = null;
         var fgLayerData:Object = null;
         for each(bgLayerData in bgLayers)
         {
            this.initializeLayer(bgLayerData,false);
         }
         for each(fgLayerData in fgLayers)
         {
            this.initializeLayer(fgLayerData,true);
         }
      }
      
      private function initializeLayer(layerData:Object, foreground:Boolean = false) : void
      {
         var spriteName:String = layerData.sprite;
         var speed:Number = layerData.parallax;
         var scale:Number = !!layerData.scale ? Number(layerData.scale) : Number(1);
         var offsetX:Number = !!layerData.xOffset ? Number(layerData.xOffset) : Number(0);
         var offsetY:Number = !!layerData.yOffset ? Number(layerData.yOffset) : Number(0);
         var velocityX:Number = layerData.velX !== undefined ? Number(layerData.velX) : Number(0);
         var tileable:Boolean = layerData.looping !== undefined ? Boolean(layerData.looping) : true;
         var optional:Boolean = layerData.optional !== undefined ? Boolean(layerData.optional) : false;
         var moveStartOffsetX:Number = layerData.moveStartOffsetX !== undefined ? Number(layerData.moveStartOffsetX) : Number(0);
         var moveEndOffsetX:Number = layerData.moveEndOffsetX !== undefined ? Number(layerData.moveEndOffsetX) : Number(0);
         var highQuality:Boolean = layerData.highQuality !== undefined ? Boolean(layerData.highQuality) : false;
         var layer:LevelThemeBackgroundLayer = new LevelThemeBackgroundLayer(spriteName,null,scale,speed,offsetX,offsetY,velocityX,foreground,tileable,optional,moveStartOffsetX,moveEndOffsetX,highQuality);
         mLayers.push(layer);
      }
   }
}
