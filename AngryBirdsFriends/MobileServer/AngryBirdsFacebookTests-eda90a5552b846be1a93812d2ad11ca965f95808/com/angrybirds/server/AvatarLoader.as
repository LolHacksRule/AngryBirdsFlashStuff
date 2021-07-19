package com.angrybirds.server
{
   import com.angrybirds.friendsbar.data.AvatarVO;
   import com.angrybirds.friendsbar.data.CustomAvatarCache;
   import com.angrybirds.friendsdatacache.FriendsDataCache;
   import com.angrybirds.popups.ErrorPopup;
   import com.rovio.server.ABFLoader;
   import com.rovio.server.URLRequestFactory;
   import data.user.FacebookUserProgress;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class AvatarLoader extends EventDispatcher
   {
       
      
      private var mAvatarLoader:ABFLoader;
      
      private const PATH_GETAVATARS:String = "/getAvatars";
      
      private var mData:Object;
      
      public function AvatarLoader()
      {
         super();
         this.mData = new Object();
      }
      
      public function loadAvatarItems() : void
      {
         var friend:Object = null;
         var urlRequest:URLRequest = URLRequestFactory.getNonCachingURLRequest(AngryBirdsBase.SERVER_ROOT + this.PATH_GETAVATARS);
         this.mAvatarLoader = new ABFLoader();
         this.mAvatarLoader.addEventListener(Event.COMPLETE,this.onAvatarLoaded);
         this.mAvatarLoader.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.mAvatarLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.mAvatarLoader.dataFormat = URLLoaderDataFormat.TEXT;
         var postData:Array = new Array();
         for each(friend in FriendsDataCache.getPlayingFriendsOnly())
         {
            postData.push(friend.userID);
         }
         urlRequest.data = JSON.stringify(postData);
         urlRequest.method = URLRequestMethod.POST;
         urlRequest.contentType = "application/json";
         this.mAvatarLoader.load(urlRequest);
      }
      
      protected function onAvatarLoaded(event:Event) : void
      {
         var avatar:Object = null;
         this.mData = event.currentTarget.data;
         var up:FacebookUserProgress = AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress;
         for each(avatar in this.mData.avatars)
         {
            CustomAvatarCache.addIntoCache(new AvatarVO(avatar.a,avatar.uid));
            if(avatar.uid == up.userID)
            {
               up.avatarString = avatar.a;
            }
         }
      }
      
      protected function onError(e:ErrorEvent) : void
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.ERROR_GENERAL,"AvatarLoader error:" + e.text + " id: " + e.errorID));
      }
      
      public function data() : Object
      {
         return this.mData;
      }
   }
}
