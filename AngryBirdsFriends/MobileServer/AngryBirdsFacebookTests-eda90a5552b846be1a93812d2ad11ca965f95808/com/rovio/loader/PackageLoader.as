package com.rovio.loader
{
   import com.rovio.adobe.crypto.SHA1;
   import com.rovio.graphics.CompositeSpriteParser;
   import com.rovio.spritesheet.FontSheetJSONGGS;
   import com.rovio.spritesheet.ISpriteSheetContainer;
   import com.rovio.spritesheet.SpriteSheetBase;
   import com.rovio.spritesheet.SpriteSheetContainer;
   import com.rovio.spritesheet.SpriteSheetJSONArtPacker;
   import com.rovio.spritesheet.SpriteSheetJSONECS;
   import com.rovio.spritesheet.SpriteSheetJSONGGS;
   import com.rovio.spritesheet.SpriteSheetXMLGGS;
   import com.rovio.utils.ErrorCode;
   import com.rovio.utils.ImageDataUtils;
   import deng.fzip.FZip;
   import deng.fzip.FZipFile;
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
      
      protected var mActivePackageData:XML;
      
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
      
      public function getFile(fileName:String, packageName:String) : String
      {
         return this.getFileAsString(fileName,packageName);
      }
      
      public function hasFile(fileName:String, packageName:String) : Boolean
      {
         return this.mFiles[this.getFullPath(fileName,packageName)] != null;
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
      
      protected function getFullPath(filePath:String, packageName:String) : String
      {
         return packageName + "/" + filePath;
      }
      
      protected function getZipFile(filePath:String, packageName:String) : FZipFile
      {
         return this.mFiles[this.getFullPath(filePath,packageName)] as FZipFile;
      }
      
      protected function setZipFile(filePath:String, packageName:String, zipFile:FZipFile) : void
      {
         this.mFiles[this.getFullPath(filePath,packageName)] = zipFile;
      }
      
      protected function getFileAsString(filePath:String, packageName:String = null) : String
      {
         if(packageName == null)
         {
            packageName = this.mActivePackageName;
         }
         var zipFile:FZipFile = this.getZipFile(filePath,packageName);
         if(!zipFile)
         {
            throw new Error("File " + this.getFullPath(filePath,packageName) + " not found",ErrorCode.ZIP_FILE_NOT_FOUND);
         }
         return zipFile.getContentAsString(false);
      }
      
      protected function getFileData(filePath:String, packageName:String = null) : ByteArray
      {
         if(packageName == null)
         {
            packageName = this.mActivePackageName;
         }
         var zipFile:FZipFile = this.getZipFile(filePath,packageName);
         if(!zipFile)
         {
            throw new Error("File " + this.getFullPath(filePath,packageName) + " not found",ErrorCode.ZIP_FILE_NOT_FOUND);
         }
         return zipFile.content;
      }
      
      protected function getFileAsBitmap(filePath:String, callback:Function) : void
      {
         return ImageDataUtils.getImageFromBytes(this.getFileData(filePath),callback);
      }
      
      public function loadPackageFromBytes(data:ByteArray, packageName:String, decrypt:Boolean = true, packageData:XML = null) : void
      {
         var zipFile:FZipFile = null;
         if(!this.loadingCompleted)
         {
            throw new Error("Can\'t load another package - need to wait for previous one to complete !!!");
         }
         if(decrypt)
         {
            this.decryptPackage(data);
         }
         this.mActivePackageName = packageName;
         this.mActivePackageData = packageData;
         var zipCollection:FZip = new FZip();
         zipCollection.loadBytes(data);
         var packageFiles:Object = {};
         for(var i:int = zipCollection.getFileCount() - 1; i >= 0; i--)
         {
            zipFile = zipCollection.getFileAt(i);
            if(zipFile.filename.substr(-1) != "/")
            {
               if(this.getZipFile(zipFile.filename,this.mActivePackageName))
               {
                  packageFiles[zipFile.filename] = this.getZipFile(zipFile.filename,this.mActivePackageName);
               }
               else
               {
                  packageFiles[zipFile.filename] = zipFile;
                  this.setZipFile(zipFile.filename,this.mActivePackageName,zipFile);
               }
            }
         }
         this.initializePackage(packageFiles);
      }
      
      public function stopLoading() : void
      {
         this.clear();
      }
      
      protected function initializeSpriteSheetFile(fileName:String) : void
      {
         var jsonObject:Object = null;
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
      
      protected function initializeFile(fileName:String) : void
      {
         if(fileName.search(/^sprite_sheets\/(.*)\.json$/i) != -1)
         {
            this.initializeSpriteSheetFile(fileName);
         }
         var xmlSpriteSheetNameResults:Array = fileName.match(/composites\/data\/(.*)\.xml$/i);
         if(xmlSpriteSheetNameResults)
         {
            this.initializeXMLSpriteSheet(fileName);
         }
         xmlSpriteSheetNameResults = fileName.match(/sprite_sheets\/data\/(.*)\.xml$/i);
         if(xmlSpriteSheetNameResults)
         {
            this.initializeXMLSpriteSheet(fileName);
         }
         var compositeNameResults:Array = fileName.match(/composites\/main\/(.*)\.xml$/i);
         if(compositeNameResults)
         {
            this.initializeCompositeSprite(fileName);
         }
      }
      
      protected function initializePackage(packageFiles:Object) : void
      {
         this.preparePackage(packageFiles);
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
      
      private function preparePackage(packageFiles:Object) : void
      {
         var fileName:* = null;
         this.mPackageFileList = new Vector.<String>();
         for(fileName in packageFiles)
         {
            this.mPackageFileList.push(fileName);
         }
         this.mPackageFiles = packageFiles;
      }
      
      private function continuePackageInitialization() : Boolean
      {
         var start:int = getTimer();
         while(getTimer() - start < MAX_FRAME_TIME_MILLI_SECONDS / 2)
         {
            if(!this.initializeFileFromPackage())
            {
               break;
            }
         }
         var filesLeft:* = this.mPackageFileList.length > 0;
         if(this.loadingCompleted)
         {
            this.reportLoadingCompletion();
         }
         return filesLeft;
      }
      
      private function reportLoadingCompletion() : void
      {
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function initializeFileFromPackage() : Boolean
      {
         var fileName:String = null;
         if(this.mPackageFileList.length > 0)
         {
            fileName = this.mPackageFileList[0];
            this.mPackageFileList.splice(0,1);
            this.initializeFile(fileName);
            return true;
         }
         return false;
      }
      
      private function onTimer(event:Event) : void
      {
         if(!this.continuePackageInitialization())
         {
            if(this.mTimer)
            {
               this.mTimer.stop();
            }
         }
      }
      
      protected function initializeCompositeSprite(filePath:String) : void
      {
         var compositeSpriteXML:XML = new XML(this.getFileAsString(filePath));
         CompositeSpriteParser.addCompositeSprites(compositeSpriteXML);
      }
      
      protected function initializeXMLSpriteSheet(filePath:String) : void
      {
         var activePackageName:String = null;
         activePackageName = this.mActivePackageName;
         var onComplete:Function = function(image:Bitmap):void
         {
            var sprite:XML = null;
            var fileFull:String = null;
            var parts:Array = null;
            var file:String = null;
            var pathParts:Array = null;
            var path:String = null;
            var i:int = 0;
            var xmlFilePath:* = null;
            var fileContent:String = null;
            var sheetXML:XML = new XML(getFileAsString(filePath,activePackageName));
            var files:Array = [];
            var imageXMLs:Vector.<XML> = new Vector.<XML>();
            var spriteList:XMLList = sheetXML.child("sprite");
            for each(sprite in spriteList)
            {
               fileFull = sprite.@file;
               if(fileFull)
               {
                  parts = fileFull.split("\\");
                  file = parts[parts.length - 1];
                  pathParts = filePath.split("/");
                  path = "";
                  for(i = 0; i < pathParts.length - 2; i++)
                  {
                     path += pathParts[i] + "/";
                  }
                  xmlFilePath = path + "source/" + file + ".xml";
                  if(getZipFile(xmlFilePath,activePackageName) == null)
                  {
                     file = parts[parts.length - 2] + "/" + parts[parts.length - 1];
                     xmlFilePath = path + "source/" + file + ".xml";
                  }
                  if(files.indexOf(file) < 0)
                  {
                     files.push(file);
                     fileContent = getFileAsString(xmlFilePath,activePackageName);
                     imageXMLs.push(new XML(fileContent));
                  }
               }
            }
            addSpriteSheet(new SpriteSheetXMLGGS(sheetXML,imageXMLs,image.bitmapData));
            handleItemInitialization();
         };
         ++this.mUnitializedItems;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.getFileAsBitmap(imagePath,onComplete);
      }
      
      protected function addSpriteSheet(spriteSheet:SpriteSheetBase) : void
      {
         this.mSpriteSheetContainer.addSheet(spriteSheet);
      }
      
      protected function handleItemInitialization() : void
      {
         --this.mUnitializedItems;
         if(this.loadingCompleted)
         {
            this.reportLoadingCompletion();
         }
      }
      
      protected function initializeSpriteSheetFromObject(dataObject:Object) : void
      {
         var spriteSheetClass:Class = null;
         var sheetObject:Object = null;
         var imageName:String = null;
         var onComplete:Function = function(image:Bitmap):void
         {
            addSpriteSheet(new spriteSheetClass(dataObject,image.bitmapData));
            handleItemInitialization();
         };
         ++this.mUnitializedItems;
         if(dataObject.image)
         {
            spriteSheetClass = SpriteSheetJSONGGS;
            this.getFileAsBitmap("sprite_sheets/" + dataObject.image,onComplete);
         }
         else if(dataObject.name && dataObject.charCount)
         {
            spriteSheetClass = FontSheetJSONGGS;
            this.getFileAsBitmap("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
         else if(dataObject.spriteSheets)
         {
            spriteSheetClass = SpriteSheetJSONECS;
            if(dataObject.spriteSheets.length != 1)
            {
               throw new Error("Only one sheet per JSON supported.");
            }
            sheetObject = dataObject.spriteSheets[0];
            imageName = sheetObject.meta.image;
            this.getFileAsBitmap("sprite_sheets/" + imageName,onComplete);
         }
         else if(dataObject.meta && dataObject.meta.app == "ArtPacker")
         {
            spriteSheetClass = SpriteSheetJSONArtPacker;
            this.getFileAsBitmap("sprite_sheets/" + dataObject.meta.image,onComplete);
         }
         else
         {
            this.initializeUnknownSpriteSheetFromObject(dataObject);
         }
      }
      
      protected function initializeUnknownSpriteSheetFromObject(dataObject:Object) : void
      {
         throw new Error("Invalid sprite sheet data.");
      }
      
      protected function decryptPackage(bytes:ByteArray) : void
      {
         var checkSum:String = null;
         var i:int = 0;
         checkSum = SHA1.hashBytes(bytes);
         var size:int = bytes.length;
         this.mRandom = 56895 & 25147 >> 1;
         for(i = Math.min(bytes.length,65536) - 1; i >= 0; i -= 2)
         {
            bytes[i] -= int(this.getNextRandom() * 255);
         }
         for(i = bytes.length - 1; i >= 0; i -= int(this.getNextRandom() * 255))
         {
            bytes[i] -= int(this.getNextRandom() * 255);
         }
         var startByte:int = Math.max(bytes.length,65536) - 65536;
         for(i = bytes.length - 1; i >= startByte; i -= 2)
         {
            bytes[i] -= int(this.getNextRandom() * 255);
         }
         try
         {
            bytes.inflate();
         }
         catch(e:Error)
         {
            throw new Error("Error uncompressing package \'" + mActivePackageName + "\', checksum: " + checkSum + ",size:" + length + ", " + e.toString(),e.errorID);
         }
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
