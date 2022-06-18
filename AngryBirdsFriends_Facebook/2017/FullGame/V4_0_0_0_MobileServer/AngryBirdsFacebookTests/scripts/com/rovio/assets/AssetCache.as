package com.rovio.assets
{
   import flash.system.ApplicationDomain;
   
   public class AssetCache
   {
       
      
      public function AssetCache()
      {
         super();
      }
      
      public static function storeAsset(assetName:String, acls:Class) : void
      {
      }
      
      public static function assetInCache(assetName:String) : Boolean
      {
         return ApplicationDomain.currentDomain.hasDefinition(assetName);
      }
      
      public static function getAssetFromCache(className:String, throwError:Boolean = true, traceError:Boolean = true) : Class
      {
         var errorDescription:* = null;
         if(!ApplicationDomain.currentDomain.hasDefinition(className))
         {
            errorDescription = "Class \'" + className + "\' not found.";
            if(throwError)
            {
               throw new Error(errorDescription);
            }
            if(!traceError)
            {
            }
            return null;
         }
         return Class(ApplicationDomain.currentDomain.getDefinition(className));
      }
   }
}
