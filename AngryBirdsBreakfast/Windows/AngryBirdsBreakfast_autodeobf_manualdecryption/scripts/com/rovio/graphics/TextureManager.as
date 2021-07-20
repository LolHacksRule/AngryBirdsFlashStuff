package com.rovio.graphics
{
   import starling.textures.SubTexture;
   import starling.textures.Texture;
   import com.rovio.spritesheet.SpriteRovio;
   import com.rovio.spritesheet.SpriteSheetBase;
   import com.rovio.spritesheet.SpriteSheetContainer;
   import starling.utils.getNextPowerOfTwo;
   import org.villekoskela.RectanglePacker;
   import com.rovio.adobe.images.PNGEncoder;
   import starling.core.Starling;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.net.FileReference;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
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
      
      public function TextureManager(param1:String = null)
      {
         this.mGeneratedTextures = new Vector.<BitmapData>();
         super();
         this.mSpriteSheetGroups = new Vector.<SpriteSheetContainer>();
         this.mTextures = new Dictionary();
         this.mTextureNames = new Vector.<String>();
         this.mTextureBitmapDatas = new Dictionary();
         this.mId = param1;
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
      
      private static function getSheetIndex(param1:int) : int
      {
         return param1 / 1000000;
      }
      
      private static function getRectangleIndex(param1:int) : int
      {
         return param1 % 1000000;
      }
      
      private static function getRectangleId(param1:int, param2:int) : int
      {
         return param2 * 1000000 + param1;
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
         var _loc1_:PivotTexture = null;
         var _loc2_:SpriteSheetContainer = null;
         if(this.mTextures)
         {
            for each(_loc1_ in this.mTextures)
            {
               this.unregisterBitmapDataTexture(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.mTextures = null;
         }
         this.mTextureNames = null;
         if(this.mSpriteSheetGroups)
         {
            for each(_loc2_ in this.mSpriteSheetGroups)
            {
               _loc2_.dispose();
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
      
      protected function getSheetGroup(param1:String) : SpriteSheetContainer
      {
         var _loc2_:SpriteSheetContainer = null;
         for each(_loc2_ in this.mSpriteSheetGroups)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function addTextures(param1:SpriteSheetBase, param2:int) : void
      {
         if(this.mInitialized)
         {
            return;
         }
         var _loc3_:String = param2.toString();
         var _loc4_:SpriteSheetContainer;
         if(!(_loc4_ = this.getSheetGroup(_loc3_)))
         {
            _loc4_ = new SpriteSheetContainer(_loc3_);
            this.mSpriteSheetGroups.push(_loc4_);
         }
         _loc4_.addSheet(param1);
      }
      
      private function combineSpriteSheets(param1:Vector.<SpriteSheetBase>, param2:RectanglePacker, param3:int, param4:int, param5:int) : int
      {
         var _loc6_:int = 0;
         var _loc10_:Number = NaN;
         var _loc11_:SpriteSheetBase = null;
         var _loc12_:int = 0;
         var _loc13_:SpriteRovio = null;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc7_:int = param1.length + 1;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         do
         {
            _loc9_ = 0;
            _loc8_ = 0;
            _loc7_--;
            _loc10_ = 1;
            param2.reset(param3,param4,param5);
            _loc6_ = 0;
            while(_loc6_ < _loc7_)
            {
               _loc11_ = param1[_loc6_];
               if(_loc6_ == 0)
               {
                  _loc10_ = _loc11_.scale;
               }
               else if(_loc11_.scale != _loc10_)
               {
                  break;
               }
               _loc12_ = 0;
               while(_loc12_ < _loc11_.spriteCount)
               {
                  _loc13_ = _loc11_.getSpriteWithIndex(_loc12_);
                  _loc14_ = Math.ceil(_loc13_.rect.width / param5) * param5;
                  _loc15_ = Math.ceil(_loc13_.rect.height / param5) * param5;
                  param2.insertRectangle(_loc14_,_loc15_,getRectangleId(_loc12_,_loc6_));
                  _loc9_++;
                  _loc12_++;
               }
               _loc6_++;
            }
         }
         while((_loc8_ = param2.packRectangles()) < _loc9_);
         
         return _loc6_;
      }
      
      private function drawSpriteSheetsOnSingleBitmapData(param1:Vector.<SpriteSheetBase>, param2:RectanglePacker, param3:BitmapData) : SpriteSheetBase
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
         var spriteSheetCollection:Vector.<SpriteSheetBase> = param1;
         var rectanglePacker:RectanglePacker = param2;
         var targetBitmap:BitmapData = param3;
         var packedCount:int = rectanglePacker.rectangleCount;
         var packedIds:Vector.<int> = new Vector.<int>();
         var combinedSheet:SpriteSheetBase = new SpriteSheetBase(targetBitmap);
         i = 0;
         while(i < packedCount)
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
            combinedSheet.addSprite(packedSprite);
            i++;
         }
         packedIds.sort(function(param1:int, param2:int):int
         {
            if(param1 < param2)
            {
               return -1;
            }
            return 1;
         });
         i = packedIds.length - 1;
         while(i >= 0)
         {
            spriteSheetCollection.splice(packedIds[i],1);
            i--;
         }
         return combinedSheet;
      }
      
      private function drawSpriteOnBitmap(param1:BitmapData, param2:BitmapData, param3:Rectangle, param4:Rectangle) : void
      {
         var _loc7_:Rectangle = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         param2.copyPixels(param1,param3,param4.topLeft);
         var _loc5_:int = param4.width - param3.width;
         var _loc6_:int = param4.height - param3.height;
         if(_loc5_)
         {
            _loc7_ = new Rectangle(param3.right - 1,param3.y,1,param3.height);
            _loc8_ = 0;
            while(_loc8_ < _loc5_)
            {
               param2.copyPixels(param1,_loc7_,new Point(param4.right - 1 - _loc8_,param4.y));
               _loc8_++;
            }
         }
         if(_loc6_)
         {
            _loc7_ = new Rectangle(param3.x,param3.bottom - 1,param3.width,1);
            _loc9_ = 0;
            while(_loc9_ < _loc6_)
            {
               param2.copyPixels(param1,_loc7_,new Point(param4.x,param4.bottom - 1 - _loc9_));
               _loc9_++;
            }
         }
         if(_loc5_ * _loc6_ > 0)
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
         var _loc1_:int = this.textureMemoryUsage / 1024;
         var _loc2_:int = this.bitmapMemoryUsage / 1024;
         var _loc3_:int = getTimer();
         this.mSpriteSheetGroups = new Vector.<SpriteSheetContainer>();
         this.mInitialized = true;
         if(this.mTimer)
         {
            this.mTimer.stop();
            this.mTimer.removeEventListener(TimerEvent.TIMER,this.onTimer);
            this.mTimer = null;
         }
         dispatchEvent(new Event(Event.INIT));
      }
      
      private function onTimer(param1:Event) : void
      {
         this.initializeNextSheetGroup();
      }
      
      private function initializeNextSheetGroup() : Boolean
      {
         var _loc1_:int = 0;
         var _loc2_:SpriteSheetContainer = null;
         var _loc3_:int = 0;
         if(this.mSpriteSheetGroups.length > 0)
         {
            _loc1_ = getTimer();
            _loc2_ = this.mSpriteSheetGroups.pop();
            this.initializeTexturesForSheetGroup(_loc2_);
            _loc2_.dispose();
            _loc3_ = getTimer();
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
      
      private function initializeTexturesForSheetGroup(param1:SpriteSheetContainer) : void
      {
         var _loc2_:SpriteSheetBase = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:BitmapData = null;
         var _loc9_:SpriteSheetBase = null;
         var _loc10_:Texture = null;
         var _loc11_:int = 0;
         var _loc12_:SpriteRovio = null;
         var _loc3_:Vector.<SpriteSheetBase> = new Vector.<SpriteSheetBase>();
         var _loc4_:int = 0;
         while(_loc4_ < param1.spriteSheetCount)
         {
            _loc2_ = param1.getSpriteSheet(_loc4_);
            if(_loc2_.spriteCount > 0)
            {
               _loc3_.push(_loc2_);
            }
            _loc4_++;
         }
         var _loc5_:int = 0;
         while(_loc3_.length > 0)
         {
            if(this.combineSpriteSheets(_loc3_,this.mRectanglePacker,MAX_TEXTURE_SIZE,MAX_TEXTURE_SIZE,MAX_SCALE_FACTOR) == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = getNextPowerOfTwo(this.mRectanglePacker.packedWidth);
            _loc7_ = getNextPowerOfTwo(this.mRectanglePacker.packedHeight);
            _loc8_ = new BitmapData(_loc6_,_loc7_,true,16777215);
            _loc9_ = this.drawSpriteSheetsOnSingleBitmapData(_loc3_,this.mRectanglePacker,_loc8_);
            _loc10_ = this.getTextureFromBitmapData(_loc8_);
            this.mGeneratedTextures.push(_loc8_);
            _loc11_ = 0;
            while(_loc11_ < _loc9_.spriteCount)
            {
               _loc12_ = _loc9_.getSpriteWithIndex(_loc11_);
               this.addTexture(_loc12_,_loc10_,_loc8_,_loc2_.scale);
               _loc11_++;
            }
            _loc5_++;
         }
         if(_loc5_ > 1)
         {
         }
      }
      
      private function addTexture(param1:SpriteRovio, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:SubTexture = null;
         var _loc5_:PivotTexture;
         if(!(_loc5_ = this.mTextures[param1.name]))
         {
            _loc6_ = param1.rect.clone();
            _loc7_ = new SubTexture(param2,_loc6_,false);
            _loc5_ = new PivotTexture(_loc7_,param3,_loc6_,param1.pivotX,param1.pivotY,param4);
            this.mTextures[param1.name] = _loc5_;
            this.mTextureNames.push(param1.name);
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
      
      public function getTexture(param1:String) : PivotTexture
      {
         return this.mTextures[param1];
      }
      
      public function get textureCount() : int
      {
         return this.mTextureNames.length;
      }
      
      public function getTextureWithIndex(param1:int) : PivotTexture
      {
         if(param1 < 0 || param1 >= this.textureCount)
         {
            return null;
         }
         return this.mTextures[this.mTextureNames[param1]];
      }
      
      public function getTextureFromBitmapData(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.mTextureBitmapDatas[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = Starling.textureFromBitmapData(param1,param2);
         this.mTextureBitmapDatas[param1] = _loc3_;
         this.calculateMemoryUsage(_loc3_,param1,true);
         return _loc3_;
      }
      
      protected function calculateMemoryUsage(param1:Texture, param2:BitmapData, param3:Boolean) : void
      {
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc4_:int = 1;
         if(param3)
         {
            _loc4_ = -1;
         }
         if(param2)
         {
            this.mBitmapMemoryUsage += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.mTextureMemoryUsage += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
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
      
      public function unregisterBitmapDataTexture(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         var _loc4_:int = 0;
         for(_loc2_ in this.mTextureBitmapDatas)
         {
            if(this.mTextureBitmapDatas[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.calculateMemoryUsage(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
                  if((_loc4_ = this.mGeneratedTextures.indexOf(_loc3_)) >= 0)
                  {
                     this.mGeneratedTextures.splice(_loc4_,1);
                  }
               }
               delete this.mTextureBitmapDatas[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function get generatedTextureCount() : int
      {
         return this.mGeneratedTextures.length;
      }
      
      public function saveGeneratedTextures(param1:int) : void
      {
         if(param1 < 0 || param1 >= this.generatedTextureCount)
         {
            return;
         }
         var _loc2_:BitmapData = this.mGeneratedTextures[param1];
         var _loc3_:ByteArray = PNGEncoder.encode(_loc2_);
         var _loc4_:FileReference;
         (_loc4_ = new FileReference()).save(_loc3_,"texture_" + (param1 + 1) + ".png");
      }
   }
}
