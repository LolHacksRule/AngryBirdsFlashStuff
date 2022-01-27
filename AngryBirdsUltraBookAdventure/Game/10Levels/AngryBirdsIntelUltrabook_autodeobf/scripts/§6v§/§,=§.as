package §6v§
{
   import §5!]§.FriendItemRenderer;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §,=§ extends ProfilePicture
   {
       
      
      private var §0!7§:MovieClip;
      
      private var §=!U§:Boolean;
      
      public function §,=§(userId:String, avatarString:String, newSilhouette:MovieClip, useHttps:Boolean = false, imageSize:String = null)
      {
         this.§0!7§ = newSilhouette;
         super(userId,avatarString,useHttps,imageSize);
      }
      
      public function set § !4§(silhouetteMovieClip:MovieClip) : void
      {
         this.§0!7§ = silhouetteMovieClip;
      }
      
      public function get § !4§() : MovieClip
      {
         return this.§0!7§;
      }
      
      public function get §?!S§() : Boolean
      {
         return this.§=!U§;
      }
      
      override protected function initProfile(userId:String, avatarString:String, useHttps:Boolean = false, imageSize:String = null) : void
      {
         §'I§ = imageSize = imageSize || §5!D§.SQUARE;
         §`I§ = userId;
         §^o§ = FriendItemRenderer.sUserId == userId;
         §8i§(userId,avatarString,useHttps);
         if(§^o§)
         {
            sInstances.push(this);
            addEventListener(Event.ADDED_TO_STAGE,§1Z§);
            addEventListener(Event.REMOVED_FROM_STAGE,§[q§);
         }
      }
      
      override protected function createAvatar(avatarString:String, userId:String, useHttps:Boolean = false, overrideImageSize:int = 0, dontAddChild:Boolean = false) : void
      {
         §@[§ = true;
         §^w§ = new §,!f§(avatarString,§'I§,true);
         this.§0!7§.visible = false;
         this.§=!U§ = true;
         §^w§.visible = true;
         if(§^w§ && !dontAddChild)
         {
            addChild(§^w§);
         }
      }
      
      override protected function createFacebookProfile(userId:String, useHttps:Boolean = false, dontAddChild:Boolean = false) : void
      {
         this.§=!U§ = false;
         this.§0!7§.visible = true;
         if(§^w§)
         {
            §^w§.visible = false;
         }
      }
   }
}
