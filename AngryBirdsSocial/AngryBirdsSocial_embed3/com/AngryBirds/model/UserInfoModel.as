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
         var req:URLRequest = null;
         var context:LoaderContext = null;
         if(this.imageLoader == null && this.getImageUrl() != null)
         {
            req = new URLRequest(this.getImageUrl());
            context = new LoaderContext(true);
            this.imageLoader = new Loader();
            this.imageLoader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onImageLoaded);
            this.imageLoader.load(req,context);
         }
         return new Bitmap(this.imageData);
      }
      
      public function getImageAsMovieClip() : MovieClip
      {
         var mc:MovieClip = new MovieClip();
         mc.addChild(this.getImage());
         return mc;
      }
      
      public function onImageLoaded(evt:Event) : void
      {
         this.imageLoader.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onImageLoaded);
         var s:Number = 50 / (this.imageLoader.content.width > this.imageLoader.content.height ? this.imageLoader.content.width : this.imageLoader.content.height);
         var m:Matrix = new Matrix();
         m.scale(s,s);
         this.imageData.draw(this.imageLoader,m);
      }
   }
}
