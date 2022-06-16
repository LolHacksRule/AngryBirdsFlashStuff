package com.rovio.graphics
{
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import starling.core.Starling;
   import starling.display.Image;
   import starling.textures.Texture;
   
   public class PivotTexture
   {
       
      
      private var mTexture:Texture;
      
      private var mTextureBitmapData:BitmapData;
      
      private var mClipRect:Rectangle;
      
      private var mBitmapData:BitmapData;
      
      private var mPivotX:int;
      
      private var mPivotY:int;
      
      private var mScale:Number = 1.0;
      
      private var mFlipped:Boolean;
      
      private var mFlippedTexture:Texture;
      
      public function PivotTexture(texture:Texture, textureBitmapData:BitmapData, clipRect:Rectangle, pivotX:int, pivotY:int, scale:Number)
      {
         super();
         this.mTexture = texture;
         this.mTextureBitmapData = textureBitmapData;
         this.mClipRect = clipRect.clone();
         this.mPivotX = pivotX;
         this.mPivotY = pivotY;
         this.mScale = scale;
      }
      
      public function get scale() : Number
      {
         return this.mScale;
      }
      
      public function get texture() : Texture
      {
         if(this.mFlipped)
         {
            return this.mFlippedTexture;
         }
         return this.mTexture;
      }
      
      public function get pivotX() : int
      {
         return this.mPivotX;
      }
      
      public function get pivotY() : int
      {
         return this.mPivotY;
      }
      
      public function get width() : Number
      {
         return this.mTexture.width * this.scale;
      }
      
      public function get height() : Number
      {
         return this.mTexture.height * this.scale;
      }
      
      public function get bitmapData() : BitmapData
      {
         if(!this.mBitmapData)
         {
            this.mBitmapData = new BitmapData(this.mClipRect.width,this.mClipRect.height);
            this.mBitmapData.copyPixels(this.mTextureBitmapData,this.mClipRect,new Point(0,0));
         }
         return this.mBitmapData;
      }
      
      public function set pivotX(pivotX:int) : void
      {
         this.mPivotX = pivotX;
      }
      
      public function set pivotY(pivotY:int) : void
      {
         this.mPivotY = pivotY;
      }
      
      public function getAsImage(useColor:Boolean = false, highQuality:Boolean = true) : Image
      {
         var image:Image = new Image(this.texture,useColor,highQuality);
         image.pivotX = -this.pivotX;
         image.pivotY = -this.pivotY;
         image.scaleX = image.scaleY = this.scale;
         return image;
      }
      
      public function dispose() : void
      {
         if(this.mTexture)
         {
            this.mTexture.dispose();
            this.mTexture = null;
         }
         if(this.mFlippedTexture)
         {
            this.mFlippedTexture.dispose();
            this.mFlippedTexture = null;
         }
         if(this.mBitmapData)
         {
            this.mBitmapData.dispose();
            this.mBitmapData = null;
         }
         this.mTextureBitmapData = null;
      }
      
      public function flipAnimation(flipHorizontally:Boolean) : void
      {
         var flippedBMD:BitmapData = null;
         var matrix:Matrix = null;
         if(flipHorizontally)
         {
            if(!this.mFlippedTexture)
            {
               flippedBMD = new BitmapData(this.mTexture.width,this.mTexture.height,true,0);
               matrix = new Matrix(-1,0,0,1,this.mTexture.width,0);
               flippedBMD.draw(this.bitmapData,matrix,null,null,null,true);
               this.mFlippedTexture = Starling.textureFromBitmapData(flippedBMD);
            }
         }
         this.mFlipped = flipHorizontally;
      }
   }
}
