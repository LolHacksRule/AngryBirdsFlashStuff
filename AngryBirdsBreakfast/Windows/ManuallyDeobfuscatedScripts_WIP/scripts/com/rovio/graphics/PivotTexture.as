package com.rovio.graphics
{
   import starling.textures.Texture;
   import starling.display.Image;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class PivotTexture
   {
       
      
      private var mTexture:Texture;
      
      private var mTextureBitmapData:BitmapData;
      
      private var mClipRect:Rectangle;
      
      private var mBitmapData:BitmapData;
      
      private var mPivotX:int;
      
      private var mPivotY:int;
      
      private var mScale:Number = 1.0;
      
      public function PivotTexture(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         super();
         this.mTexture = param1;
         this.mTextureBitmapData = param2;
         this.mClipRect = param3.clone();
         this.mPivotX = param4;
         this.mPivotY = param5;
         this.mScale = param6;
      }
      
      public function get scale() : Number
      {
         return this.mScale;
      }
      
      public function get texture() : Texture
      {
         return this.mTexture;
      }
      
      public function get pivotX() : int
      {
         return this.mPivotX * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.mPivotY * this.scale;
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
      
      public function set pivotX(param1:int) : void
      {
         this.mPivotX = param1;
      }
      
      public function set pivotY(param1:int) : void
      {
         this.mPivotY = param1;
      }
      
      public function getAsImage(param1:Boolean = false, param2:Boolean = true) : Image
      {
         var _loc3_:Image = new Image(this.texture,param1,param2);
         _loc3_.pivotX = -this.pivotX;
         _loc3_.pivotY = -this.pivotY;
         _loc3_.scaleX = _loc3_.scaleY = this.scale;
         return _loc3_;
      }
      
      public function dispose() : void
      {
         if(this.mTexture)
         {
            this.mTexture.dispose();
            this.mTexture = null;
         }
         if(this.mTextureBitmapData)
         {
            this.mTextureBitmapData.dispose();
            this.mTextureBitmapData = null;
         }
      }
   }
}
