package com.rovio.graphics.cutscenes
{
   import com.rovio.graphics.CompositeSpriteParser;
   import com.rovio.graphics.PivotTexture;
   import com.rovio.graphics.TextureManager;
   import starling.display.DisplayObject;
   import starling.display.DisplayObjectContainer;
   import starling.display.Image;
   import starling.display.Sprite;
   
   public class CutSceneImageAction extends CutSceneAction
   {
      
      public static const MAIN_SPRITE_NAME:String = "background";
       
      
      private var mName:String;
      
      private var mImageName:String;
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var mWidth:Number;
      
      private var mHeight:Number;
      
      private var mZoom:Number = 1.0;
      
      private var mFitHeight:Boolean = true;
      
      public function CutSceneImageAction(time:Number, duration:Number, name:String, imageName:String, x:Number, y:Number, zoom:Number)
      {
         super(time,duration);
         this.mName = name;
         this.mImageName = imageName;
         this.mX = x;
         this.mY = y;
         if(!isNaN(zoom) && zoom > 0)
         {
            this.mZoom = zoom;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get imageName() : String
      {
         return this.mImageName;
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function set fitHeight(fitHeight:Boolean) : void
      {
         this.mFitHeight = fitHeight;
      }
      
      override public function update(time:Number, sprite:Sprite, textureManager:TextureManager) : Boolean
      {
         var image:DisplayObject = null;
         var pivotTexture:PivotTexture = null;
         var background:Sprite = null;
         var current:DisplayObject = null;
         var parent:DisplayObjectContainer = null;
         if(!super.update(time,sprite,textureManager))
         {
            image = CompositeSpriteParser.getCompositeSprite(this.imageName,textureManager);
            if(!image)
            {
               pivotTexture = textureManager.getTexture(this.imageName);
               if(pivotTexture)
               {
                  image = new Image(pivotTexture.texture);
                  image.pivotX = -pivotTexture.pivotX;
                  image.pivotY = -pivotTexture.pivotY;
               }
            }
            if(image)
            {
               background = sprite.getChildByName(MAIN_SPRITE_NAME) as Sprite;
               if(background)
               {
                  sprite = background;
               }
               image.x += this.x;
               image.y += this.y;
               image.name = this.name;
               current = sprite.getChildByName(this.name);
               if(current)
               {
                  parent = current.parent;
                  parent.removeChild(current,true);
                  parent.addChild(image);
               }
               else
               {
                  sprite.addChild(image);
               }
               if(this.name == MAIN_SPRITE_NAME)
               {
                  if(!this.mFitHeight)
                  {
                  }
               }
               image.scaleX = this.mZoom;
               image.scaleY = this.mZoom;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(width:Number, height:Number) : void
      {
         this.mWidth = width;
         this.mHeight = height;
      }
      
      override public function clone() : CutSceneAction
      {
         var clone:CutSceneImageAction = new CutSceneImageAction(time,duration,this.mName,this.mImageName,this.mX,this.mY,this.mZoom);
         clone.mFitHeight = this.mFitHeight;
         clone.mWidth = this.mWidth;
         clone.mHeight = this.mHeight;
         return clone;
      }
   }
}
