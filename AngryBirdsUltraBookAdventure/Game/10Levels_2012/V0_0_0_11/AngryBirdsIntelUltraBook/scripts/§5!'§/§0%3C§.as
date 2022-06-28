package §5!'§
{
   import §5,§.FriendItemRenderer;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §0<§ extends ProfilePicture
   {
       
      
      private var §%Q§:MovieClip;
      
      private var §2!`§:Boolean;
      
      public function §0<§(userId:String, avatarString:String, newSilhouette:MovieClip, useHttps:Boolean = false, imageSize:String = null)
      {
         this.§%Q§ = newSilhouette;
         super(userId,avatarString,useHttps,imageSize);
      }
      
      public function set §88§(silhouetteMovieClip:MovieClip) : void
      {
         this.§%Q§ = silhouetteMovieClip;
      }
      
      public function get §88§() : MovieClip
      {
         return this.§%Q§;
      }
      
      public function get §=!]§() : Boolean
      {
         return this.§2!`§;
      }
      
      override protected function initProfile(userId:String, avatarString:String, useHttps:Boolean = false, imageSize:String = null) : void
      {
         § S§ = imageSize = imageSize || §>Y§.SQUARE;
         §^+§ = userId;
         §@!T§ = FriendItemRenderer.sUserId == userId;
         §1u§(userId,avatarString,useHttps);
         if(§@!T§)
         {
            sInstances.push(this);
            addEventListener(Event.ADDED_TO_STAGE,§?!0§);
            addEventListener(Event.REMOVED_FROM_STAGE,§3#§);
         }
      }
      
      override protected function createAvatar(avatarString:String, userId:String, useHttps:Boolean = false, overrideImageSize:int = 0, dontAddChild:Boolean = false) : void
      {
         §0I§ = true;
         §5!^§ = new § !Q§(avatarString,§ S§,true);
         this.§%Q§.visible = false;
         this.§2!`§ = true;
         §5!^§.visible = true;
         if(§5!^§ && !dontAddChild)
         {
            addChild(§5!^§);
         }
      }
      
      override protected function createFacebookProfile(userId:String, useHttps:Boolean = false, dontAddChild:Boolean = false) : void
      {
         this.§2!`§ = false;
         this.§%Q§.visible = true;
         if(§5!^§)
         {
            §5!^§.visible = false;
         }
      }
   }
}
