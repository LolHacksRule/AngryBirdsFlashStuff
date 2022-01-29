package com.rovio.loader
{
   import com.rovio.graphics.CompositeSpriteParser;
   import com.rovio.utils.ErrorCode;
   import com.rovio.utils.ImageDataUtils;
   import com.rovio.spritesheet.FontSheetJSONGGS;
   import com.rovio.spritesheet.SpriteSheetXMLGGS;
   import com.rovio.spritesheet.ISpriteSheetContainer;
   import com.rovio.spritesheet.SpriteSheetBase;
   import com.rovio.spritesheet.SpriteSheetJSONGGS;
   import com.rovio.spritesheet.SpriteSheetContainer;
   import deng.fzip.FZipFile;
   import deng.fzip.FZip;
   import flash.display.Bitmap;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class PackageLoader extends EventDispatcher implements IPackageLoader
   {
      
      protected static const MAX_FRAME_TIME_MILLI_SECONDS:Number = 100;
      
      protected static const FRAME_BREATH_TIME_MILLI_SECONDS:Number = 20;
       
      
      protected var mRandom:int;
      
      protected var mFiles:Object;
      
      protected var mActivePackageName:String;
      
      protected var mUnitializedItems:int = 0;
      
      protected var mSpriteSheetContainer:SpriteSheetContainer;
      
      protected var mTimer:Timer;
      
      protected var mPackageFiles:Object;
      
      protected var mPackageFileList:Vector.<String>;
      
      public function PackageLoader()
      {
         this.mFiles = {};
         super();
         this.mSpriteSheetContainer = new SpriteSheetContainer("packageManager");
      }
      
      public function get spriteSheetContainer() : ISpriteSheetContainer
      {
         return this.mSpriteSheetContainer;
      }
      
      public function get loadingCompleted() : Boolean
      {
         return this.mUnitializedItems == 0 && (!this.mPackageFileList || this.mPackageFileList.length == 0);
      }
      
      public function dispose() : void
      {
         this.clear();
         this.mSpriteSheetContainer.dispose();
      }
      
      protected function clear() : void
      {
         if(this.mTimer)
         {
            this.mTimer.stop();
            this.mTimer.removeEventListener(TimerEvent.TIMER,this.onTimer);
            this.mTimer = null;
         }
         this.mPackageFiles = null;
         this.mPackageFileList = null;
      }
      
      protected function getFullPath(param1:String, param2:String) : String
      {
         return param2 + "/" + param1;
      }
      
      protected function getZipFile(param1:String, param2:String) : FZipFile
      {
         return this.mFiles[this.getFullPath(param1,param2)] as FZipFile;
      }
      
      protected function setZipFile(param1:String, param2:String, param3:FZipFile) : void
      {
         this.mFiles[this.getFullPath(param1,param2)] = param3;
      }
      
      protected function getFileAsString(param1:String, param2:String = null) : String
      {
         if(param2 == null)
         {
            param2 = this.mActivePackageName;
         }
         var _loc3_:FZipFile = this.getZipFile(param1,param2);
         if(!_loc3_)
         {
            throw new Error("File " + this.getFullPath(param1,param2) + " not found",ErrorCode.ZIP_FILE_NOT_FOUND);
         }
         return _loc3_.getContentAsString(false);
      }
      
      protected function getFileData(param1:String, param2:String = null) : ByteArray
      {
         if(param2 == null)
         {
            param2 = this.mActivePackageName;
         }
         var _loc3_:FZipFile = this.getZipFile(param1,param2);
         if(!_loc3_)
         {
            throw new Error("File " + this.getFullPath(param1,param2) + " not found",ErrorCode.ZIP_FILE_NOT_FOUND);
         }
         return _loc3_.content;
      }
      
      protected function getFileAsBitmap(param1:String, param2:Function) : void
      {
         return ImageDataUtils.getImageFromBytes(this.getFileData(param1),param2);
      }
      
      public function loadPackageFromBytes(param1:ByteArray, param2:String, param3:Boolean = true) : void
      {
         var _loc7_:FZipFile = null;
         if(!this.loadingCompleted)
         {
            throw new Error("Can\'t load another package - need to wait for previous one to complete !!!");
         }
         if(param3)
         {
            this.decryptPackage(param1);
         }
         this.mActivePackageName = param2;
         var _loc4_:FZip;
         (_loc4_ = new FZip()).loadBytes(param1);
         var _loc5_:Object = {};
         var _loc6_:int = _loc4_.getFileCount() - 1;
         while(_loc6_ >= 0)
         {
            if((_loc7_ = _loc4_.getFileAt(_loc6_)).filename.substr(-1) != "/")
            {
               if(this.getZipFile(_loc7_.filename,this.mActivePackageName))
               {
                  _loc5_[_loc7_.filename] = this.getZipFile(_loc7_.filename,this.mActivePackageName);
               }
               else
               {
                  _loc5_[_loc7_.filename] = _loc7_;
                  this.setZipFile(_loc7_.filename,this.mActivePackageName,_loc7_);
               }
            }
            _loc6_--;
         }
         this.initializePackage(_loc5_);
      }
      
      public function stopLoading() : void
      {
         this.clear();
      }
      
      protected function initializeSpriteSheetFile(param1:String) : void
      {
         var jsonObject:Object = null;
         var fileName:String = param1;
         try
         {
            jsonObject = JSON.parse(this.getFileAsString(fileName));
         }
         catch(e:Error)
         {
            throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",ErrorCode.JSON_PARSE_ERROR);
         }
         this.initializeSpriteSheetFromObject(jsonObject);
      }
      
      protected function initializeFile(param1:String) : void
      {
         if(param1.search(/^sprite_sheets\/(.*)\.json$/i) != -1)
         {
            this.initializeSpriteSheetFile(param1);
         }
         var _loc2_:Array = param1.match(/composites\/data\/(.*)\.xml$/i);
         if(_loc2_)
         {
            this.initializeXMLSpriteSheet(param1);
         }
         _loc2_ = param1.match(/sprite_sheets\/data\/(.*)\.xml$/i);
         if(_loc2_)
         {
            this.initializeXMLSpriteSheet(param1);
         }
         var _loc3_:Array = param1.match(/composites\/main\/(.*)\.xml$/i);
         if(_loc3_)
         {
            this.initializeCompositeSprite(param1);
         }
      }
      
      protected function initializePackage(param1:Object) : void
      {
         this.preparePackage(param1);
         if(this.continuePackageInitialization())
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
      }
      
      private function preparePackage(param1:Object) : void
      {
         var _loc2_:* = null;
         this.mPackageFileList = new Vector.<String>();
         for(_loc2_ in param1)
         {
            this.mPackageFileList.push(_loc2_);
         }
         this.mPackageFiles = param1;
      }
      
      private function continuePackageInitialization() : Boolean
      {
         var _loc1_:int = getTimer();
         while(getTimer() - _loc1_ < MAX_FRAME_TIME_MILLI_SECONDS / 2)
         {
            if(!this.initializeFileFromPackage())
            {
               break;
            }
         }
         var _loc2_:* = this.mPackageFileList.length > 0;
         if(this.loadingCompleted)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
         return _loc2_;
      }
      
      private function initializeFileFromPackage() : Boolean
      {
         var _loc1_:String = null;
         if(this.mPackageFileList.length > 0)
         {
            _loc1_ = this.mPackageFileList[0];
            this.mPackageFileList.splice(0,1);
            this.initializeFile(_loc1_);
            return true;
         }
         return false;
      }
      
      private function onTimer(param1:Event) : void
      {
         if(!this.continuePackageInitialization())
         {
            if(this.mTimer)
            {
               this.mTimer.stop();
            }
         }
      }
      
      protected function initializeCompositeSprite(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         CompositeSpriteParser.addCompositeSprites(_loc2_);
      }
      
      protected function initializeXMLSpriteSheet(param1:String) : void
      {
         var activePackageName:String = null;
         var filePath:String = param1;
         activePackageName = this.mActivePackageName;
         var onComplete:Function = function(param1:Bitmap):void
         {
            var _loc6_:XML = null;
            var _loc7_:String = null;
            var _loc8_:Array = null;
            var _loc9_:String = null;
            var _loc10_:Array = null;
            var _loc11_:String = null;
            var _loc12_:int = 0;
            var _loc13_:* = null;
            var _loc14_:String = null;
            var _loc2_:XML = new XML(getFileAsString(filePath,activePackageName));
            var _loc3_:Array = [];
            var _loc4_:Vector.<XML> = new Vector.<XML>();
            var _loc5_:XMLList = _loc2_.child("sprite");
            for each(_loc6_ in _loc5_)
            {
               if(_loc7_ = _loc6_.@file)
               {
                  _loc8_ = _loc7_.split("\\");
                  _loc9_ = _loc8_[_loc8_.length - 1];
                  _loc10_ = filePath.split("/");
                  _loc11_ = "";
                  _loc12_ = 0;
                  while(_loc12_ < _loc10_.length - 2)
                  {
                     _loc11_ += _loc10_[_loc12_] + "/";
                     _loc12_++;
                  }
                  _loc13_ = _loc11_ + "source/" + _loc9_ + ".xml";
                  if(getZipFile(_loc13_,activePackageName) == null)
                  {
                     _loc9_ = _loc8_[_loc8_.length - 2] + "/" + _loc8_[_loc8_.length - 1];
                     _loc13_ = _loc11_ + "source/" + _loc9_ + ".xml";
                  }
                  if(_loc3_.indexOf(_loc9_) < 0)
                  {
                     _loc3_.push(_loc9_);
                     _loc14_ = getFileAsString(_loc13_,activePackageName);
                     _loc4_.push(new XML(_loc14_));
                  }
               }
            }
            addSpriteSheet(new SpriteSheetXMLGGS(_loc2_,_loc4_,param1.bitmapData));
            handleItemInitialization();
         };
         ++this.mUnitializedItems;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.getFileAsBitmap(imagePath,onComplete);
      }
      
      protected function addSpriteSheet(param1:SpriteSheetBase) : void
      {
         this.mSpriteSheetContainer.addSheet(param1);
      }
      
      protected function handleItemInitialization() : void
      {
         --this.mUnitializedItems;
         if(this.loadingCompleted)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function initializeSpriteSheetFromObject(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            addSpriteSheet(new spriteSheetClass(dataObject,param1.bitmapData));
            handleItemInitialization();
         };
         ++this.mUnitializedItems;
         if(dataObject.image)
         {
            spriteSheetClass = SpriteSheetJSONGGS;
            this.getFileAsBitmap("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = FontSheetJSONGGS;
            this.getFileAsBitmap("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function decryptPackage(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.mRandom = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.getNextRandom() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.getNextRandom() * 255);
            _loc2_ -= int(this.getNextRandom() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.getNextRandom() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function getNextRandom() : Number
      {
         this.mRandom ^= this.mRandom << 21;
         this.mRandom ^= this.mRandom >>> 35;
         this.mRandom ^= this.mRandom << 4;
         if(this.mRandom < 0)
         {
            this.mRandom &= 2147483647;
         }
         return this.mRandom / 2147483647;
      }
   }
}
