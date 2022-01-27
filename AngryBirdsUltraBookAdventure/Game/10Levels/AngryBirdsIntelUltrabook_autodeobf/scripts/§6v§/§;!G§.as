package §6v§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class §;!G§ extends ProfilePicture
   {
      
      private static const VERSUS_DIMENSION:int = 50;
       
      
      private var §"u§:MovieClip;
      
      public function §;!G§(userId:String, avatarString:String, useHttps:Boolean = false, imageSize:String = null)
      {
         this.§"u§ = new MovieClip();
         addChild(this.§"u§);
         super(userId,avatarString,useHttps,imageSize);
      }
      
      override protected function createAvatar(avatarString:String, userId:String, useHttps:Boolean = false, overrideImageSize:int = 0, dontAddChild:Boolean = false) : void
      {
         super.createAvatar(avatarString,userId,useHttps,overrideImageSize,true);
         addChild(§^w§);
         this.§7c§(§[U§);
         this.§58§(§^w§,VERSUS_DIMENSION);
         this.§<!e§(§[U§ as §5!D§);
      }
      
      override protected function createFacebookProfile(userId:String, useHttps:Boolean = false, dontAddChild:Boolean = false) : void
      {
         super.createFacebookProfile(userId,useHttps,true);
         this.§7c§(§^w§);
         this.§<!e§(§^w§ as §5!D§);
      }
      
      private function §7c§(picture:Sprite) : void
      {
         while(this.§"u§.numChildren > 0)
         {
            this.§"u§.removeChildAt(0);
         }
         this.§"u§.scrollRect = new Rectangle(0,0,VERSUS_DIMENSION,VERSUS_DIMENSION);
         this.§"u§.addChild(picture);
      }
      
      private function §<!e§(picture:§5!D§) : void
      {
         if(picture.width > 0 && picture.height > 0)
         {
            this.§58§(picture,VERSUS_DIMENSION);
         }
         else
         {
            picture.addEventListener(Event.COMPLETE,this.§4w§);
         }
      }
      
      private function §4w§(e:Event) : void
      {
         var targetPicture:§5!D§ = e.currentTarget as §5!D§;
         if(targetPicture)
         {
            targetPicture.removeEventListener(Event.COMPLETE,this.§4w§);
         }
         this.§58§(targetPicture,VERSUS_DIMENSION);
      }
      
      private function §58§(picture:Sprite, dimension:Number) : void
      {
         var scale:Number = NaN;
         var realWidth:int = picture.width;
         var realHeight:int = picture.height;
         if(picture is §,!f§)
         {
            dimension *= 1.4;
            picture.x = -5;
            picture.y = -5;
            scale = dimension / realHeight;
            picture.scaleX = scale;
            picture.scaleY = scale;
         }
         if(picture is §5!D§)
         {
            realWidth = (picture as §5!D§).§3f§;
            realHeight = (picture as §5!D§).§6$§;
            if(realWidth < realHeight)
            {
               scale = dimension / realWidth;
               picture.scaleX = scale;
               picture.scaleY = scale;
            }
            else
            {
               scale = dimension / realHeight;
               picture.scaleX = scale;
               picture.scaleY = scale;
               picture.x = -(picture.width - dimension) / 2;
            }
         }
      }
   }
}
