package com.angrybirds.powerups
{
   import com.rovio.utils.HashMap;
   
   public class BundleHandler
   {
       
      
      private var mOwnedBundles:HashMap;
      
      private var mClaimableBundles:HashMap;
      
      private var mClaimableBundlesContents:HashMap;
      
      public function BundleHandler(pOwnedBundles:Array, pClaimableBundles:Array, pClaimableBundlesContent:Array)
      {
         var bundleObject:String = null;
         var bundleContentObj:Object = null;
         super();
         this.mOwnedBundles = new HashMap();
         this.mClaimableBundles = new HashMap();
         this.mClaimableBundlesContents = new HashMap();
         if(pOwnedBundles)
         {
            for each(bundleObject in pOwnedBundles)
            {
               this.addOwnedBundleData(bundleObject.toUpperCase());
            }
         }
         if(pClaimableBundles)
         {
            for each(bundleObject in pClaimableBundles)
            {
               this.addClaimableBundleData(bundleObject.toUpperCase());
            }
         }
         if(pClaimableBundlesContent)
         {
            for each(bundleContentObj in pClaimableBundlesContent)
            {
               this.addClaimableBundleContentData(bundleContentObj.bn.toUpperCase(),bundleContentObj.i);
            }
         }
      }
      
      public function get ownedBundles() : HashMap
      {
         return this.mOwnedBundles;
      }
      
      public function get claimableBundles() : HashMap
      {
         return this.mClaimableBundles;
      }
      
      public function injectOwnedBundles(ownedBundles:Array) : void
      {
         var bundleObject:String = null;
         for each(bundleObject in ownedBundles)
         {
            this.addOwnedBundleData(bundleObject.toUpperCase());
         }
      }
      
      public function injectClaimableBundles(claimableBundles:Array) : void
      {
         var bundleObject:String = null;
         for each(bundleObject in claimableBundles)
         {
            this.addClaimableBundleData(bundleObject.toUpperCase());
         }
      }
      
      public function injectClaimableBundleContent(claimableBundles:Array) : void
      {
         var bundleContentObj:Object = null;
         for each(bundleContentObj in claimableBundles)
         {
            this.addClaimableBundleContentData(bundleContentObj.bn.toUpperCase(),bundleContentObj.i);
         }
      }
      
      public function addOwnedBundleData(bundleData:String) : void
      {
         if(!this.mOwnedBundles[bundleData])
         {
            this.mOwnedBundles[bundleData] = bundleData;
         }
      }
      
      public function addClaimableBundleData(bundleData:String) : void
      {
         if(!this.mClaimableBundles[bundleData])
         {
            this.mClaimableBundles[bundleData] = bundleData;
         }
      }
      
      public function addClaimableBundleContentData(bundleName:String, bundleData:Array) : void
      {
         if(!this.mClaimableBundlesContents[bundleName])
         {
            this.mClaimableBundlesContents[bundleName] = bundleData;
         }
      }
      
      public function isBundleOwned(bundleId:String) : Boolean
      {
         return this.mOwnedBundles[bundleId.toUpperCase()] != null;
      }
      
      public function isBundleClaimable(bundleId:String) : Boolean
      {
         return this.mClaimableBundles[bundleId.toUpperCase()] != null;
      }
      
      public function getBundleContent(bundleId:String) : Array
      {
         return this.mClaimableBundlesContents[bundleId.toUpperCase()];
      }
      
      public function injectData(itemsObject:Object) : void
      {
      }
   }
}
