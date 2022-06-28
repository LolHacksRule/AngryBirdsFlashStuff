package §5!'§
{
   import §5,§.FriendItemRenderer;
   import §9R§.CustomAvatarCache;
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
       
      
      protected var §5!^§:Sprite;
      
      protected var §&0§:Sprite;
      
      protected var §@!T§:Boolean;
      
      protected var §8e§:Sprite;
      
      protected var §^+§:String;
      
      protected var § S§:String;
      
      protected var §'x§:Boolean = false;
      
      public function ProfilePicture(userId:String, avatarString:String, useHttps:Boolean = false, imageSize:String = null)
      {
         super();
         this.initProfile(userId,avatarString,useHttps,imageSize);
      }
      
      public static function §#k§(newAvatarString:String) : void
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
         this.§ S§ = imageSize = imageSize || §>Y§.SQUARE;
         this.§^+§ = userId;
         this.§@!T§ = FriendItemRenderer.sUserId == userId;
         this.§8e§ = new Sprite();
         this.§8e§.graphics.beginFill(0,0);
         this.§8e§.graphics.drawRect(0,0,50,50);
         this.§8e§.graphics.endFill();
         addChild(this.§8e§);
         this.§1u§(userId,avatarString,useHttps);
         if(this.§@!T§)
         {
            sInstances.push(this);
            addEventListener(Event.ADDED_TO_STAGE,this.§?!0§);
            addEventListener(Event.REMOVED_FROM_STAGE,this.§3#§);
         }
      }
      
      private function §--§(e:MouseEvent) : void
      {
         if(this.§0I§)
         {
            this.§5!^§.visible = false;
            this.§&0§.visible = true;
         }
      }
      
      private function §+!k§(e:MouseEvent) : void
      {
         if(this.§0I§)
         {
            this.§5!^§.visible = true;
            this.§&0§.visible = false;
         }
      }
      
      public function get userID() : String
      {
         return this.§^+§;
      }
      
      public function get §0I§() : Boolean
      {
         return this.§'x§;
      }
      
      public function set §0I§(value:Boolean) : void
      {
         this.§'x§ = value;
         if(this.§0I§)
         {
            this.mouseEnabled = this.mouseChildren = true;
         }
         else
         {
            this.mouseEnabled = this.mouseChildren = false;
         }
      }
      
      protected function §?!0§(e:Event) : void
      {
         if(sUserAvatarString != null)
         {
            this.§1u§(this.§^+§,sUserAvatarString);
         }
      }
      
      protected function §3#§(e:Event) : void
      {
      }
      
      public function get §]!?§() : Sprite
      {
         return this.§5!^§;
      }
      
      public function get §^%§() : Boolean
      {
         return this.§@!T§;
      }
      
      protected function §1u§(userId:String, avatarString:String, useHttps:Boolean = false, addAvatarToDisplayList:Boolean = true) : void
      {
         if(this.§5!^§)
         {
            if(this.§5!^§.parent)
            {
               this.§5!^§.parent.removeChild(this.§5!^§);
            }
         }
         if(AVATAR_ENABLED)
         {
            if(avatarString == null || avatarString == "")
            {
               avatarString = CustomAvatarCache.§#!@§(userId);
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
         if(this.§8e§)
         {
            setChildIndex(this.§8e§,this.numChildren - 1);
         }
      }
      
      protected function createAvatar(avatarString:String, userId:String, useHttps:Boolean = false, overrideImageSize:int = 0, dontAddChild:Boolean = false) : void
      {
         this.§0I§ = true;
         this.§&0§ = this.§!#§(userId,this.§ S§,useHttps);
         var avatarImageSize:String = this.§ S§;
         if(overrideImageSize > 0)
         {
            avatarImageSize = "" + overrideImageSize;
         }
         this.§5!^§ = new § !Q§(avatarString,avatarImageSize);
         if(!dontAddChild)
         {
            addChild(this.§&0§);
         }
         this.§&0§.visible = false;
         this.§8e§.addEventListener(MouseEvent.MOUSE_OVER,this.§--§);
         this.§8e§.addEventListener(MouseEvent.MOUSE_OUT,this.§+!k§);
         if(this.§5!^§ && !dontAddChild)
         {
            addChild(this.§5!^§);
         }
      }
      
      protected function createFacebookProfile(userId:String, useHttps:Boolean = false, dontAddChild:Boolean = false) : void
      {
         this.§0I§ = false;
         this.§5!^§ = this.§!#§(userId,this.§ S§,useHttps);
         if(this.§5!^§ && !dontAddChild)
         {
            addChild(this.§5!^§);
         }
      }
      
      private function §!#§(userId:String, imageSize:String, useHttps:Boolean = false) : §>Y§
      {
         var facebookPicture:§>Y§ = null;
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
            facebookPicture = new §>Y§(userId,useHttps,imageSize);
         }
         return facebookPicture;
      }
      
      public function update(userId:String, newAvatarString:String) : void
      {
         this.§1u§(userId,newAvatarString,false);
      }
      
      public function dispose() : void
      {
         if(this.§5!^§ && this.§5!^§ is §>Y§)
         {
            if(!sCachedProfilePictures[this.§^+§ + this.§ S§])
            {
               sCachedProfilePictures[this.§^+§ + this.§ S§] = [];
            }
            sCachedProfilePictures[this.§^+§ + this.§ S§].push(this.§5!^§);
         }
         if(this.§5!^§)
         {
            if(this.§5!^§.parent == this)
            {
               removeChild(this.§5!^§);
            }
            this.§5!^§ = null;
         }
         if(this.§&0§)
         {
            if(this.§&0§.parent == this)
            {
               removeChild(this.§&0§);
            }
            this.§&0§ = null;
         }
         if(this.§8e§)
         {
            this.§8e§.removeEventListener(MouseEvent.MOUSE_OVER,this.§--§);
            this.§8e§.removeEventListener(MouseEvent.MOUSE_OUT,this.§+!k§);
         }
      }
   }
}
