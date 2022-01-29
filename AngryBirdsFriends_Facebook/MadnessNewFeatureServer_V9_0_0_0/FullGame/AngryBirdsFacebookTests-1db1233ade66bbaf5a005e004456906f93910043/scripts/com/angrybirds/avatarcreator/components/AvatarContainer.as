package com.angrybirds.avatarcreator.components
{
   import com.angrybirds.avatarcreator.AvatarCreatorModel;
   import com.angrybirds.avatarcreator.data.Item;
   import flash.display.Sprite;
   
   public class AvatarContainer extends Sprite
   {
       
      
      public var mCurrentAvatar:Avatar;
      
      public function AvatarContainer()
      {
         super();
      }
      
      public function setBackgroundImage(backgroundId:String) : void
      {
         if(this.mCurrentAvatar)
         {
            this.mCurrentAvatar.setBackground(backgroundId);
         }
      }
      
      public function createAvatarFromArray(items:Array) : Avatar
      {
         var birdItem:Item = null;
         var bgItem:Item = null;
         var item:Item = null;
         for each(birdItem in items)
         {
            if(birdItem.mCategory.toUpperCase() == "CATEGORYBIRDS")
            {
               this.selectAvatar(AvatarCreatorModel.instance.getStaticAvatarById(birdItem.mId),110,174);
            }
         }
         for each(bgItem in items)
         {
            if(bgItem.mCategory.toUpperCase() == "CATEGORYBACKGROUNDS")
            {
               this.setBackgroundImage(bgItem.mId);
            }
         }
         for each(item in items)
         {
            this.mCurrentAvatar.applyItemToAvatar(item);
         }
         return this.mCurrentAvatar;
      }
      
      public function dispose() : void
      {
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
         this.mCurrentAvatar = null;
      }
      
      public function reselectCurrentAvatar() : void
      {
         this.selectAvatar(this.mCurrentAvatar,110,174);
      }
      
      public function selectAvatar(avatar:Avatar, showX:int = 110, showY:int = 174, fromRenderer:Boolean = false) : void
      {
         avatar.show(showX,showY);
         if(!fromRenderer)
         {
            AvatarCreatorModel.instance.avatar = avatar;
         }
         this.mCurrentAvatar = avatar;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
         addChild(avatar);
      }
   }
}
