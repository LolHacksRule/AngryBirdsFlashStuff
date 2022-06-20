package com.angrybirds.giftinbox
{
   import com.angrybirds.constants.StringConstants;
   import com.angrybirds.data.ExceptionUserIDsManager;
   import com.angrybirds.data.VirtualCurrencyModel;
   import com.angrybirds.data.level.FacebookLevelManager;
   import com.angrybirds.friendsbar.ui.ScrollerItemRenderer;
   import com.angrybirds.friendsbar.ui.profile.FacebookProfilePicture;
   import com.angrybirds.friendsbar.ui.profile.ProfilePicture;
   import com.angrybirds.giftinbox.events.GiftInboxEvent;
   import com.angrybirds.powerups.PowerupType;
   import com.angrybirds.tournament.TournamentModel;
   import com.angrybirds.tournament.events.TournamentEvent;
   import com.angrybirds.utils.FriendsUtil;
   import com.rovio.assets.AssetCache;
   import com.rovio.sound.SoundEngine;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class GiftRequestItemRenderer extends ScrollerItemRenderer
   {
      
      public static const GIFT_STATUS_UNCLAIMED:String = "unclaimed";
      
      public static const GIFT_STATUS_CLAIMING_STATE_START:String = "claimingStart";
      
      public static const GIFT_STATUS_CLAIMING_STATE_END:String = "claimingEnd";
      
      public static const GIFT_STATUS_CLAIMED:String = "claimed";
      
      public static const GIFT_STATUS_GIFTED_BACK:String = "giftedBack";
      
      public static const GIFT_STATUS_ERROR:String = "giftError";
      
      public static const GIFT_TYPE_DAILY:String = "DAILY";
      
      public static const GIFT_TYPE_INVITE:String = "INVITATION";
      
      public static const GIFT_TYPE_SERVER_GIFT:String = "GIFT";
      
      public static var sCachedProfileImages:Object = {};
       
      
      protected var mRequestAsset:MovieClip;
      
      protected var mPhoto:ProfilePicture;
      
      public function GiftRequestItemRenderer()
      {
         super();
         GiftInboxPopup.instance.addEventListener(GiftInboxEvent.CLAIM_ALL_GIFT,this.onClaimingWithOthers);
         GiftInboxPopup.instance.addEventListener(GiftInboxEvent.CLAIM_ALL_GIFT_ONLY,this.onClaimingWithOthers);
      }
      
      protected function onClaimingWithOthers(e:GiftInboxEvent) : void
      {
         var particleCount:int = 0;
         var i:int = 0;
         if(data && e.data.r == data.r)
         {
            data.status = GiftRequestItemRenderer.GIFT_STATUS_CLAIMING_STATE_END;
            if(y > 0)
            {
               particleCount = 6;
               for(i = 0; i < particleCount; i++)
               {
                  GiftInboxPopup.instance.walletContainer.addChild(new GiftParticle(569 + Math.random() * 20,y + 140 + Math.random() * 20));
               }
            }
            this.updateVisuals();
            GiftInboxPopup.instance.removeEventListener(GiftInboxEvent.CLAIM_ALL_GIFT,this.onClaimingWithOthers);
            GiftInboxPopup.instance.removeEventListener(GiftInboxEvent.CLAIM_ALL_GIFT_ONLY,this.onClaimingWithOthers);
         }
      }
      
      protected function onClaimSendClick(e:MouseEvent) : void
      {
         SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
         dispatchEvent(new GiftInboxEvent(GiftInboxEvent.CLAIM_GIFT,data,true));
         this.updateVisuals();
      }
      
      protected function onClaimOnlyClick(e:MouseEvent) : void
      {
         SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
         dispatchEvent(new GiftInboxEvent(GiftInboxEvent.CLAIM_GIFT_ONLY,data,true));
         this.updateVisuals();
      }
      
      protected function onServerGiftClaimed(e:MouseEvent) : void
      {
         SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
         dispatchEvent(new GiftInboxEvent(GiftInboxEvent.SERVER_GIFT,data,true));
         this.updateVisuals();
      }
      
      protected function onGiftCloseClick(e:MouseEvent) : void
      {
         SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
         dispatchEvent(new GiftInboxEvent(GiftInboxEvent.REMOVE_REQUEST,data,true));
      }
      
      protected function onPlayClick(e:MouseEvent) : void
      {
         SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
         dispatchEvent(new GiftInboxEvent(GiftInboxEvent.PLAY_BRAGGED_LEVEL,data,true));
      }
      
      override public function set data(value:Object) : void
      {
         super.data = value;
         this.createAsset();
         this.updateVisuals();
      }
      
      protected function updateVisuals() : void
      {
         if(this.mPhoto)
         {
            if(this.mPhoto.parent == this)
            {
               removeChild(this.mPhoto);
            }
            this.mPhoto.dispose();
            this.mPhoto = null;
         }
         if(!mData)
         {
            if(this.mRequestAsset && this.mRequestAsset.mcGiftIcon)
            {
               this.mRequestAsset.mcGiftIcon.gotoAndStop(1);
               this.mRequestAsset.mcGiftIcon.visible = false;
               this.mRequestAsset.mcGiftCount.visible = false;
            }
            return;
         }
         if(mData.lvl)
         {
            this.updateVisualsForBragItem();
         }
         else
         {
            this.updateVisualsForGiftItem();
         }
      }
      
      protected function updateVisualsForGiftItem() : void
      {
         if(!mData.status)
         {
            mData.status = GIFT_STATUS_UNCLAIMED;
         }
         if(this.mRequestAsset.btnPlay)
         {
            this.mRequestAsset.btnPlay.visible = false;
         }
         this.mRequestAsset.mcGiftIcon.visible = false;
         var name:* = mData.n;
         if(name && name.length > 11)
         {
            name = name.substr(0,10) + "...";
         }
         var useProfilePicture:Boolean = true;
         switch(mData.status)
         {
            case GIFT_STATUS_UNCLAIMED:
               if(mData.t == GIFT_TYPE_SERVER_GIFT)
               {
                  this.mRequestAsset.btnClaimOnlyBig.visible = true;
                  useProfilePicture = false;
                  this.setTexts(mData.txt,this.getExpirationTimeString(mData.et));
                  if(FriendsUtil.movieClipHasLabel(this.mRequestAsset.PartyGiftIcon,mData.img))
                  {
                     this.mRequestAsset.PartyGiftIcon.gotoAndStop(mData.img);
                  }
                  else
                  {
                     this.mRequestAsset.PartyGiftIcon.gotoAndStop("default");
                  }
               }
               else
               {
                  if(mData.t == GIFT_TYPE_DAILY)
                  {
                     this.setTexts(StringConstants.GIFT_INBOX_GIFT_TITLE.replace("%1",name),this.getExpirationTimeString(mData.et));
                  }
                  else
                  {
                     this.setTexts(StringConstants.GIFT_INBOX_FRIEND_INVITE_ACCEPTED_REWARD_TITLE.replace("%1",name),this.getExpirationTimeString(mData.et));
                  }
                  if(this.mRequestAsset.btnClaimSend)
                  {
                     this.mRequestAsset.btnClaimSend.visible = ExceptionUserIDsManager.instance.canSendGiftRequestTo(mData.uid);
                     this.mRequestAsset.btnClaimOnlyBig.visible = !this.mRequestAsset.btnClaimSend.visible;
                  }
                  else
                  {
                     this.mRequestAsset.btnClaimOnlyBig.visible = !ExceptionUserIDsManager.instance.canSendGiftRequestTo(mData.uid);
                  }
               }
               this.mRequestAsset.btnClose.visible = false;
               this.mRequestAsset.mcGiftCount.visible = false;
               break;
            case GIFT_STATUS_CLAIMING_STATE_START:
            case GIFT_STATUS_CLAIMING_STATE_END:
               if(mData.t == GIFT_TYPE_DAILY)
               {
                  this.setTexts(StringConstants.GIFT_INBOX_GIFT_TITLE.replace("%1",name),null);
               }
               else if(mData.t == GIFT_TYPE_SERVER_GIFT)
               {
                  this.setTexts("",null);
               }
               else
               {
                  this.setTexts(StringConstants.GIFT_INBOX_FRIEND_INVITE_ACCEPTED_REWARD_TITLE.replace("%1",name),null);
               }
               this.mRequestAsset.mcGiftIcon.gotoAndStop(2);
               this.mRequestAsset.mcGiftIcon.visible = true;
               if(this.mRequestAsset.btnClaimSend)
               {
                  this.mRequestAsset.btnClaimSend.visible = false;
               }
               this.mRequestAsset.btnClaimOnlyBig.visible = false;
               this.mRequestAsset.btnClose.visible = false;
               this.mRequestAsset.mcGiftCount.visible = false;
               break;
            case GIFT_STATUS_CLAIMED:
               if(mData.t == GIFT_TYPE_SERVER_GIFT)
               {
                  this.setTexts(StringConstants.GIFT_INBOX_SERVER_GIFT_CLAIMED_TITLE,null);
                  if(FriendsUtil.movieClipHasLabel(this.mRequestAsset.PartyGiftIcon,mData.img))
                  {
                     this.mRequestAsset.PartyGiftIcon.gotoAndStop(mData.img);
                  }
                  else
                  {
                     this.mRequestAsset.PartyGiftIcon.gotoAndStop("default");
                  }
               }
               else
               {
                  this.setTexts(StringConstants.GIFT_INBOX_GIFT_CLAIMED_TITLE.replace("%1",name),null);
               }
               if(mData.itemId)
               {
                  this.mRequestAsset.mcGiftIcon.gotoAndStop(mData.itemId);
                  this.mRequestAsset.mcGiftIcon.visible = true;
               }
               if(this.mRequestAsset.btnClaimSend)
               {
                  this.mRequestAsset.btnClaimSend.visible = false;
               }
               this.mRequestAsset.btnClaimOnlyBig.visible = false;
               this.mRequestAsset.btnClose.visible = true;
               if(mData.quantity >= 1)
               {
                  this.mRequestAsset.mcGiftCount.visible = true;
                  this.mRequestAsset.mcGiftCount.txtCount.text = mData.quantity + "";
               }
               else
               {
                  this.mRequestAsset.mcGiftCount.visible = false;
               }
               break;
            case GIFT_STATUS_GIFTED_BACK:
               this.setTexts(StringConstants.GIFT_INBOX_GIFT_CLAIMED_TITLE.replace("%1",name),null);
               if(mData.itemId)
               {
                  this.mRequestAsset.mcGiftIcon.gotoAndStop(mData.itemId);
                  this.mRequestAsset.mcGiftIcon.visible = true;
               }
               if(this.mRequestAsset.btnClaimSend)
               {
                  this.mRequestAsset.btnClaimSend.visible = false;
               }
               this.mRequestAsset.btnClaimOnlyBig.visible = false;
               this.mRequestAsset.btnClose.visible = true;
               if(mData.quantity > 0)
               {
                  this.mRequestAsset.mcGiftCount.visible = true;
                  this.mRequestAsset.mcGiftCount.txtCount.text = mData.quantity + "";
               }
               else
               {
                  this.mRequestAsset.mcGiftCount.visible = false;
               }
               break;
            case GIFT_STATUS_ERROR:
               this.setTexts(StringConstants.GIFT_INBOX_GIFT_CLAIMED_ERROR,mData.error);
               this.mRequestAsset.mcGiftIcon.gotoAndStop(1);
               this.mRequestAsset.mcGiftIcon.visible = false;
               if(this.mRequestAsset.btnClaimSend)
               {
                  this.mRequestAsset.btnClaimSend.visible = false;
               }
               this.mRequestAsset.btnClaimOnlyBig.visible = false;
               this.mRequestAsset.btnClose.visible = true;
               this.mRequestAsset.mcGiftCount.visible = false;
         }
         this.mRequestAsset.btnClose.visible = false;
         if(useProfilePicture)
         {
            this.addFacebookProfilePicture();
         }
      }
      
      private function setTexts(title:String, description:String) : void
      {
         FriendsUtil.setTextInCorrectFont(this.mRequestAsset.txtTitle,title);
         if(description)
         {
            this.mRequestAsset.txtTitle.y = 5.65;
            this.mRequestAsset.txtDescription.visible = true;
            FriendsUtil.setTextInCorrectFont(this.mRequestAsset.txtDescription,description);
         }
         else
         {
            this.mRequestAsset.txtTitle.y = 17.65;
            this.mRequestAsset.txtDescription.visible = false;
         }
      }
      
      private function getExpirationTimeString(millisecondsLeft:Number) : String
      {
         var secondsLeft:Number = NaN;
         var dayString:String = null;
         if(!millisecondsLeft || millisecondsLeft <= 0)
         {
            return "";
         }
         secondsLeft = millisecondsLeft / 1000;
         var hoursLeft:Number = Math.floor(secondsLeft / 3600);
         var daysLeft:Number = Math.floor(secondsLeft / 86400);
         if(hoursLeft < 24)
         {
            return "Expires today";
         }
         dayString = daysLeft > 1 ? " days" : " day";
         return "Expires in " + daysLeft + dayString;
      }
      
      private function getDescriptionForItem(item:Object) : String
      {
         if(mData.itemId)
         {
            if(PowerupType.getPowerupByID(mData.itemId))
            {
               return StringConstants.GIFT_INBOX_GIFT_CLAIMED_DESCRIPTION.replace("%1",PowerupType.getPowerupByID(mData.itemId).prettyName);
            }
            if(mData.itemId == VirtualCurrencyModel.VIRTUAL_CURRENCY_ITEM_ID)
            {
               return StringConstants.GIFT_INBOX_GIFT_CLAIMED_DESCRIPTION.replace("%1",VirtualCurrencyModel.VIRTUAL_CURRENCY_PRETTY_NAME);
            }
         }
         return "";
      }
      
      protected function updateVisualsForBragItem() : void
      {
         var facebookLevelManager:FacebookLevelManager = AngryBirdsFacebook.levelManager;
         if(this.mRequestAsset.mcGiftIcon)
         {
            this.mRequestAsset.mcGiftIcon.gotoAndStop(1);
            this.mRequestAsset.mcGiftIcon.visible = false;
         }
         if(this.mRequestAsset.btnClaimSend)
         {
            this.mRequestAsset.btnClaimSend.visible = false;
         }
         this.mRequestAsset.btnClaimOnlyBig.visible = false;
         this.mRequestAsset.btnClose.visible = true;
         this.mRequestAsset.btnPlay.visible = true;
         this.mRequestAsset.mcGiftCount.visible = false;
         if(mData.lvl.indexOf("2000-") > -1)
         {
            if(!TournamentModel.instance.currentTournament)
            {
               this.setTexts(StringConstants.GIFT_INBOX_BRAG_TITLE.replace("%1",mData.n),"");
               this.mRequestAsset.btnPlay.visible = false;
               TournamentModel.instance.addEventListener(TournamentEvent.CURRENT_TOURNAMENT_INFO_LOADED,this.onTournamentInfoLoaded);
            }
            else if(!TournamentModel.instance.isLevelOpen(mData.lvl))
            {
               this.setTexts(StringConstants.GIFT_INBOX_BRAG_TITLE.replace("%1",mData.n),StringConstants.GIFT_INBOX_BRAG_EXPIRED);
               this.mRequestAsset.btnPlay.visible = false;
            }
            else
            {
               this.setTexts(StringConstants.GIFT_INBOX_BRAG_TITLE.replace("%1",mData.n),facebookLevelManager.getEpisodeForLevel(mData.lvl).writtenName + " - Level " + TournamentModel.instance.getLevelActualNumber(mData.lvl));
            }
         }
         else
         {
            this.setTexts(StringConstants.GIFT_INBOX_BRAG_TITLE.replace("%1",mData.n),facebookLevelManager.getEpisodeForLevel(mData.lvl).writtenName + " - Level " + facebookLevelManager.getFacebookNameFromLevelId(mData.lvl));
         }
         this.addFacebookProfilePicture();
      }
      
      override public function get height() : Number
      {
         return 60;
      }
      
      private function onTournamentInfoLoaded(e:TournamentEvent) : void
      {
         TournamentModel.instance.removeEventListener(TournamentEvent.CURRENT_TOURNAMENT_INFO_LOADED,this.onTournamentInfoLoaded);
         this.updateVisualsForBragItem();
      }
      
      private function createAsset() : void
      {
         if(mData)
         {
            if(mData.t == GIFT_TYPE_SERVER_GIFT)
            {
               this.mRequestAsset = new AssetCache.getAssetFromCache("GiftInboxItemParty")();
               this.mRequestAsset.btnClaimOnlyBig.addEventListener(MouseEvent.CLICK,this.onServerGiftClaimed);
               this.mRequestAsset.btnClose.addEventListener(MouseEvent.CLICK,this.onGiftCloseClick);
               addChild(this.mRequestAsset);
            }
            else
            {
               this.mRequestAsset = new AssetCache.getAssetFromCache("GiftInboxItem")();
               this.mRequestAsset.mcGiftIcon.stop();
               this.mRequestAsset.mcGiftIcon.visible = false;
               this.mRequestAsset.mcGiftCount.visible = false;
               if(this.mRequestAsset.btnClaimSend)
               {
                  this.mRequestAsset.btnClaimSend.addEventListener(MouseEvent.CLICK,this.onClaimSendClick);
               }
               this.mRequestAsset.btnClaimOnlyBig.addEventListener(MouseEvent.CLICK,this.onClaimOnlyClick);
               this.mRequestAsset.btnClose.addEventListener(MouseEvent.CLICK,this.onGiftCloseClick);
               this.mRequestAsset.btnPlay.addEventListener(MouseEvent.CLICK,this.onPlayClick);
               addChild(this.mRequestAsset);
            }
         }
      }
      
      private function addFacebookProfilePicture() : void
      {
         this.mPhoto = new ProfilePicture(mData.uid,"",false,FacebookProfilePicture.SQUARE);
         this.mPhoto.mouseChildren = false;
         this.mPhoto.mouseEnabled = false;
         addChild(this.mPhoto);
         this.mPhoto.x = 11;
         this.mPhoto.y = 9;
      }
   }
}
