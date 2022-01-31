package com.angrybirds.popups
{
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.popup.AbstractPopup;
   import com.rovio.utils.analytics.INavigable;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.system.System;
   
   public class EmbedPopup extends AbstractPopup implements INavigable
   {
      
      public static const ID:String = "EmbedPopup";
       
      
      protected var mEmbedString:String;
      
      protected var mEmbedURL:String;
      
      protected var mLevelScreenshotLoader:Loader;
      
      private var mLevelId:String;
      
      private var mLevelName:String;
      
      private var mScore:int;
      
      private var mShareType:String;
      
      private var mView:MovieClip;
      
      public function EmbedPopup(layerIndex:int, priority:int, levelId:String, levelName:String, score:int, shareType:String)
      {
         super(layerIndex,priority,ViewXMLLibrary.mLibrary.Views.PopupView_Embed[0],ID);
         this.mLevelId = levelId;
         this.mLevelName = levelName;
         this.mScore = score;
         this.mShareType = shareType;
      }
      
      override protected function init() : void
      {
         this.mView = mContainer.mClip;
         this.mView.btnClose.addEventListener(MouseEvent.CLICK,this.onCloseClick);
         this.mView.btnCopyHTML.addEventListener(MouseEvent.CLICK,this.onCopyHTMLClick);
         this.mView.btnCopyURL.addEventListener(MouseEvent.CLICK,this.onCopyURLClick);
         this.mEmbedString = this.getEmbedCode(this.mLevelId,this.mLevelName,this.mScore,this.mShareType);
         this.mView.txtEmbedHTML.text = this.mEmbedString;
         this.mView.stage.focus = this.mView.txtEmbedHTML;
         this.mEmbedURL = this.getURL(this.mLevelId,this.mLevelName,this.mScore,this.mShareType);
         this.mView.txtEmbedURL.text = this.mEmbedURL;
         this.mView.txtEmbedHTML.setSelection(0,this.mView.txtEmbedHTML.text.length);
         this.mView.txtEmbedHTML.addEventListener(MouseEvent.CLICK,this.onEmbedHTMLTextClick);
         this.mView.txtEmbedURL.setSelection(0,this.mView.txtEmbedURL.text.length);
         this.mView.txtEmbedURL.addEventListener(MouseEvent.CLICK,this.onEmbedURLTextClick);
         this.mView.Embed_CheckHTML.stop();
         this.mView.Embed_CheckHTML.visible = false;
         this.mView.Embed_CheckURL.stop();
         this.mView.Embed_CheckURL.visible = false;
         this.mLevelScreenshotLoader = new Loader();
         this.mLevelScreenshotLoader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onScreenshotLoaded);
         var screenshotUrl:* = AngryBirdsBase.SERVER_ROOT + "/fb_images/levels/embed/" + this.mLevelId + ".png";
         this.mLevelScreenshotLoader.load(new URLRequest(screenshotUrl));
      }
      
      protected function onScreenshotLoaded(e:Event) : void
      {
         (this.mLevelScreenshotLoader.content as Bitmap).smoothing = true;
         this.mLevelScreenshotLoader.scaleX = this.mLevelScreenshotLoader.scaleY = 200 / this.mLevelScreenshotLoader.width;
         this.mView.mcThumbnail.addChild(this.mLevelScreenshotLoader);
      }
      
      protected function onEmbedHTMLTextClick(e:MouseEvent) : void
      {
         this.mView.txtEmbedHTML.setSelection(0,this.mView.txtEmbedHTML.text.length);
      }
      
      protected function onEmbedURLTextClick(e:MouseEvent) : void
      {
         this.mView.txtEmbedURL.setSelection(0,this.mView.txtEmbedURL.text.length);
      }
      
      protected function getEmbedCode(levelId:String, levelName:String, score:int, shareType:String = "") : String
      {
         var serverRoot:String = AngryBirdsBase.SERVER_ROOT.substr(0,7) == "http://" ? "https://" + AngryBirdsBase.SERVER_ROOT.substr(7) : AngryBirdsBase.SERVER_ROOT;
         return "<iframe width=\"398\" height=\"270\" scrolling=\"no\" frameborder=\"0\" src=\"" + serverRoot + "/embed" + "?levelId=" + levelId + "&levelName=" + escape(levelName) + (score > 0 ? "&score=" + score : "") + (!!shareType ? "&type=" + shareType : "") + "\" ></iframe>";
      }
      
      protected function getURL(levelId:String, levelName:String, score:int, shareType:String = "") : String
      {
         var serverRoot:String = AngryBirdsBase.SERVER_ROOT.substr(0,7) == "http://" ? "https://" + AngryBirdsBase.SERVER_ROOT.substr(7) : AngryBirdsBase.SERVER_ROOT;
         return serverRoot + "/embed" + "?levelId=" + levelId + "&levelName=" + escape(levelName) + (score > 0 ? "&score=" + score : "") + (!!shareType ? "&type=" + shareType : "");
      }
      
      private function onCopyHTMLClick(e:MouseEvent) : void
      {
         SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
         System.setClipboard(this.mEmbedString);
         this.mView.Embed_CheckHTML.gotoAndPlay(1);
         this.mView.Embed_CheckHTML.visible = true;
      }
      
      private function onCopyURLClick(e:MouseEvent) : void
      {
         SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
         System.setClipboard(this.mEmbedURL);
         this.mView.Embed_CheckURL.gotoAndPlay(1);
         this.mView.Embed_CheckURL.visible = true;
      }
      
      private function onCloseClick(e:MouseEvent) : void
      {
         close();
      }
      
      public function getName() : String
      {
         return "EmbedPopup";
      }
   }
}
