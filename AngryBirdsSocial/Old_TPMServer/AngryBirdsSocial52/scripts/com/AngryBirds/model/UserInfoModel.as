package com.AngryBirds.model
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   
   public class UserInfoModel
   {
       
      
      public var userName:String = "";
      
      public var facebookUserId:String = "";
      
      public var facebookName:String = null;
      
      public var imageLoader:Loader;
      
      public var image:MovieClip;
      
      public var imageUrl:String = "";
      
      public function UserInfoModel()
      {
         super();
      }
      
      public function get displayName() : String
      {
         if(this.facebookName)
         {
            return this.facebookName;
         }
         return this.userName;
      }
      
      public function getImageUrl() : String
      {
         if(this.imageUrl != "")
         {
            return this.imageUrl;
         }
         return null;
      }
      
      public function getImage() : MovieClip
      {
         var _loc1_:URLRequest = null;
         var _loc2_:LoaderContext = null;
         if(this.image == null)
         {
            this.image = new MovieClip();
            if(this.getImageUrl() != null)
            {
               _loc1_ = new URLRequest(this.getImageUrl());
               _loc2_ = new LoaderContext(true);
               this.imageLoader = new Loader();
               this.imageLoader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onImageLoaded);
               this.imageLoader.load(_loc1_,_loc2_);
            }
         }
         return this.image;
      }
      
      public function onImageLoaded(param1:Event) : void
      {
         this.image.addChild(this.imageLoader.content);
         this.imageLoader.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onImageLoaded);
      }
   }
}
