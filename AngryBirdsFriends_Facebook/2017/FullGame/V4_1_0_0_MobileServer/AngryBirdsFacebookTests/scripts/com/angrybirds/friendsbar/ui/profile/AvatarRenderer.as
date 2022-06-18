package com.angrybirds.friendsbar.ui.profile
{
   import com.angrybirds.avatarcreator.AvatarCreatorModel;
   import com.angrybirds.avatarcreator.components.Avatar;
   import com.angrybirds.avatarcreator.components.AvatarContainer;
   import com.angrybirds.avatarcreator.data.Character;
   import com.angrybirds.avatarcreator.data.Item;
   import com.angrybirds.avatarcreator.utils.ServerIdParser;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.geom.Matrix;
   
   public class AvatarRenderer implements IAvatarRenderer
   {
       
      
      private var mQueue:Array;
      
      private var mReady:Boolean = false;
      
      public function AvatarRenderer()
      {
         this.mQueue = [];
         super();
      }
      
      public function processQueue() : void
      {
         var object:Object = null;
         this.mReady = true;
         for each(object in this.mQueue)
         {
            try
            {
               this.render(object.avatarString,object.callBack,object.imageSize,object.ignoreBackground);
            }
            catch(e:Error)
            {
            }
         }
      }
      
      public function toggleReady() : void
      {
         this.mReady = true;
      }
      
      public function renderWithAvatar(avatar:Avatar) : void
      {
      }
      
      public function render(avatarString:String, callBack:Function, imageSize:int = 50, ignoreBackground:Boolean = false, frame:Object = null, avatar:Avatar = null, topPadding:int = 0, ignoreAvatar:Boolean = false, borderPercent:Number = 0.4) : BitmapData
      {
         var imageSizeMargin:Number = NaN;
         var scale:Number = NaN;
         var parsedItems:Array = null;
         var avatarContainer:AvatarContainer = null;
         var bmd:BitmapData = null;
         var avatarMovieClip:MovieClip = null;
         var item:Item = null;
         var character:Character = null;
         var item2:Item = null;
         var mat:Matrix = null;
         if(!this.mReady)
         {
            this.mQueue.push({
               "avatarString":avatarString,
               "callBack":callBack,
               "imageSize":imageSize,
               "ignoreBackground":ignoreBackground
            });
            return null;
         }
         imageSizeMargin = imageSize * borderPercent;
         scale = imageSize / 100 / 2;
         parsedItems = ServerIdParser.parseShortHandAvatarToArray(avatarString);
         avatarContainer = new AvatarContainer();
         if(!avatar)
         {
            for each(item in parsedItems)
            {
               if(item.mCategory == "CategoryBirds")
               {
                  character = AvatarCreatorModel.instance.characters.getCharacterById(item.mId);
                  avatar = new Avatar(character);
               }
            }
         }
         if(avatar)
         {
            avatarContainer.selectAvatar(avatar,100,170 + topPadding,true);
         }
         bmd = new BitmapData(imageSize + imageSizeMargin,imageSize + imageSizeMargin + topPadding,true,16777215);
         avatarMovieClip = new MovieClip();
         if(avatar)
         {
            if(ignoreBackground)
            {
               avatar.hideBackground();
            }
            for each(item2 in parsedItems)
            {
               if(item2.mCategory != "CategoryBirds" && item2.mCategory != "CategoryBackgrounds")
               {
                  avatar.applyItemToAvatar(item2);
               }
               if(item2.mCategory == "CategoryBackgrounds")
               {
                  avatar.setBackground(item2.mId);
               }
            }
            avatarMovieClip = avatar.getMovieClip();
            if(frame)
            {
               avatarMovieClip.gotoAndStop(frame);
            }
            mat = new Matrix();
            mat.scale(scale,scale);
            mat.translate(imageSizeMargin / 2,imageSizeMargin / 2);
            bmd.draw(avatarContainer,mat,null,null,null,true);
         }
         avatarContainer.dispose();
         avatarContainer = null;
         if(callBack != null)
         {
            callBack(bmd,avatarMovieClip);
         }
         return bmd;
      }
   }
}
