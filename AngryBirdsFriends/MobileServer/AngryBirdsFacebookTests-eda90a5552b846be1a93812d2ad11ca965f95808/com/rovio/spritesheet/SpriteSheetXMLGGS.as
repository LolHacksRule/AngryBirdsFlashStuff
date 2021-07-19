package com.rovio.spritesheet
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class SpriteSheetXMLGGS extends SpriteSheetBase
   {
       
      
      public function SpriteSheetXMLGGS(sheetXML:XML, imageXMLs:Vector.<XML>, sheetBitmap:BitmapData)
      {
         super(sheetBitmap);
         this.parseData(sheetXML,imageXMLs);
      }
      
      protected function parseData(sheetXML:XML, imageXMLs:Vector.<XML>) : void
      {
         var clipAreas:Dictionary = null;
         var spriteXML:XML = null;
         var name:String = null;
         var fileName:String = null;
         var x:int = 0;
         var y:int = 0;
         var clipArea:ClipArea = null;
         var width:int = 0;
         var height:int = 0;
         var pivotX:int = 0;
         var pivotY:int = 0;
         var rectangle:Rectangle = null;
         var sprite:SpriteRovio = null;
         clipAreas = this.getImageClipAreas(imageXMLs);
         var spriteList:XMLList = sheetXML.child("sprite");
         for each(spriteXML in spriteList)
         {
            name = spriteXML.@name;
            fileName = spriteXML.@file;
            x = parseInt(spriteXML.@x);
            y = parseInt(spriteXML.@y);
            clipArea = clipAreas[this.getImageName(fileName,name)];
            if(clipArea == null)
            {
               width = parseInt(spriteXML.@width);
               height = parseInt(spriteXML.@height);
               pivotX = parseInt(spriteXML.@pivotX);
               pivotY = parseInt(spriteXML.@pivotY);
               if(width > 0 && height > 0)
               {
                  clipArea = new ClipArea(0,0,width,height,pivotX,pivotY);
               }
            }
            if(clipArea)
            {
               rectangle = new Rectangle(x + clipArea.x,y + clipArea.y,clipArea.width,clipArea.height);
               sprite = new SpriteRovio();
               sprite.name = name;
               sprite.rect = rectangle;
               sprite.pivotX = clipArea.pivotX;
               sprite.pivotY = clipArea.pivotY;
               sprite.sheetBitmap = mSheet;
               addSprite(sprite);
            }
         }
         mName = sheetXML.@file;
      }
      
      private function getImageName(fileName:String, imageName:String) : String
      {
         return fileName + "#" + imageName;
      }
      
      private function getImageClipAreas(imageXMLs:Vector.<XML>) : Dictionary
      {
         var imageXML:XML = null;
         var fileName:String = null;
         var clipAreaList:XMLList = null;
         var clipArea:XML = null;
         var name:String = null;
         var width:int = 0;
         var height:int = 0;
         var pivotX:int = 0;
         var pivotY:int = 0;
         var x:int = 0;
         var y:int = 0;
         var spriteBoundsList:XMLList = null;
         var spriteBounds:XML = null;
         var clipAreas:Dictionary = new Dictionary();
         for each(imageXML in imageXMLs)
         {
            fileName = imageXML.@file;
            clipAreaList = imageXML.child("clipArea");
            for each(clipArea in clipAreaList)
            {
               name = this.getImageName(fileName,clipArea.@name);
               if(clipAreas[name] == null)
               {
                  width = parseInt(clipArea.@width);
                  height = parseInt(clipArea.@height);
                  pivotX = parseInt(clipArea.@pivotX);
                  pivotY = parseInt(clipArea.@pivotY);
                  x = parseInt(clipArea.@x);
                  y = parseInt(clipArea.@y);
                  spriteBoundsList = clipArea.child("spriteBounds");
                  if(spriteBoundsList.length() == 1)
                  {
                     spriteBounds = spriteBoundsList[0];
                     width = parseInt(spriteBounds.@width);
                     height = parseInt(spriteBounds.@height);
                     x = parseInt(spriteBounds.@x) - x;
                     y = parseInt(spriteBounds.@y) - y;
                     pivotX -= x;
                     pivotY -= y;
                  }
                  else
                  {
                     x = 0;
                     y = 0;
                  }
                  clipAreas[name] = new ClipArea(x,y,width,height,pivotX,pivotY);
               }
            }
         }
         return clipAreas;
      }
   }
}
