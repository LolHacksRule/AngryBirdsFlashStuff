package §5!'§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class §#![§ extends ProfilePicture
   {
      
      private static const VERSUS_DIMENSION:int = 50;
       
      
      private var §[I§:MovieClip;
      
      public function §#![§(userId:String, avatarString:String, useHttps:Boolean = false, imageSize:String = null)
      {
         this.§[I§ = new MovieClip();
         addChild(this.§[I§);
         super(userId,avatarString,useHttps,imageSize);
      }
      
      override protected function createAvatar(avatarString:String, userId:String, useHttps:Boolean = false, overrideImageSize:int = 0, dontAddChild:Boolean = false) : void
      {
         super.createAvatar(avatarString,userId,useHttps,overrideImageSize,true);
         addChild(§5!^§);
         this.§`N§(§&0§);
         this.§ K§(§5!^§,VERSUS_DIMENSION);
         this.§-!=§(§&0§ as §>Y§);
      }
      
      override protected function createFacebookProfile(userId:String, useHttps:Boolean = false, dontAddChild:Boolean = false) : void
      {
         super.createFacebookProfile(userId,useHttps,true);
         this.§`N§(§5!^§);
         this.§-!=§(§5!^§ as §>Y§);
      }
      
      private function §`N§(picture:Sprite) : void
      {
         while(this.§[I§.numChildren > 0)
         {
            this.§[I§.removeChildAt(0);
         }
         this.§[I§.scrollRect = new Rectangle(0,0,VERSUS_DIMENSION,VERSUS_DIMENSION);
         this.§[I§.addChild(picture);
      }
      
      private function §-!=§(picture:§>Y§) : void
      {
         if(picture.width > 0 && picture.height > 0)
         {
            this.§ K§(picture,VERSUS_DIMENSION);
         }
         else
         {
            picture.addEventListener(Event.COMPLETE,this.§5!-§);
         }
      }
      
      private function §5!-§(e:Event) : void
      {
         var targetPicture:§>Y§ = e.currentTarget as §>Y§;
         if(targetPicture)
         {
            targetPicture.removeEventListener(Event.COMPLETE,this.§5!-§);
         }
         this.§ K§(targetPicture,VERSUS_DIMENSION);
      }
      
      private function § K§(picture:Sprite, dimension:Number) : void
      {
         var scale:Number = NaN;
         var realWidth:int = picture.width;
         var realHeight:int = picture.height;
         if(picture is § !Q§)
         {
            dimension *= 1.4;
            picture.x = -5;
            picture.y = -5;
            scale = dimension / realHeight;
            picture.scaleX = scale;
            picture.scaleY = scale;
         }
         if(picture is §>Y§)
         {
            realWidth = (picture as §>Y§).§0!D§;
            realHeight = (picture as §>Y§).§>!]§;
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
