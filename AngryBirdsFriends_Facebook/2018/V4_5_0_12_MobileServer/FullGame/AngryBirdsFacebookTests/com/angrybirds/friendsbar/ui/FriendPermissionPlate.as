package com.angrybirds.friendsbar.ui
{
   import com.rovio.assets.AssetCache;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class FriendPermissionPlate extends BasePlate
   {
       
      
      private var mPlate:MovieClip;
      
      private var mSpamclickTimer:Timer;
      
      public function FriendPermissionPlate()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.mPlate = new AssetCache.getAssetFromCache("AddFriendsPlate")());
         this.mPlate.btnAddFriends.addEventListener(MouseEvent.CLICK,this.onAddFriendsClick);
      }
      
      private function onAddFriendsClick(e:Event) : void
      {
         if(!this.mSpamclickTimer)
         {
            this.mSpamclickTimer = new Timer(1000);
            this.mSpamclickTimer.addEventListener(TimerEvent.TIMER,this.onSpamClickTimer);
            this.mSpamclickTimer.start();
            AngryBirdsFacebook(AngryBirdsFacebook.sSingleton).requestFriendListPermission("SIDEBAR");
         }
      }
      
      private function onSpamClickTimer(e:TimerEvent) : void
      {
         if(this.mSpamclickTimer)
         {
            this.mSpamclickTimer.stop();
            this.mSpamclickTimer.removeEventListener(TimerEvent.TIMER,this.onSpamClickTimer);
            this.mSpamclickTimer = null;
         }
      }
   }
}
