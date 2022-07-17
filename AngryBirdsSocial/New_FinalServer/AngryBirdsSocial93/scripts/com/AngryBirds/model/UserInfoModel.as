package com.AngryBirds.model
{
   import com.rovio.server.Server;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Matrix;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   
   public class UserInfoModel
   {
       
      
      public var userName:String = "";
      
      public var facebookUserId:String = "";
      
      public var facebookName:String = null;
      
      public var imageLoader:Loader;
      
      public var imageUrl:String = "";
      
      public var imageData:BitmapData;
      
      public function UserInfoModel()
      {
         this.imageData = new BitmapData(50,50,true,0);
         super();
      }
      
      public function get displayName() : String
      {
         if(this.facebookName)
         {
            return this.facebookName;
         }
         if(this.userName)
         {
            return this.userName;
         }
         return "";
      }
      
      public function getImageUrl() : String
      {
         if(this.userName != null)
         {
            return Server.getServerUrl() + "downloadProfileImage?user=" + this.userName;
         }
         return null;
      }
      
      public function getImage() : DisplayObject
      {
         var _loc1_:URLRequest = null;
         var _loc2_:LoaderContext = null;
         if(this.imageLoader == null && this.getImageUrl() != null)
         {
            _loc1_ = new URLRequest(this.getImageUrl());
            _loc2_ = new LoaderContext(true);
            this.imageLoader = new Loader();
            this.imageLoader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onImageLoaded);
            this.imageLoader.load(_loc1_,_loc2_);
         }
         return new Bitmap(this.imageData);
      }
      
      public function getImageAsMovieClip() : MovieClip
      {
         var _loc1_:MovieClip = new MovieClip();
         _loc1_.addChild(this.getImage());
         return _loc1_;
      }
      
      public function onImageLoaded(param1:Event) : void
      {
         this.imageLoader.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onImageLoaded);
         var _loc2_:Number = 50 / (this.imageLoader.content.width > this.imageLoader.content.height ? this.imageLoader.content.width : this.imageLoader.content.height);
         var _loc3_:Matrix = new Matrix();
         _loc3_.scale(_loc2_,_loc2_);
         this.imageData.draw(this.imageLoader,_loc3_);
      }
   }
}
