package com.rovio.loader
{
   public class FileNameMapper
   {
      
      private static var sInstance:FileNameMapper;
       
      
      private var mFilenameMapping:Object;
      
      private var mAssetFolder:String;
      
      private var mAssetRoot:String;
      
      public function FileNameMapper(filenameMappingJSON:String, assetFolder:String, assetRoot:String)
      {
         super();
         if(filenameMappingJSON)
         {
            this.mFilenameMapping = JSON.parse(filenameMappingJSON);
         }
         this.mAssetFolder = assetFolder;
         this.mAssetRoot = assetRoot;
         if(sInstance)
         {
            throw new Error("FileNameMapper must be singleton");
         }
         sInstance = this;
      }
      
      public static function get instance() : FileNameMapper
      {
         if(!sInstance)
         {
            sInstance = new FileNameMapper("","","");
         }
         return sInstance;
      }
      
      public static function initialize(filenameMappingJSON:String, assetFolder:String, assetRoot:String) : void
      {
         new FileNameMapper(filenameMappingJSON,assetFolder,assetRoot);
      }
      
      public function getMappedFileName(fileName:String) : String
      {
         fileName = this.mAssetFolder + fileName;
         if(this.mFilenameMapping && this.mFilenameMapping[fileName])
         {
            return this.mAssetRoot + this.mFilenameMapping[fileName];
         }
         return this.mAssetRoot + fileName;
      }
   }
}
