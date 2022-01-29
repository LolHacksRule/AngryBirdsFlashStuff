package com.angrybirds.popups.league
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.friendsbar.ui.profile.FacebookProfilePicture;
   import com.angrybirds.friendsbar.ui.profile.LeagueProfilePicture;
   import com.angrybirds.league.LeagueModel;
   import com.angrybirds.server.LeagueLoader;
   import com.angrybirds.utils.ServerErrorCodes;
   import com.rovio.server.ABFLoader;
   import com.rovio.server.URLRequestFactory;
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.Components.Helpers.UIComponentInteractiveRovio;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UIButtonRovio;
   import com.rovio.ui.Components.UIContainerRovio;
   import com.rovio.ui.Components.UIMovieClipRovio;
   import com.rovio.ui.Components.UITextFieldRovio;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.popup.AbstractPopup;
   import data.user.FacebookUserProgress;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   
   public class LeagueEditProfile extends AbstractPopup
   {
      
      public static const ID:String = "Popup_EditLeagueProfile";
       
      
      private var mInputTextField:TextField;
      
      private var mCheckboxMC:UIMovieClipRovio;
      
      private var mPlayerLeagueProfile:Object;
      
      private var mPlayerProfileUploader:ABFLoader;
      
      private var mSelectedLeagueProfilePicture:String;
      
      private var mConfirmButton:UIButtonRovio;
      
      private var mBackButton:UIButtonRovio;
      
      private var mErrorMessageTextField:UITextFieldRovio;
      
      private var mProfileSavingMC:UIMovieClipRovio;
      
      private var mUploadedName:String;
      
      private var mUploadedImage:String;
      
      public function LeagueEditProfile(layerIndex:int, priority:int, data:XML = null, id:String = "AbstractPopup")
      {
         super(layerIndex,priority,ViewXMLLibrary.mLibrary.Popups.Popup_EditLeagueProfile[0],ID);
      }
      
      override protected function init() : void
      {
         var button:UIButtonRovio = null;
         var lpp:LeagueProfilePicture = null;
         super.init();
         this.mInputTextField = mContainer.mClip.nameTextField;
         this.mInputTextField.restrict = "a-z A-Z 0-9 \\- ^ ";
         this.mInputTextField.addEventListener(KeyboardEvent.KEY_UP,this.onNameTextfieldKeyUp,false,0,true);
         this.mInputTextField.addEventListener(FocusEvent.FOCUS_IN,this.onNameTextfieldSelected,false,0,true);
         this.mConfirmButton = mContainer.getItemByName("ButtonConfirm") as UIButtonRovio;
         this.mBackButton = mContainer.getItemByName("ButtonBack") as UIButtonRovio;
         this.mErrorMessageTextField = mContainer.getItemByName("TextField_ErrorMessage") as UITextFieldRovio;
         this.mErrorMessageTextField.setText("");
         this.mCheckboxMC = mContainer.getItemByName("Checkbox_FB") as UIMovieClipRovio;
         this.mCheckboxMC.mClip.addEventListener(MouseEvent.CLICK,this.onCheckboxClicked,false,0,true);
         this.mCheckboxMC.mClip.buttonMode = true;
         this.mCheckboxMC.mClip.useHandCursor = true;
         this.mProfileSavingMC = mContainer.getItemByName("ProfileSaving") as UIMovieClipRovio;
         this.mProfileSavingMC.setVisibility(false);
         var useFacebookNameTitle:UIMovieClipRovio = mContainer.getItemByName("Title_UseFacebookName") as UIMovieClipRovio;
         useFacebookNameTitle.mClip.buttonMode = true;
         useFacebookNameTitle.mClip.useHandCursor = true;
         useFacebookNameTitle.mClip.addEventListener(MouseEvent.CLICK,this.onCheckboxClicked,false,0,true);
         this.mPlayerLeagueProfile = LeagueModel.instance.getPlayerProfileForLeague();
         var containerPictureSelection:UIContainerRovio = mContainer.getItemByName("Container_PictureSelection") as UIContainerRovio;
         for(var i:int = 0; i < LeagueProfilePicture.PROFILE_PICTURE_NAMES.length; i++)
         {
            button = containerPictureSelection.getItemByName("Slot" + (i + 1)) as UIButtonRovio;
            if(button)
            {
               lpp = new LeagueProfilePicture((AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress).userID,LeagueProfilePicture.PROFILE_PICTURE_NAMES[i],(AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress).avatarString,false,FacebookProfilePicture.LARGE,FacebookProfilePicture.NORMAL,2);
               lpp.x = 6;
               lpp.y = 5;
               button.mClip.addChild(lpp);
            }
         }
         this.setValues();
      }
      
      protected function setValues() : void
      {
         if(this.mPlayerLeagueProfile)
         {
            if(this.mPlayerLeagueProfile.ni)
            {
               this.mInputTextField.text = this.mPlayerLeagueProfile.ni;
               if(this.mPlayerLeagueProfile.ni == "")
               {
                  this.mCheckboxMC.mClip.gotoAndStop("ACTIVE");
               }
               else
               {
                  this.mCheckboxMC.mClip.gotoAndStop("INACTIVE");
               }
            }
            else
            {
               this.mInputTextField.text = "";
               this.mCheckboxMC.mClip.gotoAndStop("ACTIVE");
            }
            this.selectProfilePicture(!!this.mPlayerLeagueProfile.i ? this.mPlayerLeagueProfile.i : LeagueProfilePicture.PROFILE_PICTURE_NAMES[LeagueProfilePicture.DEFAULT_PROFILE_PICTURE_INDEX]);
         }
         else
         {
            this.mInputTextField.text = "";
            this.mCheckboxMC.mClip.gotoAndStop("ACTIVE");
            this.selectProfilePicture(LeagueProfilePicture.PROFILE_PICTURE_NAMES[LeagueProfilePicture.DEFAULT_PROFILE_PICTURE_INDEX]);
         }
      }
      
      protected function onNameTextfieldKeyUp(event:KeyboardEvent) : void
      {
         event.stopImmediatePropagation();
         switch(event.keyCode)
         {
            case Keyboard.ENTER:
               mContainer.mClip.stage.focus = null;
               this.saveAndClose();
               break;
            default:
               this.mErrorMessageTextField.setText("");
               this.onCheckboxClicked(null);
         }
      }
      
      protected function onNameTextfieldSelected(event:Event) : void
      {
         AngryBirdsBase.singleton.exitFullScreen();
         this.onCheckboxClicked(null);
         this.mErrorMessageTextField.setText("");
      }
      
      protected function onCheckboxClicked(event:MouseEvent) : void
      {
         if(!event)
         {
            this.mCheckboxMC.mClip.gotoAndStop("INACTIVE");
         }
         else
         {
            this.mCheckboxMC.mClip.gotoAndStop(this.mCheckboxMC.getCurrentFrameLabel() == "INACTIVE" ? "ACTIVE" : "INACTIVE");
            this.mInputTextField.text = "";
            this.mErrorMessageTextField.setText("");
            SoundEngine.playSound("Menu_Select",SoundEngine.UI_CHANNEL);
         }
      }
      
      override protected function onUIInteraction(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var index:int = 0;
         var pictureName:String = null;
         super.onUIInteraction(eventIndex,eventName,component);
         switch(eventName)
         {
            case "BACK":
               close();
               break;
            case "CONFIRM":
               this.saveAndClose();
               break;
            case "S0":
            case "S1":
            case "S2":
            case "S3":
            case "S4":
            case "S5":
            case "S6":
            case "S7":
            case "S8":
               index = int(eventName.substr(1));
               pictureName = LeagueProfilePicture.PROFILE_PICTURE_NAMES[index];
               if(this.mSelectedLeagueProfilePicture != pictureName)
               {
                  SoundEngine.playSound("Menu_Select",SoundEngine.UI_CHANNEL);
               }
               this.selectProfilePicture(pictureName);
         }
      }
      
      private function selectProfilePicture(pictureName:String) : void
      {
         var selectedPictureIndex:int = 0;
         var containerPictureSelection:UIContainerRovio = null;
         var i:int = 0;
         var button:UIButtonRovio = null;
         var isSelected:* = false;
         if(this.mSelectedLeagueProfilePicture != pictureName)
         {
            this.mSelectedLeagueProfilePicture = pictureName;
            selectedPictureIndex = LeagueProfilePicture.PROFILE_PICTURE_NAMES.indexOf(pictureName);
            containerPictureSelection = mContainer.getItemByName("Container_PictureSelection") as UIContainerRovio;
            for(i = 0; i < LeagueProfilePicture.PROFILE_PICTURE_NAMES.length; i++)
            {
               button = containerPictureSelection.getItemByName("Slot" + (i + 1)) as UIButtonRovio;
               if(button)
               {
                  isSelected = i == selectedPictureIndex;
                  if(isSelected)
                  {
                     button.setEnabled(false);
                     button.setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_DISABLED);
                  }
                  else
                  {
                     button.setEnabled(true);
                     button.setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
                     button.setComponentVisualState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
                  }
               }
            }
         }
      }
      
      private function saveAndClose() : void
      {
         var urlRequest:URLRequest = null;
         var postData:Object = null;
         if(this.mPlayerProfileUploader)
         {
            return;
         }
         if(this.mCheckboxMC.getCurrentFrameLabel() == "INACTIVE" && this.mInputTextField.text == "")
         {
            this.mErrorMessageTextField.setText("Use facebook name or enter nickname.");
            return;
         }
         this.mErrorMessageTextField.setText("");
         var profileHasChanged:Boolean = false;
         var newName:String = this.mInputTextField.text;
         if(!this.mPlayerLeagueProfile || this.mPlayerLeagueProfile.ni != newName)
         {
            profileHasChanged = true;
         }
         else if(this.mSelectedLeagueProfilePicture != this.mPlayerLeagueProfile.i)
         {
            profileHasChanged = true;
         }
         if(profileHasChanged)
         {
            this.mProfileSavingMC.setVisibility(true);
            this.mProfileSavingMC.goToFrame(1,true);
            this.mConfirmButton.setEnabled(false);
            this.mBackButton.setEnabled(false);
            this.mUploadedName = newName;
            this.mUploadedImage = this.mSelectedLeagueProfilePicture;
            urlRequest = URLRequestFactory.getNonCachingURLRequest(AngryBirdsBase.SERVER_ROOT + LeagueLoader.PATH_LEAGUE + LeagueLoader.PATH_LEAGUE_SAVE_PROFILE);
            postData = {
               "ni":newName,
               "i":this.mSelectedLeagueProfilePicture
            };
            urlRequest.data = JSON.stringify(postData);
            urlRequest.method = URLRequestMethod.POST;
            urlRequest.contentType = "application/json";
            this.mPlayerProfileUploader = new ABFLoader();
            this.mPlayerProfileUploader.addEventListener(Event.COMPLETE,this.onProfileUploaded);
            this.mPlayerProfileUploader.dataFormat = URLLoaderDataFormat.TEXT;
            this.mPlayerProfileUploader.load(urlRequest);
         }
         else
         {
            close();
         }
      }
      
      protected function onProfileUploaded(e:Event) : void
      {
         var newName:String = null;
         var hyphenPattern:RegExp = null;
         var str:String = null;
         var dataObj:Object = e.currentTarget.data;
         this.mConfirmButton.setEnabled(true);
         this.mBackButton.setEnabled(true);
         this.mPlayerProfileUploader = null;
         if(dataObj is Boolean)
         {
            this.mPlayerLeagueProfile.ni = this.mUploadedName;
            this.mPlayerLeagueProfile.i = this.mUploadedImage;
            LeagueModel.instance.updatePlayerData(this.mUploadedName,this.mUploadedImage);
            newName = this.mUploadedName != "" ? this.mUploadedName : (AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress).userName;
            (AngryBirdsEngine.smApp as AngryBirdsFacebook).friendsBar.changePlayerDataInLeagueScoreList(newName,this.mUploadedImage);
            close();
         }
         else if(dataObj.errorCode)
         {
            this.mProfileSavingMC.setVisibility(false);
            if(dataObj.errorCode == ServerErrorCodes.LEAGUE_NAME_INVALID_CHARACTERS)
            {
               hyphenPattern = /-/gi;
               str = this.mUploadedName.replace(hyphenPattern,"");
               if(str.length == 0)
               {
                  dataObj.errorMessage = "Nickname must contain a character";
               }
            }
            this.mErrorMessageTextField.setText(dataObj.errorMessage);
         }
      }
   }
}
