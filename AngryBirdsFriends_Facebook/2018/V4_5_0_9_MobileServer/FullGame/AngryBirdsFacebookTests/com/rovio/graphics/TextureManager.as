package com.rovio.graphics
{
   import com.rovio.adobe.images.PNGEncoder;
   import com.rovio.spritesheet.SpriteRovio;
   import com.rovio.spritesheet.SpriteSheetBase;
   import com.rovio.spritesheet.SpriteSheetContainer;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.net.FileReference;
   import flash.system.System;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   import org.villekoskela.RectanglePacker;
   import starling.core.Starling;
   import starling.textures.SubTexture;
   import starling.textures.Texture;
   import starling.utils.getNextPowerOfTwo;
   
   public class TextureManager extends EventDispatcher
   {
      
      protected static const FRAME_BREATH_TIME_MILLI_SECONDS:Number = 20;
      
      private static const MAX_TEXTURE_SIZE:int = 2048;
      
      private static const MAX_SCALE_FACTOR:int = 8;
      
      private static var mInstance:TextureManager;
       
      
      private var mTextures:Dictionary;
      
      private var mTextureNames:Vector.<String>;
      
      private var mSpriteSheetGroups:Vector.<SpriteSheetContainer>;
      
      private var mTextureBitmapDatas:Dictionary;
      
      private var mInitialized:Boolean;
      
      private var mInitializing:Boolean;
      
      private var mInitializationStartTime:int;
      
      private var mId:String;
      
      private var mUnknownTexture:Texture;
      
      private var mTextureMemoryUsage:int;
      
      private var mBitmapMemoryUsage:int;
      
      private var mRectanglePacker:RectanglePacker;
      
      private var mTimer:Timer;
      
      private var mGeneratedTextures:Vector.<BitmapData>;
      
      public function TextureManager(id:String = null)
      {
         this.mGeneratedTextures = new Vector.<BitmapData>();
         super();
         this.mSpriteSheetGroups = new Vector.<SpriteSheetContainer>();
         this.mTextures = new Dictionary();
         this.mTextureNames = new Vector.<String>();
         this.mTextureBitmapDatas = new Dictionary();
         this.mId = id;
         this.mRectanglePacker = new RectanglePacker(MAX_TEXTURE_SIZE,MAX_TEXTURE_SIZE);
      }
      
      public static function get instance() : TextureManager
      {
         if(!mInstance)
         {
            mInstance = new TextureManager("main");
         }
         return mInstance;
      }
      
      private static function getSheetIndex(rectangleId:int) : int
      {
         return rectangleId / 1000000;
      }
      
      private static function getRectangleIndex(rectangleId:int) : int
      {
         return rectangleId % 1000000;
      }
      
      private static function getRectangleId(rectangleIndex:int, sheetIndex:int) : int
      {
         return sheetIndex * 1000000 + rectangleIndex;
      }
      
      public function get textureMemoryUsage() : int
      {
         return this.mTextureMemoryUsage;
      }
      
      public function get bitmapMemoryUsage() : int
      {
         return this.mBitmapMemoryUsage;
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function dispose() : void
      {
         var texture:PivotTexture = null;
         var sheetGroup:SpriteSheetContainer = null;
         if(this.mTextures)
         {
            for each(texture in this.mTextures)
            {
               this.unregisterBitmapDataTexture(texture.texture.parent);
               texture.dispose();
            }
            this.mTextures = null;
         }
         this.mTextureNames = null;
         if(this.mSpriteSheetGroups)
         {
            for each(sheetGroup in this.mSpriteSheetGroups)
            {
               sheetGroup.dispose();
            }
            this.mSpriteSheetGroups = null;
         }
         if(this.mTextureBitmapDatas)
         {
            this.mTextureBitmapDatas = null;
         }
         if(this.mGeneratedTextures)
         {
            this.mGeneratedTextures = null;
         }
         if(this.mUnknownTexture)
         {
            this.mUnknownTexture.dispose();
            this.mUnknownTexture = null;
         }
         if(this.mTimer)
         {
            this.mTimer.stop();
            this.mTimer.removeEventListener(TimerEvent.TIMER,this.onTimer);
            this.mTimer = null;
         }
         this.mSpriteSheetGroups = new Vector.<SpriteSheetContainer>();
         this.mTextures = new Dictionary();
         this.mTextureBitmapDatas = new Dictionary();
      }
      
      protected function getSheetGroup(id:String) : SpriteSheetContainer
      {
         var sheetGroup:SpriteSheetContainer = null;
         for each(sheetGroup in this.mSpriteSheetGroups)
         {
            if(sheetGroup.name == id)
            {
               return sheetGroup;
            }
         }
         return null;
      }
      
      public function addTextures(spriteSheet:SpriteSheetBase, group:int) : void
      {
         if(this.mInitializing)
         {
            return;
         }
         var id:String = group.toString();
         var sheetGroup:SpriteSheetContainer = this.getSheetGroup(id);
         if(!sheetGroup)
         {
            sheetGroup = new SpriteSheetContainer(id);
            this.mSpriteSheetGroups.push(sheetGroup);
         }
         sheetGroup.addSheet(spriteSheet);
      }
      
      private function combineSpriteSheets(spriteSheetCollection:Vector.<SpriteSheetBase>, rectanglePacker:RectanglePacker, sheetWidth:int, sheetHeight:int, scaleFactor:int) : int
      {
         var sheetIndex:int = 0;
         var spriteSheet:SpriteSheetBase = null;
         var i:int = 0;
         var sprite:SpriteRovio = null;
         var width:int = 0;
         var height:int = 0;
         var sheetLimit:int = spriteSheetCollection.length + 1;
         var packedCount:int = 0;
         var inserted:int = 0;
         do
         {
            inserted = 0;
            packedCount = 0;
            sheetLimit--;
            rectanglePacker.reset(sheetWidth,sheetHeight,scaleFactor);
            for(sheetIndex = 0; sheetIndex < sheetLimit; sheetIndex++)
            {
               spriteSheet = spriteSheetCollection[sheetIndex];
               for(i = 0; i < spriteSheet.spriteCount; i++)
               {
                  sprite = spriteSheet.getSpriteWithIndex(i);
                  width = Math.ceil(sprite.rect.width / scaleFactor) * scaleFactor;
                  height = Math.ceil(sprite.rect.height / scaleFactor) * scaleFactor;
                  rectanglePacker.insertRectangle(width,height,getRectangleId(i,sheetIndex));
                  inserted++;
               }
            }
            packedCount = rectanglePacker.packRectangles();
         }
         while(packedCount < inserted);
         
         return sheetIndex;
      }
      
      private function drawSpriteSheetsOnSingleBitmapData(spriteSheetCollection:Vector.<SpriteSheetBase>, rectanglePacker:RectanglePacker, targetBitmap:BitmapData) : SpriteSheetBase
      {
         var i:int = 0;
         var rect:Rectangle = null;
         var rectangleId:int = 0;
         var sheetIndex:int = 0;
         var rectangleIndex:int = 0;
         var spriteSheet:SpriteSheetBase = null;
         var sprite:SpriteRovio = null;
         var bitmap:BitmapData = null;
         var packedSprite:SpriteRovio = null;
         var packedCount:int = rectanglePacker.rectangleCount;
         var packedIds:Vector.<int> = new Vector.<int>();
         var combinedSheet:SpriteSheetBase = new SpriteSheetBase(targetBitmap);
         for(i = 0; i < packedCount; i++)
         {
            rect = rectanglePacker.getRectangle(i,null);
            rectangleId = rectanglePacker.getRectangleId(i);
            sheetIndex = getSheetIndex(rectangleId);
            rectangleIndex = getRectangleIndex(rectangleId);
            if(packedIds.indexOf(sheetIndex) < 0)
            {
               packedIds.push(sheetIndex);
            }
            spriteSheet = spriteSheetCollection[sheetIndex];
            combinedSheet.scale = spriteSheet.scale;
            sprite = spriteSheet.getSpriteWithIndex(rectangleIndex);
            bitmap = spriteSheet.bitmapData;
            this.drawSpriteOnBitmap(bitmap,targetBitmap,sprite.rect,rect);
            packedSprite = new SpriteRovio();
            packedSprite.rect = new Rectangle(rect.x,rect.y,sprite.rect.width,sprite.rect.height);
            packedSprite.pivotX = sprite.pivotX;
            packedSprite.pivotY = sprite.pivotY;
            packedSprite.name = sprite.name;
            packedSprite.sheetScale = sprite.sheetScale;
            combinedSheet.addSprite(packedSprite);
         }
         packedIds.sort(function(a:int, b:int):int
         {
            if(a < b)
            {
               return -1;
            }
            return 1;
         });
         for(i = packedIds.length - 1; i >= 0; i--)
         {
            spriteSheetCollection.splice(packedIds[i],1);
         }
         return combinedSheet;
      }
      
      private function drawSpriteOnBitmap(bitmap:BitmapData, target:BitmapData, clipRect:Rectangle, targetRect:Rectangle) : void
      {
         var extraRect:Rectangle = null;
         var x:int = 0;
         var y:int = 0;
         target.copyPixels(bitmap,clipRect,targetRect.topLeft);
         var extraX:int = targetRect.width - clipRect.width;
         var extraY:int = targetRect.height - clipRect.height;
         if(extraX)
         {
            extraRect = new Rectangle(clipRect.right - 1,clipRect.y,1,clipRect.height);
            for(x = 0; x < extraX; x++)
            {
               target.copyPixels(bitmap,extraRect,new Point(targetRect.right - 1 - x,targetRect.y));
            }
         }
         if(extraY)
         {
            extraRect = new Rectangle(clipRect.x,clipRect.bottom - 1,clipRect.width,1);
            for(y = 0; y < extraY; y++)
            {
               target.copyPixels(bitmap,extraRect,new Point(targetRect.x,targetRect.bottom - 1 - y));
            }
         }
         if(extraX * extraY > 0)
         {
         }
      }
      
      public function initializeTextures() : Boolean
      {
         if(!Starling.contextAvailable())
         {
            return false;
         }
         if(this.mInitializing)
         {
            return false;
         }
         this.mInitializing = true;
         this.mInitializationStartTime = getTimer();
         return !this.initializeNextSheetGroup();
      }
      
      private function finalizeInitialization() : void
      {
         var textures:int = this.textureMemoryUsage / 1024;
         var bitmaps:int = this.bitmapMemoryUsage / 1024;
         var end:int = getTimer();
         this.mSpriteSheetGroups = new Vector.<SpriteSheetContainer>();
         this.mInitialized = true;
         this.mInitializing = false;
         if(this.mTimer)
         {
            this.mTimer.stop();
            this.mTimer.removeEventListener(TimerEvent.TIMER,this.onTimer);
            this.mTimer = null;
         }
         dispatchEvent(new Event(Event.INIT));
      }
      
      private function onTimer(event:Event) : void
      {
         this.initializeNextSheetGroup();
      }
      
      private function initializeNextSheetGroup() : Boolean
      {
         var start:int = 0;
         var sheetGroup:SpriteSheetContainer = null;
         var end:int = 0;
         if(this.mSpriteSheetGroups.length > 0)
         {
            start = getTimer();
            sheetGroup = this.mSpriteSheetGroups.pop();
            this.initializeTexturesForSheetGroup(sheetGroup);
            sheetGroup.dispose();
            end = getTimer();
         }
         if(this.mSpriteSheetGroups.length == 0)
         {
            this.finalizeInitialization();
         }
         else
         {
            if(!this.mTimer)
            {
               this.mTimer = new Timer(FRAME_BREATH_TIME_MILLI_SECONDS,0);
               this.mTimer.addEventListener(TimerEvent.TIMER,this.onTimer);
            }
            else
            {
               this.mTimer.stop();
            }
            this.mTimer.start();
         }
         return this.mSpriteSheetGroups.length > 0;
      }
      
      private function initializeTexturesForSheetGroup(sheetGroup:SpriteSheetContainer) : void
      {
         var spriteSheet:SpriteSheetBase = null;
         var spriteSheetCollection:Vector.<SpriteSheetBase> = null;
         var bitmapWidth:int = 0;
         var bitmapHeight:int = 0;
         var combinedBitmapData:BitmapData = null;
         var combinedSpriteSheet:SpriteSheetBase = null;
         var texture:Texture = null;
         var j:int = 0;
         var sprite:SpriteRovio = null;
         spriteSheetCollection = new Vector.<SpriteSheetBase>();
         for(var i:int = 0; i < sheetGroup.spriteSheetCount; i++)
         {
            spriteSheet = sheetGroup.getSpriteSheet(i);
            if(spriteSheet.spriteCount > 0)
            {
               spriteSheetCollection.push(spriteSheet);
            }
         }
         var textureCount:int = 0;
         while(spriteSheetCollection.length > 0)
         {
            if(this.combineSpriteSheets(spriteSheetCollection,this.mRectanglePacker,MAX_TEXTURE_SIZE,MAX_TEXTURE_SIZE,MAX_SCALE_FACTOR) == 0)
            {
               throw new Error("Found too large sprite sheet image for sprite sheet collection \'" + this.getDescriptiveNameForSpriteSheetCollection(spriteSheetCollection) + "\'!");
            }
            bitmapWidth = getNextPowerOfTwo(this.mRectanglePacker.packedWidth);
            bitmapHeight = getNextPowerOfTwo(this.mRectanglePacker.packedHeight);
            if(bitmapWidth <= 0 || bitmapHeight <= 0)
            {
               throw new Error("Invalid size results from rectangle packer, " + bitmapWidth + "x" + bitmapHeight + " for sprite sheet collection \'" + this.getDescriptiveNameForSpriteSheetCollection(spriteSheetCollection) + "\'.");
            }
            try
            {
               combinedBitmapData = new BitmapData(bitmapWidth,bitmapHeight,true,16777215);
            }
            catch(e:Error)
            {
               throw new Error("Could not create bitmapdata sprite sheet (" + bitmapWidth + "x" + bitmapHeight + ") for collection \'" + getDescriptiveNameForSpriteSheetCollection(spriteSheetCollection) + "\' (error: " + e.toString() + ").\n" + "Free memory: " + System.freeMemory + ", Used total memory: " + System.totalMemoryNumber + ", Private memory: " + System.privateMemory + ".",e.errorID);
            }
            combinedSpriteSheet = this.drawSpriteSheetsOnSingleBitmapData(spriteSheetCollection,this.mRectanglePacker,combinedBitmapData);
            texture = this.getTextureFromBitmapData(combinedBitmapData,true,1);
            this.mGeneratedTextures.push(combinedBitmapData);
            for(j = 0; j < combinedSpriteSheet.spriteCount; j++)
            {
               sprite = combinedSpriteSheet.getSpriteWithIndex(j);
               this.addTexture(sprite,texture,combinedBitmapData,sprite.sheetScale);
            }
            textureCount++;
         }
         if(textureCount > 1)
         {
         }
      }
      
      private function getDescriptiveNameForSpriteSheetCollection(spriteSheetCollection:Vector.<SpriteSheetBase>) : String
      {
         var spriteSheet:SpriteSheetBase = null;
         var names:Array = [];
         for each(spriteSheet in spriteSheetCollection)
         {
            names.push(spriteSheet.name);
         }
         return names.join(", ");
      }
      
      private function addTexture(sprite:SpriteRovio, texture:Texture, textureBitmapData:BitmapData, scale:Number) : void
      {
         var rect:Rectangle = null;
         var subTexture:SubTexture = null;
         var pivotTexture:PivotTexture = this.mTextures[sprite.name];
         if(!pivotTexture)
         {
            rect = sprite.rect.clone();
            subTexture = new SubTexture(texture,rect,false);
            pivotTexture = new PivotTexture(subTexture,textureBitmapData,rect,sprite.pivotX,sprite.pivotY,scale);
            this.mTextures[sprite.name] = pivotTexture;
            this.mTextureNames.push(sprite.name);
         }
      }
      
      public function reInitializeTextures() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!Starling.handleLostContext)
         {
            for(bd in this.mTextureBitmapDatas)
            {
               try
               {
                  texture = this.mTextureBitmapDatas[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function getTexture(name:String) : PivotTexture
      {
         return this.mTextures[name];
      }
      
      public function get textureCount() : int
      {
         return this.mTextureNames.length;
      }
      
      public function getTextureWithIndex(index:int) : PivotTexture
      {
         if(index < 0 || index >= this.textureCount)
         {
            return null;
         }
         return this.mTextures[this.mTextureNames[index]];
      }
      
      public function getTextureFromBitmapData(bitmapData:BitmapData, generateMipMaps:Boolean = true, scale:Number = 1.0) : Texture
      {
         var texture:Texture = this.mTextureBitmapDatas[bitmapData];
         if(texture)
         {
            return texture;
         }
         texture = Starling.textureFromBitmapData(bitmapData,generateMipMaps,false,scale);
         this.mTextureBitmapDatas[bitmapData] = texture;
         this.calculateMemoryUsage(texture,bitmapData,true);
         return texture;
      }
      
      protected function calculateMemoryUsage(texture:Texture, bitmapData:BitmapData, adding:Boolean) : void
      {
         var textureWidth:* = 0;
         var textureHeight:* = 0;
         var multiplier:int = 1;
         if(!adding)
         {
            multiplier = -1;
         }
         if(bitmapData)
         {
            this.mBitmapMemoryUsage += multiplier * bitmapData.width * bitmapData.height * 4;
         }
         if(texture)
         {
            textureWidth = int(texture.width);
            textureHeight = int(texture.height);
            while(textureWidth >= 1 && textureHeight >= 1)
            {
               this.mTextureMemoryUsage += multiplier * textureWidth * textureHeight * 4;
               textureWidth >>= 1;
               textureHeight >>= 1;
            }
         }
      }
      
      public function getUnknownTexture() : Texture
      {
         if(!this.mUnknownTexture)
         {
            this.mUnknownTexture = this.getTextureFromBitmapData(new BitmapData(40,40,false,16711935));
         }
         return this.mUnknownTexture;
      }
      
      public function unregisterBitmapDataTexture(texture:Texture) : void
      {
         var bd:* = null;
         var bitmapData:BitmapData = null;
         var index:int = 0;
         for(bd in this.mTextureBitmapDatas)
         {
            if(this.mTextureBitmapDatas[bd] == texture)
            {
               bitmapData = bd as BitmapData;
               this.calculateMemoryUsage(texture,bitmapData,false);
               if(bitmapData)
               {
                  bitmapData.dispose();
                  index = this.mGeneratedTextures.indexOf(bitmapData);
                  if(index >= 0)
                  {
                     this.mGeneratedTextures.splice(index,1);
                  }
               }
               delete this.mTextureBitmapDatas[bd];
               texture.dispose();
               return;
            }
         }
      }
      
      public function get generatedTextureCount() : int
      {
         return this.mGeneratedTextures.length;
      }
      
      public function saveGeneratedTextures(index:int) : void
      {
         if(index < 0 || index >= this.generatedTextureCount)
         {
            return;
         }
         var bitmap:BitmapData = this.mGeneratedTextures[index];
         var data:ByteArray = PNGEncoder.encode(bitmap);
         var fr:FileReference = new FileReference();
         fr.save(data,"texture_" + (index + 1) + ".png");
      }
   }
}
