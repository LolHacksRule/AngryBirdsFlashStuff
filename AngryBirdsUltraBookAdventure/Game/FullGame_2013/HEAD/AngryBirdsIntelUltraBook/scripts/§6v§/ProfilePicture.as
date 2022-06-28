package §6v§
{
   import §#_§.CustomAvatarCache;
   import §5!]§.FriendItemRenderer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class ProfilePicture extends MovieClip
   {
      
      public static var sInstances:Array = [];
      
      private static var sUserAvatarString:String;
      
      public static const AVATAR_ENABLED:Boolean = false;
      
      private static var sCachedProfilePictures:Object = {};
       
      
      protected var §^w§:Sprite;
      
      protected var §[U§:Sprite;
      
      protected var §^o§:Boolean;
      
      protected var §>!U§:Sprite;
      
      protected var §`I§:String;
      
      protected var §'I§:String;
      
      protected var §+!?§:Boolean = false;
      
      public function ProfilePicture(userId:String, avatarString:String, useHttps:Boolean = false, imageSize:String = null)
      {
         super();
         this.initProfile(userId,avatarString,useHttps,imageSize);
      }
      
      public static function § !"§(newAvatarString:String) : void
      {
         var profilePicture:ProfilePicture = null;
         var i:int = 0;
         sUserAvatarString = newAvatarString;
         if(newAvatarString != null)
         {
            for each(profilePicture in sInstances)
            {
               profilePicture.update(FriendItemRenderer.sUserId,newAvatarString);
               trace("instances:",i++,sInstances.length);
            }
         }
      }
      
      protected function initProfile(userId:String, avatarString:String, useHttps:Boolean = false, imageSize:String = null) : void
      {
         this.§'I§ = imageSize = imageSize || §5!D§.SQUARE;
         this.§`I§ = userId;
         this.§^o§ = FriendItemRenderer.sUserId == userId;
         this.§>!U§ = new Sprite();
         this.§>!U§.graphics.beginFill(0,0);
         this.§>!U§.graphics.drawRect(0,0,50,50);
         this.§>!U§.graphics.endFill();
         addChild(this.§>!U§);
         this.§8i§(userId,avatarString,useHttps);
         if(this.§^o§)
         {
            sInstances.push(this);
            addEventListener(Event.ADDED_TO_STAGE,this.§1Z§);
            addEventListener(Event.REMOVED_FROM_STAGE,this.§[q§);
         }
      }
      
      private function §;!_§(e:MouseEvent) : void
      {
         if(this.§@[§)
         {
            this.§^w§.visible = false;
            this.§[U§.visible = true;
         }
      }
      
      private function §'@§(e:MouseEvent) : void
      {
         if(this.§@[§)
         {
            this.§^w§.visible = true;
            this.§[U§.visible = false;
         }
      }
      
      public function get userID() : String
      {
         return this.§`I§;
      }
      
      public function get §@[§() : Boolean
      {
         return this.§+!?§;
      }
      
      public function set §@[§(value:Boolean) : void
      {
         this.§+!?§ = value;
         if(this.§@[§)
         {
            this.mouseEnabled = this.mouseChildren = true;
         }
         else
         {
            this.mouseEnabled = this.mouseChildren = false;
         }
      }
      
      protected function §1Z§(e:Event) : void
      {
         if(sUserAvatarString != null)
         {
            this.§8i§(this.§`I§,sUserAvatarString);
         }
      }
      
      protected function §[q§(e:Event) : void
      {
      }
      
      public function get §]n§() : Sprite
      {
         return this.§^w§;
      }
      
      public function get §0b§() : Boolean
      {
         return this.§^o§;
      }
      
      protected function §8i§(userId:String, avatarString:String, useHttps:Boolean = false, addAvatarToDisplayList:Boolean = true) : void
      {
         if(this.§^w§)
         {
            if(this.§^w§.parent)
            {
               this.§^w§.parent.removeChild(this.§^w§);
            }
         }
         if(AVATAR_ENABLED)
         {
            if(avatarString == null || avatarString == "")
            {
               avatarString = CustomAvatarCache.§9!B§(userId);
            }
         }
         if(!(avatarString == "" || avatarString == null) && AVATAR_ENABLED)
         {
            this.createAvatar(avatarString,userId,useHttps);
         }
         else
         {
            this.createFacebookProfile(userId,useHttps);
         }
         if(this.§>!U§)
         {
            setChildIndex(this.§>!U§,this.numChildren - 1);
         }
      }
      
      protected function createAvatar(avatarString:String, userId:String, useHttps:Boolean = false, overrideImageSize:int = 0, dontAddChild:Boolean = false) : void
      {
         this.§@[§ = true;
         this.§[U§ = this.§`o§(userId,this.§'I§,useHttps);
         var avatarImageSize:String = this.§'I§;
         if(overrideImageSize > 0)
         {
            avatarImageSize = "" + overrideImageSize;
         }
         this.§^w§ = new §,!f§(avatarString,avatarImageSize);
         if(!dontAddChild)
         {
            addChild(this.§[U§);
         }
         this.§[U§.visible = false;
         this.§>!U§.addEventListener(MouseEvent.MOUSE_OVER,this.§;!_§);
         this.§>!U§.addEventListener(MouseEvent.MOUSE_OUT,this.§'@§);
         if(this.§^w§ && !dontAddChild)
         {
            addChild(this.§^w§);
         }
      }
      
      protected function createFacebookProfile(userId:String, useHttps:Boolean = false, dontAddChild:Boolean = false) : void
      {
         this.§@[§ = false;
         this.§^w§ = this.§`o§(userId,this.§'I§,useHttps);
         if(this.§^w§ && !dontAddChild)
         {
            addChild(this.§^w§);
         }
      }
      
      private function §`o§(userId:String, imageSize:String, useHttps:Boolean = false) : §5!D§
      {
         var facebookPicture:§5!D§ = null;
         if(!sCachedProfilePictures[userId + imageSize])
         {
            sCachedProfilePictures[userId + imageSize] = [];
         }
         if(sCachedProfilePictures[userId + imageSize].length > 0)
         {
            facebookPicture = sCachedProfilePictures[userId + imageSize].pop();
         }
         else
         {
            facebookPicture = new §5!D§(userId,useHttps,imageSize);
         }
         return facebookPicture;
      }
      
      public function update(userId:String, newAvatarString:String) : void
      {
         this.§8i§(userId,newAvatarString,false);
      }
      
      public function dispose() : void
      {
         if(this.§^w§ && this.§^w§ is §5!D§)
         {
            if(!sCachedProfilePictures[this.§`I§ + this.§'I§])
            {
               sCachedProfilePictures[this.§`I§ + this.§'I§] = [];
            }
            sCachedProfilePictures[this.§`I§ + this.§'I§].push(this.§^w§);
         }
         if(this.§^w§)
         {
            if(this.§^w§.parent == this)
            {
               removeChild(this.§^w§);
            }
            this.§^w§ = null;
         }
         if(this.§[U§)
         {
            if(this.§[U§.parent == this)
            {
               removeChild(this.§[U§);
            }
            this.§[U§ = null;
         }
         if(this.§>!U§)
         {
            this.§>!U§.removeEventListener(MouseEvent.MOUSE_OVER,this.§;!_§);
            this.§>!U§.removeEventListener(MouseEvent.MOUSE_OUT,this.§'@§);
         }
      }
   }
}
