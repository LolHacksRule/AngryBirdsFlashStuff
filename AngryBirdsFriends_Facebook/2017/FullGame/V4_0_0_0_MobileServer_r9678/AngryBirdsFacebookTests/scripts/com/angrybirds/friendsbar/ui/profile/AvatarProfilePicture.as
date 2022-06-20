package com.angrybirds.friendsbar.ui.profile
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.PixelSnapping;
   import flash.display.Sprite;
   
   public class AvatarProfilePicture extends Sprite
   {
      
      public static var sAvatarRenderer:IAvatarRenderer;
       
      
      protected var mAvatarHolder:DisplayObjectContainer;
      
      public var mAvatarString:String;
      
      protected var mIgnoreBackground:Boolean;
      
      private var mImageSize:int;
      
      public function AvatarProfilePicture(avatarString:String, imageSize:String, ignoreBackground:Boolean = false)
      {
         super();
         this.mIgnoreBackground = ignoreBackground;
         switch(imageSize)
         {
            case FacebookProfilePicture.LARGE:
               this.mImageSize = 100;
               break;
            case FacebookProfilePicture.NORMAL:
               this.mImageSize = 100;
               break;
            case FacebookProfilePicture.SQUARE:
            case FacebookProfilePicture.SMALL:
               this.mImageSize = 50;
               break;
            default:
               this.mImageSize = int(imageSize);
         }
         if(avatarString.length > 0)
         {
            this.mAvatarString = avatarString;
            this.initAvatar(avatarString);
         }
      }
      
      public function getSize() : int
      {
         return this.mImageSize;
      }
      
      private function initAvatar(avatarString:String) : void
      {
         this.mAvatarString = avatarString;
         if(this.mAvatarHolder == null)
         {
            this.mAvatarHolder = new Sprite();
         }
         while(this.mAvatarHolder.numChildren > 0)
         {
            this.mAvatarHolder.removeChildAt(0);
         }
         this.sendAvatarToRenderer();
      }
      
      public function dispose() : void
      {
      }
      
      protected function sendAvatarToRenderer() : void
      {
         sAvatarRenderer.render(this.mAvatarString,this.renderAvatar,this.getSize(),this.mIgnoreBackground);
      }
      
      public function renderAvatar(bitmapData:BitmapData, avatarMovieClip:MovieClip) : void
      {
         if(this.mAvatarHolder == null)
         {
            this.mAvatarHolder = new Sprite();
         }
         while(this.mAvatarHolder.numChildren > 0)
         {
            this.mAvatarHolder.removeChildAt(0);
         }
         var bitmap:Bitmap = new Bitmap(bitmapData,PixelSnapping.ALWAYS,true);
         this.mAvatarHolder.addChild(bitmap);
         bitmap.x = -10;
         bitmap.y = -10;
         addChild(this.mAvatarHolder);
      }
   }
}
