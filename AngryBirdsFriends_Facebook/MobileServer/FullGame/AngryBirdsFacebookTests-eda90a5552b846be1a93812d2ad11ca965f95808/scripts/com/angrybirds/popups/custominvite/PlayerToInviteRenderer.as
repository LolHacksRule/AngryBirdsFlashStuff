package com.angrybirds.popups.custominvite
{
   import com.angrybirds.friendsbar.ui.ScrollerItemRenderer;
   import com.angrybirds.friendsbar.ui.profile.FacebookProfilePicture;
   import com.angrybirds.friendsbar.ui.profile.ProfilePicture;
   import com.angrybirds.utils.FriendsUtil;
   import com.rovio.assets.AssetCache;
   import com.rovio.ui.Components.SimpleCheckbox;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class PlayerToInviteRenderer extends ScrollerItemRenderer
   {
       
      
      private var mCheckbox:SimpleCheckbox;
      
      private var mCheckboxMC:MovieClip;
      
      private var mProfilePicture:ProfilePicture;
      
      private var nameDefaultColor:uint;
      
      private var nameDisabledColor:uint = 10066329;
      
      private var mPlayerNameTF:TextField;
      
      public function PlayerToInviteRenderer()
      {
         super();
         var checkboxClass:Class = AssetCache.getAssetFromCache("FriendSelecterCheckbox");
         this.mCheckboxMC = new checkboxClass();
         this.mCheckbox = new SimpleCheckbox(this.mCheckboxMC,true);
         this.mPlayerNameTF = TextField(this.mCheckboxMC.getChildByName("PlayernameTextfield"));
         this.mPlayerNameTF.mouseEnabled = false;
         this.nameDefaultColor = this.mPlayerNameTF.textColor;
         this.mCheckbox.displayObject.addEventListener(Event.CHANGE,this.onCheckboxChange);
         addChild(this.mCheckbox.displayObject);
      }
      
      private function onCheckboxChange(e:Event) : void
      {
         if(mData)
         {
            mData.selected = this.mCheckbox.selected;
         }
      }
      
      override public function set data(value:Object) : void
      {
         cacheAsBitmap = true;
         if(this.mProfilePicture)
         {
            if(this.mCheckboxMC.contains(this.mProfilePicture))
            {
               this.mCheckboxMC.removeChild(this.mProfilePicture);
            }
            this.mProfilePicture.dispose();
         }
         this.mPlayerNameTF.text = "";
         this.mCheckbox.displayObject.visible = false;
         if(value == null)
         {
            return;
         }
         mData = value;
         FriendsUtil.setTextInCorrectFont(this.mPlayerNameTF,value.name);
         this.mCheckbox.selected = value.selected;
         this.mCheckbox.displayObject.visible = true;
         var enabled:Boolean = value.enabled === undefined ? true : Boolean(value.enabled);
         this.mCheckbox.enabled = enabled;
         this.mPlayerNameTF.textColor = !!enabled ? uint(this.nameDefaultColor) : uint(this.nameDisabledColor);
         if(value.picture)
         {
            this.mProfilePicture = new ProfilePicture(value.id,"",false,FacebookProfilePicture.SQUARE,value.picture.data.url);
         }
         else
         {
            this.mProfilePicture = new ProfilePicture(value.id,"",false,FacebookProfilePicture.SQUARE);
         }
         if(this.mProfilePicture.isAvatar)
         {
            this.mProfilePicture.x = 32;
            this.mProfilePicture.y = 0;
            this.mProfilePicture.width = 50;
            this.mProfilePicture.height = 50;
         }
         else
         {
            this.mProfilePicture.x = 32;
            this.mProfilePicture.y = 0;
            this.mProfilePicture.width = 35;
            this.mProfilePicture.height = 35;
         }
         this.mCheckboxMC.addChild(this.mProfilePicture);
      }
   }
}
