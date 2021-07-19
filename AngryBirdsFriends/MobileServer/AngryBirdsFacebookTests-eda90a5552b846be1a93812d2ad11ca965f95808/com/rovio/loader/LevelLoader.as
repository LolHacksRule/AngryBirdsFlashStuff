package com.rovio.loader
{
   import deng.fzip.FZip;
   import deng.fzip.FZipFile;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class LevelLoader implements ILevelLoader
   {
       
      
      private var mLevelData:Dictionary;
      
      private var mRandom:int;
      
      public function LevelLoader()
      {
         this.mLevelData = new Dictionary(true);
         super();
      }
      
      public final function loadLevelFromBytes(data:ByteArray, id:String, decryptLevel:Boolean = true) : void
      {
         var zipCollection:FZip = null;
         var zipFile:FZipFile = null;
         if(this.mLevelData[id] == null)
         {
            if(decryptLevel)
            {
               data = this.decrypt(data);
            }
            zipCollection = new FZip();
            zipCollection.loadBytes(data);
            zipFile = zipCollection.getFileAt(0);
            this.mLevelData[id] = zipFile.getContentAsString(false);
            this.onLevelLoaded(id);
         }
      }
      
      public function dispose() : void
      {
         this.cleanUp();
      }
      
      public function getLevelData(name:String) : String
      {
         return this.mLevelData[name];
      }
      
      protected function onLevelLoaded(id:String) : void
      {
      }
      
      private function decrypt(bytes:ByteArray) : ByteArray
      {
         var i:int = 0;
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
            throw new Error("Error uncompressing level, " + e.toString(),e.errorID);
         }
         return bytes;
      }
      
      private function getNextRandom() : Number
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
      
      private function cleanUp() : void
      {
         this.mLevelData = null;
      }
   }
}
