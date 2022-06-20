package com.angrybirds.data.level.theme
{
   public class LevelThemeBackground
   {
      
      public static const GROUND_TYPE:String = "GROUND_HILLS";
       
      
      protected var mId:String;
      
      protected var mTextureName:String;
      
      protected var mColorSky:int;
      
      protected var mColorGround:int;
      
      protected var mLayers:Vector.<LevelThemeBackgroundLayer>;
      
      protected var mAmbientSoundName:String;
      
      protected var mIconName:String;
      
      private var mVolume:Number;
      
      private var mBackgroundBlockTextureName:String;
      
      public function LevelThemeBackground(name:String, colorSky:int, colorGround:int, ambientName:String, volume:Number, textureName:String, backgroundBlockTextureName:String, iconName:String)
      {
         super();
         this.mId = name;
         this.mLayers = new Vector.<LevelThemeBackgroundLayer>();
         this.mColorSky = colorSky;
         this.mColorGround = colorGround;
         this.mAmbientSoundName = ambientName;
         this.mTextureName = textureName;
         this.mBackgroundBlockTextureName = backgroundBlockTextureName == null || backgroundBlockTextureName.length == 0 ? this.mTextureName : backgroundBlockTextureName;
         this.mIconName = iconName;
         this.mVolume = volume == 0 ? Number(-1) : Number(volume);
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function get ambientSoundName() : String
      {
         return this.mAmbientSoundName;
      }
      
      public function get ambientSoundVolume() : Number
      {
         return this.mVolume;
      }
      
      public function get colorSky() : int
      {
         return this.mColorSky;
      }
      
      public function get colorGround() : int
      {
         return this.mColorGround;
      }
      
      public function get textureName() : String
      {
         return this.mTextureName;
      }
      
      public function get backgroundBlockTextureName() : String
      {
         return this.mBackgroundBlockTextureName;
      }
      
      public function get iconName() : String
      {
         return this.mIconName;
      }
      
      public function get layerCount() : int
      {
         return this.mLayers.length;
      }
      
      public function initLayersFromXML(layers:XMLList) : void
      {
         var layerXML:XML = null;
         var layer:LevelThemeBackgroundLayer = null;
         for each(layerXML in layers.Layer)
         {
            layer = this.addLayer(layerXML.@id,layerXML.@sky,layerXML.@scale,layerXML.@speed / 1000,layerXML.@xOffset,layerXML.@yOffset,Number(layerXML.@velX) || Number(0),layerXML.@foreground != 0,layerXML.@tileable.toString().toLowerCase() != "false",layerXML.@optional.toString().toLowerCase() == "true",layerXML.@moveStartOffsetX,layerXML.@moveEndOffsetX,layerXML.@highQuality.toString().toLowerCase() == "true");
            layer.initializeParticleEmittersFromXML(layerXML.Particle_Emitter);
            layer.initializeAnimationFromXML(layerXML.animation);
         }
         this.mLayers.reverse();
      }
      
      public function addLayer(spriteName:String, color:String, scale:Number, speed:Number, xOffset:Number, yOffset:Number, velocityX:Number, foreground:Boolean, tileable:Boolean, optional:Boolean, moveStartOffsetX:Number, moveEndOffsetX:Number, highQuality:Boolean = false) : LevelThemeBackgroundLayer
      {
         var layer:LevelThemeBackgroundLayer = new LevelThemeBackgroundLayer(spriteName,color,scale,speed,xOffset,yOffset,velocityX,foreground,tileable,optional,moveStartOffsetX,moveEndOffsetX,highQuality);
         this.mLayers.push(layer);
         return layer;
      }
      
      public function getLayer(index:int) : LevelThemeBackgroundLayer
      {
         return this.mLayers[index];
      }
   }
}
