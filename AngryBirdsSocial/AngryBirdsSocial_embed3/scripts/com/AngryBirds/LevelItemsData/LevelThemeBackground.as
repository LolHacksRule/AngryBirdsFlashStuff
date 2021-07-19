package com.AngryBirds.LevelItemsData
{
   public class LevelThemeBackground
   {
       
      
      public var mName:String;
      
      public var mTextureName:String;
      
      public var mTextureStrokeColor:Number;
      
      public var mLayers:Array;
      
      public var mColorSky:Number;
      
      public var mColorGround:Number;
      
      public var mAmbientSoundName:String;
      
      public var mIconName:String;
      
      public function LevelThemeBackground(aName:String, layers:XMLList, colorSky:Number, colorGround:Number, ambientName:String, aTextureName:String, aTextureStrokeColor:Number, aIconName:String)
      {
         var layer:XML = null;
         super();
         this.mName = aName;
         this.mLayers = new Array();
         this.mColorSky = colorSky;
         this.mColorGround = colorGround;
         this.mAmbientSoundName = ambientName;
         this.mTextureName = aTextureName;
         this.mTextureStrokeColor = aTextureStrokeColor;
         this.mIconName = aIconName;
         for each(layer in layers.Layer)
         {
            this.newLayer(layer.@id,layer.@speed,-1,0,0,layer.@foreground != 0);
         }
         this.mLayers.reverse();
      }
      
      public function newLayer(aName:String, aSpeed:Number, aColor:Number, aTop:Number, aBottom:Number, foreground:Boolean) : void
      {
         this.mLayers[this.mLayers.length] = new LevelThemeBackgroundLayer(aName,aSpeed,aColor,aTop,aBottom,foreground);
      }
      
      public function getCost() : Number
      {
         return 100;
      }
   }
}
