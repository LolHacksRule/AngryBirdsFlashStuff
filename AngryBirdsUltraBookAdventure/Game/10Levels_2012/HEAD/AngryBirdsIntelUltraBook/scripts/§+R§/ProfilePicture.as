package §+R§
{
   import §#r§.FriendItemRenderer;
   import §'!%§.CustomAvatarCache;
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
       
      
      protected var §1!%§:Sprite;
      
      protected var §&!4§:Sprite;
      
      protected var §;!-§:Boolean;
      
      protected var §#'§:Sprite;
      
      protected var §^Q§:String;
      
      protected var §+4§:String;
      
      protected var §#!?§:Boolean = false;
      
      public function ProfilePicture(userId:String, avatarString:String, useHttps:Boolean = false, imageSize:String = null)
      {
         super();
         this.initProfile(userId,avatarString,useHttps,imageSize);
      }
      
      public static function §<!h§(newAvatarString:String) : void
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
         this.§+4§ = imageSize = imageSize || §3!1§.SQUARE;
         this.§^Q§ = userId;
         this.§;!-§ = FriendItemRenderer.sUserId == userId;
         this.§#'§ = new Sprite();
         this.§#'§.graphics.beginFill(0,0);
         this.§#'§.graphics.drawRect(0,0,50,50);
         this.§#'§.graphics.endFill();
         addChild(this.§#'§);
         this.§"M§(userId,avatarString,useHttps);
         if(this.§;!-§)
         {
            sInstances.push(this);
            addEventListener(Event.ADDED_TO_STAGE,this.§2!a§);
            addEventListener(Event.REMOVED_FROM_STAGE,this.§%C§);
         }
      }
      
      private function §;z§(e:MouseEvent) : void
      {
         if(this.§%!3§)
         {
            this.§1!%§.visible = false;
            this.§&!4§.visible = true;
         }
      }
      
      private function §0a§(e:MouseEvent) : void
      {
         if(this.§%!3§)
         {
            this.§1!%§.visible = true;
            this.§&!4§.visible = false;
         }
      }
      
      public function get userID() : String
      {
         return this.§^Q§;
      }
      
      public function get §%!3§() : Boolean
      {
         return this.§#!?§;
      }
      
      public function set §%!3§(value:Boolean) : void
      {
         this.§#!?§ = value;
         if(this.§%!3§)
         {
            this.mouseEnabled = this.mouseChildren = true;
         }
         else
         {
            this.mouseEnabled = this.mouseChildren = false;
         }
      }
      
      protected function §2!a§(e:Event) : void
      {
         if(sUserAvatarString != null)
         {
            this.§"M§(this.§^Q§,sUserAvatarString);
         }
      }
      
      protected function §%C§(e:Event) : void
      {
      }
      
      public function get §4?§() : Sprite
      {
         return this.§1!%§;
      }
      
      public function get §?!`§() : Boolean
      {
         return this.§;!-§;
      }
      
      protected function §"M§(userId:String, avatarString:String, useHttps:Boolean = false, addAvatarToDisplayList:Boolean = true) : void
      {
         if(this.§1!%§)
         {
            if(this.§1!%§.parent)
            {
               this.§1!%§.parent.removeChild(this.§1!%§);
            }
         }
         if(AVATAR_ENABLED)
         {
            if(avatarString == null || avatarString == "")
            {
               avatarString = CustomAvatarCache.§try §(userId);
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
         if(this.§#'§)
         {
            setChildIndex(this.§#'§,this.numChildren - 1);
         }
      }
      
      protected function createAvatar(avatarString:String, userId:String, useHttps:Boolean = false, overrideImageSize:int = 0, dontAddChild:Boolean = false) : void
      {
         this.§%!3§ = true;
         this.§&!4§ = this.§0!;§(userId,this.§+4§,useHttps);
         var avatarImageSize:String = this.§+4§;
         if(overrideImageSize > 0)
         {
            avatarImageSize = "" + overrideImageSize;
         }
         this.§1!%§ = new §9!S§(avatarString,avatarImageSize);
         if(!dontAddChild)
         {
            addChild(this.§&!4§);
         }
         this.§&!4§.visible = false;
         this.§#'§.addEventListener(MouseEvent.MOUSE_OVER,this.§;z§);
         this.§#'§.addEventListener(MouseEvent.MOUSE_OUT,this.§0a§);
         if(this.§1!%§ && !dontAddChild)
         {
            addChild(this.§1!%§);
         }
      }
      
      protected function createFacebookProfile(userId:String, useHttps:Boolean = false, dontAddChild:Boolean = false) : void
      {
         this.§%!3§ = false;
         this.§1!%§ = this.§0!;§(userId,this.§+4§,useHttps);
         if(this.§1!%§ && !dontAddChild)
         {
            addChild(this.§1!%§);
         }
      }
      
      private function §0!;§(userId:String, imageSize:String, useHttps:Boolean = false) : §3!1§
      {
         var facebookPicture:§3!1§ = null;
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
            facebookPicture = new §3!1§(userId,useHttps,imageSize);
         }
         return facebookPicture;
      }
      
      public function update(userId:String, newAvatarString:String) : void
      {
         this.§"M§(userId,newAvatarString,false);
      }
      
      public function dispose() : void
      {
         if(this.§1!%§ && this.§1!%§ is §3!1§)
         {
            if(!sCachedProfilePictures[this.§^Q§ + this.§+4§])
            {
               sCachedProfilePictures[this.§^Q§ + this.§+4§] = [];
            }
            sCachedProfilePictures[this.§^Q§ + this.§+4§].push(this.§1!%§);
         }
         if(this.§1!%§)
         {
            if(this.§1!%§.parent == this)
            {
               removeChild(this.§1!%§);
            }
            this.§1!%§ = null;
         }
         if(this.§&!4§)
         {
            if(this.§&!4§.parent == this)
            {
               removeChild(this.§&!4§);
            }
            this.§&!4§ = null;
         }
         if(this.§#'§)
         {
            this.§#'§.removeEventListener(MouseEvent.MOUSE_OVER,this.§;z§);
            this.§#'§.removeEventListener(MouseEvent.MOUSE_OUT,this.§0a§);
         }
      }
   }
}
