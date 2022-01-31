package com.angrybirds.popups
{
   import com.angrybirds.data.InitDataLoader;
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.popup.AbstractPopup;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   
   public class ToSPopup extends AbstractPopup
   {
      
      public static const ID:String = "ToSPopup";
       
      
      private var mToSButtonURL:String;
      
      public function ToSPopup(layerIndex:int, priority:int)
      {
         super(layerIndex,priority,ViewXMLLibrary.mLibrary.Views.PopupToS[0],ID);
      }
      
      override protected function init() : void
      {
         super.init();
         var view:MovieClip = mContainer.mClip;
         view.btnAccept.addEventListener(MouseEvent.CLICK,this.onAcceptClicked);
         view.btnToS.addEventListener(MouseEvent.CLICK,this.onToSClicked);
      }
      
      public function injectData(title:String, body:String, acceptButtonTitle:String, tosButtonTitle:String, tosButtonURL:String) : void
      {
         var view:MovieClip = mContainer.mClip;
         view.txtTitle.text = title;
         view.txtTitle.y += Math.round((view.txtTitle.height - view.txtTitle.textHeight) / 2);
         view.txtBody.text = body;
         this.mToSButtonURL = tosButtonURL;
         this.setButtonText(acceptButtonTitle,"btnAccept");
         this.setButtonText(tosButtonTitle,"btnToS");
      }
      
      private function onAcceptClicked(e:MouseEvent) : void
      {
         InitDataLoader.toSAccepted();
         close();
      }
      
      private function onToSClicked(e:MouseEvent) : void
      {
         SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
         try
         {
            AngryBirdsBase.singleton.exitFullScreen();
            navigateToURL(new URLRequest(this.mToSButtonURL + "&token=" + AngryBirdsFacebook(AngryBirdsFacebook.sSingleton).dataModelFriends.rovioAccessToken.accessToken + "&appId=" + AngryBirdsFacebook.beaconAppId),"_blank");
         }
         catch(e:Error)
         {
         }
      }
      
      private function setButtonText(text:String, buttonName:String) : void
      {
         this.changeButtonStateText(mContainer.mClip[buttonName].upState,text);
         this.changeButtonStateText(mContainer.mClip[buttonName].overState,text);
         this.changeButtonStateText(mContainer.mClip[buttonName].downState,text);
      }
      
      private function changeButtonStateText(stateDoc:DisplayObjectContainer, text:String) : void
      {
         var tf:TextField = null;
         for(var i:int = 0; i < stateDoc.numChildren; i++)
         {
            if(stateDoc.getChildAt(i) is TextField)
            {
               tf = stateDoc.getChildAt(i) as TextField;
               tf.text = text;
               tf.y = -tf.textHeight / 2 * tf.scaleY;
               break;
            }
         }
      }
   }
}
