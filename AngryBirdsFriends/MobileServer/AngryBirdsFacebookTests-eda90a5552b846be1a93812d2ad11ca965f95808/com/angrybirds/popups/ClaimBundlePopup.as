package com.angrybirds.popups
{
   import com.angrybirds.data.ItemsInventory;
   import com.angrybirds.powerups.BundleDefinition;
   import com.rovio.server.ABFLoader;
   import com.rovio.server.RetryingURLLoader;
   import com.rovio.server.RetryingURLLoaderErrorEvent;
   import com.rovio.server.URLRequestFactory;
   import com.rovio.ui.Components.Helpers.UIComponentInteractiveRovio;
   import com.rovio.ui.Components.UITextFieldRovio;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.popup.AbstractPopup;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class ClaimBundlePopup extends AbstractPopup
   {
       
      
      private var mCodeLoader:RetryingURLLoader;
      
      private var mClaimableBundle:String = "";
      
      private var mBundleDefinition:BundleDefinition;
      
      public function ClaimBundlePopup(layerIndex:int, priority:int, bundleDefinition:BundleDefinition)
      {
         super(layerIndex,priority,ViewXMLLibrary.mLibrary.Views.PopupView_ClaimBundlePopup[0]);
         this.mBundleDefinition = bundleDefinition;
      }
      
      override protected function show(useTransition:Boolean = false) : void
      {
         super.show(useTransition);
         mContainer.getItemByName("MovieClip_ClaimBundle_" + this.mBundleDefinition.definition).setVisibility(true);
         mContainer.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.onCloseClick);
         mContainer.mClip.btnClaim.addEventListener(MouseEvent.CLICK,this.onClaimClick);
         (mContainer.getItemByName("TextField_Header") as UITextFieldRovio).setText(this.mBundleDefinition.prettyName);
         (mContainer.getItemByName("TextField_Content") as UITextFieldRovio).setText(this.mBundleDefinition.description);
         mContainer.mClip.errorMessage.text = "";
         this.mClaimableBundle = this.mBundleDefinition.definition;
         this.removeLoadingMovieClip();
      }
      
      private function onClaimClick(e:MouseEvent) : void
      {
         this.showLoadingMovieClip();
         mContainer.mClip.errorMessage.text = "";
         this.mCodeLoader = new ABFLoader();
         this.mCodeLoader.addEventListener(Event.COMPLETE,this.onDataLoaded);
         this.mCodeLoader.addEventListener(IOErrorEvent.IO_ERROR,this.onDataLoadError);
         this.mCodeLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onDataLoadError);
         this.mCodeLoader.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.onHttpStatus);
         this.mCodeLoader.addEventListener(RetryingURLLoaderErrorEvent.THIRD_PARTY_COOKIES_DISABLED,this.onDataLoadError);
         this.mCodeLoader.dataFormat = URLLoaderDataFormat.TEXT;
         var urlReq:URLRequest = URLRequestFactory.getNonCachingURLRequest(AngryBirdsBase.SERVER_ROOT + "/claimfreebundle/" + this.mClaimableBundle);
         urlReq.method = URLRequestMethod.GET;
         this.mCodeLoader.load(urlReq);
      }
      
      private function removeLoadingMovieClip() : void
      {
         (mContainer.getItemByName("MovieClip_Popup_Loading") as UIComponentInteractiveRovio).visible = false;
      }
      
      private function showLoadingMovieClip() : void
      {
         (mContainer.getItemByName("MovieClip_Popup_Loading") as UIComponentInteractiveRovio).visible = true;
      }
      
      private function onHttpStatus(e:HTTPStatusEvent) : void
      {
      }
      
      private function onCloseClick(e:MouseEvent) : void
      {
         this.close();
      }
      
      private function onDataLoaded(e:Event) : void
      {
         var jsonOb:Object = null;
         this.removeLoadingMovieClip();
         if(e.currentTarget.data)
         {
            jsonOb = e.currentTarget.data;
            if(jsonOb.errorCode)
            {
               this.showError(jsonOb);
            }
            else
            {
               this.showItemUnlocked(jsonOb);
            }
         }
      }
      
      private function onDataLoadError(e:ErrorEvent) : void
      {
         this.removeLoadingMovieClip();
         this.showError({"errorMessage":"Something went wrong. Please try again later."});
      }
      
      private function showItemUnlocked(items:Object) : void
      {
         ItemsInventory.instance.loadInventory();
         this.close();
      }
      
      private function showError(error:Object) : void
      {
         mContainer.mClip.errorMessage.text = error.errorMessage;
      }
      
      override protected function hide(useTransition:Boolean = false, waitForAnimationsToStop:Boolean = false) : void
      {
         if(this.mCodeLoader)
         {
            this.mCodeLoader.removeEventListener(Event.COMPLETE,this.onDataLoaded);
            this.mCodeLoader.removeEventListener(IOErrorEvent.IO_ERROR,this.onDataLoadError);
            this.mCodeLoader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onDataLoadError);
            this.mCodeLoader.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.onHttpStatus);
            this.mCodeLoader.removeEventListener(RetryingURLLoaderErrorEvent.THIRD_PARTY_COOKIES_DISABLED,this.onDataLoadError);
         }
         super.hide(useTransition,waitForAnimationsToStop);
      }
   }
}
