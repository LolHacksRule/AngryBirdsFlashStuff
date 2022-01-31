package com.rovio.graphics
{
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.utils.Dictionary;
   import starling.display.Image;
   import starling.display.Sprite;
   
   public class CompositeSpriteParser
   {
      
      private static const ELEMENT_COMPOSITE_SPRITE:String = "compositeSprite";
      
      private static const ELEMENT_GROUP:String = "group";
      
      private static const ELEMENT_SPRITE:String = "sprite";
      
      private static var sSpriteXMLs:Dictionary = new Dictionary();
       
      
      public function CompositeSpriteParser()
      {
         super();
      }
      
      public static function addCompositeSprites(data:XML) : void
      {
         var groupXML:XML = null;
         var compositeList:XMLList = data.child(ELEMENT_COMPOSITE_SPRITE);
         addCompositeList(compositeList);
         var groupList:XMLList = data.child(ELEMENT_GROUP);
         for each(groupXML in groupList)
         {
            compositeList = groupXML.child(ELEMENT_COMPOSITE_SPRITE);
            addCompositeList(compositeList);
         }
      }
      
      protected static function addCompositeList(compositeList:XMLList) : void
      {
         var compositeXML:XML = null;
         for each(compositeXML in compositeList)
         {
            sSpriteXMLs[String(compositeXML.@name)] = compositeXML;
         }
      }
      
      public static function hasCompositeSprite(name:String) : Boolean
      {
         return sSpriteXMLs[name] != null;
      }
      
      public static function getCompositeSprite(name:String, textureManager:TextureManager, highQuality:Boolean = true) : starling.display.Sprite
      {
         return updateCompositeSprite(name,textureManager,null,highQuality);
      }
      
      public static function updateCompositeSprite(name:String, textureManager:TextureManager, target:starling.display.Sprite, highQuality:Boolean = true) : starling.display.Sprite
      {
         var image:Image = null;
         var spriteXML:XML = null;
         var texture:PivotTexture = null;
         if(!target)
         {
            target = new starling.display.Sprite();
         }
         var data:XML = sSpriteXMLs[name];
         if(!data)
         {
            return null;
         }
         var count:int = 0;
         var spriteList:XMLList = data.child(ELEMENT_SPRITE);
         for(var i:int = spriteList.length() - 1; i >= 0; i--)
         {
            spriteXML = spriteList[i];
            texture = textureManager.getTexture(spriteXML.@name);
            if(texture)
            {
               if(count >= target.numChildren)
               {
                  image = new Image(texture.texture,false,highQuality);
                  target.addChild(image);
               }
               else
               {
                  image = target.getChildAt(count) as Image;
                  image.texture = texture.texture;
               }
               image.x = parseInt(spriteXML.@x) - texture.pivotX;
               image.y = parseInt(spriteXML.@y) - texture.pivotY;
               image.scaleX = texture.scale;
               image.scaleY = texture.scale;
               image.name = spriteXML.@tag;
               count++;
            }
         }
         while(target.numChildren > count)
         {
            target.removeChildAt(count,true);
         }
         return target;
      }
      
      public static function getTraditionalCompositeSprite(name:String, textureManager:TextureManager) : flash.display.Sprite
      {
         var spriteXML:XML = null;
         var texture:PivotTexture = null;
         var bitmap:Bitmap = null;
         var composite:flash.display.Sprite = new flash.display.Sprite();
         var data:XML = sSpriteXMLs[name];
         var spriteList:XMLList = data.child(ELEMENT_SPRITE);
         for each(spriteXML in spriteList)
         {
            texture = textureManager.getTexture(spriteXML.@name);
            if(texture)
            {
               bitmap = new Bitmap(texture.bitmapData);
               composite.addChildAt(bitmap,0);
               bitmap.x = parseInt(spriteXML.@x) - texture.pivotX;
               bitmap.y = parseInt(spriteXML.@y) - texture.pivotY;
               bitmap.smoothing = true;
            }
         }
         return composite;
      }
   }
}
