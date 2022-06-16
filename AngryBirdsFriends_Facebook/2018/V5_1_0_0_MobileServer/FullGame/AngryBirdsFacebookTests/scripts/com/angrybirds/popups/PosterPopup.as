package com.angrybirds.popups
{
   import com.angrybirds.graphapi.GraphAPICaller;
   import com.rovio.assets.AssetCache;
   import com.rovio.factory.FacebookImageUploaderFriends;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UIMovieClipRovio;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.popup.AbstractPopup;
   import data.user.FacebookUserProgress;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.geom.Matrix;
   
   public class PosterPopup extends AbstractPopup
   {
      
      public static const POSTER_BLOCKS:Array = ["MISC_THEMED_POSTER_A","MISC_THEMED_POSTER_B","MISC_THEMED_POSTER_C","MISC_THEMED_POSTER_CRATE_A"];
      
      public static const ID:String = "PosterPopup";
       
      
      private var mUploadImage:MovieClip;
      
      public function PosterPopup(layerIndex:int, priority:int, posterID:String)
      {
         var poster:Class = AssetCache.getAssetFromCache(posterID);
         this.mUploadImage = new poster();
         var dataXML:XML = this.mUploadImage.width > this.mUploadImage.height ? ViewXMLLibrary.mLibrary.Views.Popup_Poster_Horizontal[0] : ViewXMLLibrary.mLibrary.Views.Popup_Poster[0];
         super(layerIndex,priority,dataXML,ID);
      }
      
      override protected function init() : void
      {
         super.init();
         mContainer.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.onCloseClick);
         (mContainer.getItemByName("PosterPlacement") as UIMovieClipRovio).mClip.addChild(this.mUploadImage);
      }
      
      private function onCloseClick(e:MouseEvent) : void
      {
         close();
      }
      
      override protected function onUIInteraction(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         switch(eventName)
         {
            case "SHARE_PRESSED":
               this.uploadImageToWall();
               break;
            default:
               super.onUIInteraction(eventIndex,eventName,component);
         }
      }
      
      private function uploadImageToWall() : void
      {
         close();
         this.mUploadImage.scaleX = 1;
         this.mUploadImage.scaleY = 1;
         var imageBitmapData:BitmapData = new BitmapData(this.mUploadImage.width,this.mUploadImage.height);
         imageBitmapData.draw(this.mUploadImage,new Matrix(1,0,0,1,109,this.mUploadImage.height >> 1));
         FacebookImageUploaderFriends.uploadAsPNG(imageBitmapData,GraphAPICaller.sAccessToken,(AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress).userID,this.wallUploadSuccess,this.wallUploadFail);
      }
      
      private function wallUploadSuccess(data:*) : void
      {
      }
      
      private function wallUploadFail() : void
      {
      }
   }
}
