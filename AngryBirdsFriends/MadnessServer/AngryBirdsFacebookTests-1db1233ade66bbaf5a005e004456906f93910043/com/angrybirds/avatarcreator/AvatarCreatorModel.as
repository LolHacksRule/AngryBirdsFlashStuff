package com.angrybirds.avatarcreator
{
   import com.angrybirds.avatarcreator.components.Avatar;
   import com.angrybirds.avatarcreator.data.Character;
   import com.angrybirds.avatarcreator.data.Characters;
   import com.angrybirds.avatarcreator.data.Items;
   
   public class AvatarCreatorModel
   {
      
      private static var sInstance:AvatarCreatorModel;
      
      public static const STARTUP_CHARACTER:String = "RedBird";
      
      public static const STARTUP_CHARACTER_HAT:String = "NoHat";
      
      public static const STARTUP_CHARACTER_SID:String = "10001";
      
      public static const STARTUP_CHARACTER_CATEGORY:String = "CategoryBirds";
       
      
      private var mItems:Items;
      
      private var mCharacters:Characters;
      
      private var mStaticAvatars:Vector.<Avatar>;
      
      private var mAvatar:Avatar;
      
      public function AvatarCreatorModel()
      {
         super();
      }
      
      public static function get instance() : AvatarCreatorModel
      {
         if(sInstance == null)
         {
            sInstance = new AvatarCreatorModel();
         }
         return sInstance;
      }
      
      public function get characters() : Characters
      {
         if(this.mCharacters == null)
         {
            this.mCharacters = new Characters();
         }
         return this.mCharacters;
      }
      
      public function set avatar(newAvatar:Avatar) : void
      {
         this.mAvatar = newAvatar;
      }
      
      public function get avatar() : Avatar
      {
         return this.mAvatar;
      }
      
      public function get items() : Items
      {
         if(this.mItems == null)
         {
            this.mItems = new Items();
         }
         return this.mItems;
      }
      
      public function getCharacterById(mId:String) : Character
      {
         var character:Character = null;
         for each(character in this.characters.allCharacters)
         {
            if(character.mId == mId)
            {
               return character;
            }
         }
         return null;
      }
      
      public function createNewAvatar(mId:String) : Avatar
      {
         var character:Character = this.getCharacterById(mId);
         return new Avatar(character);
      }
      
      public function createNewStartupAvatar() : Avatar
      {
         return this.createNewAvatar(STARTUP_CHARACTER);
      }
      
      public function getStaticAvatarById(mId:String) : Avatar
      {
         var avatar:Avatar = null;
         for each(avatar in this.staticAvatars)
         {
            if(avatar.getCharacter().mId == mId)
            {
               return avatar;
            }
         }
         return null;
      }
      
      public function get staticAvatars() : Vector.<Avatar>
      {
         var character:Character = null;
         if(this.mStaticAvatars == null)
         {
            this.mStaticAvatars = new Vector.<Avatar>();
            for each(character in this.characters.allCharacters)
            {
               this.mStaticAvatars.push(this.createNewAvatar(character.mId));
            }
         }
         return this.mStaticAvatars;
      }
      
      public function hideAllStaticAvatars() : void
      {
         var staticAvatar:Avatar = null;
         for each(staticAvatar in this.staticAvatars)
         {
            staticAvatar.hide();
         }
      }
   }
}
