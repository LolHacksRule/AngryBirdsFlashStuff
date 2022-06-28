package §+R§
{
   import §#r§.FriendItemRenderer;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §""§ extends ProfilePicture
   {
       
      
      private var §#p§:MovieClip;
      
      private var §[!N§:Boolean;
      
      public function §""§(userId:String, avatarString:String, newSilhouette:MovieClip, useHttps:Boolean = false, imageSize:String = null)
      {
         this.§#p§ = newSilhouette;
         super(userId,avatarString,useHttps,imageSize);
      }
      
      public function set §90§(silhouetteMovieClip:MovieClip) : void
      {
         this.§#p§ = silhouetteMovieClip;
      }
      
      public function get §90§() : MovieClip
      {
         return this.§#p§;
      }
      
      public function get §1!N§() : Boolean
      {
         return this.§[!N§;
      }
      
      override protected function initProfile(userId:String, avatarString:String, useHttps:Boolean = false, imageSize:String = null) : void
      {
         §+4§ = imageSize = imageSize || §3!1§.SQUARE;
         §^Q§ = userId;
         §;!-§ = FriendItemRenderer.sUserId == userId;
         §"M§(userId,avatarString,useHttps);
         if(§;!-§)
         {
            sInstances.push(this);
            addEventListener(Event.ADDED_TO_STAGE,§2!a§);
            addEventListener(Event.REMOVED_FROM_STAGE,§%C§);
         }
      }
      
      override protected function createAvatar(avatarString:String, userId:String, useHttps:Boolean = false, overrideImageSize:int = 0, dontAddChild:Boolean = false) : void
      {
         §%!3§ = true;
         §1!%§ = new §9!S§(avatarString,§+4§,true);
         this.§#p§.visible = false;
         this.§[!N§ = true;
         §1!%§.visible = true;
         if(§1!%§ && !dontAddChild)
         {
            addChild(§1!%§);
         }
      }
      
      override protected function createFacebookProfile(userId:String, useHttps:Boolean = false, dontAddChild:Boolean = false) : void
      {
         this.§[!N§ = false;
         this.§#p§.visible = true;
         if(§1!%§)
         {
            §1!%§.visible = false;
         }
      }
   }
}
