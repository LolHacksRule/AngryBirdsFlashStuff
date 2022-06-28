package §+R§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class §6!A§ extends ProfilePicture
   {
      
      private static const VERSUS_DIMENSION:int = 50;
       
      
      private var §6'§:MovieClip;
      
      public function §6!A§(userId:String, avatarString:String, useHttps:Boolean = false, imageSize:String = null)
      {
         this.§6'§ = new MovieClip();
         addChild(this.§6'§);
         super(userId,avatarString,useHttps,imageSize);
      }
      
      override protected function createAvatar(avatarString:String, userId:String, useHttps:Boolean = false, overrideImageSize:int = 0, dontAddChild:Boolean = false) : void
      {
         super.createAvatar(avatarString,userId,useHttps,overrideImageSize,true);
         addChild(§1!%§);
         this.§ T§(§&!4§);
         this.§super§(§1!%§,VERSUS_DIMENSION);
         this.§[!_§(§&!4§ as §3!1§);
      }
      
      override protected function createFacebookProfile(userId:String, useHttps:Boolean = false, dontAddChild:Boolean = false) : void
      {
         super.createFacebookProfile(userId,useHttps,true);
         this.§ T§(§1!%§);
         this.§[!_§(§1!%§ as §3!1§);
      }
      
      private function § T§(picture:Sprite) : void
      {
         while(this.§6'§.numChildren > 0)
         {
            this.§6'§.removeChildAt(0);
         }
         this.§6'§.scrollRect = new Rectangle(0,0,VERSUS_DIMENSION,VERSUS_DIMENSION);
         this.§6'§.addChild(picture);
      }
      
      private function §[!_§(picture:§3!1§) : void
      {
         if(picture.width > 0 && picture.height > 0)
         {
            this.§super§(picture,VERSUS_DIMENSION);
         }
         else
         {
            picture.addEventListener(Event.COMPLETE,this.§^j§);
         }
      }
      
      private function §^j§(e:Event) : void
      {
         var targetPicture:§3!1§ = e.currentTarget as §3!1§;
         if(targetPicture)
         {
            targetPicture.removeEventListener(Event.COMPLETE,this.§^j§);
         }
         this.§super§(targetPicture,VERSUS_DIMENSION);
      }
      
      private function §super§(picture:Sprite, dimension:Number) : void
      {
         var scale:Number = NaN;
         var realWidth:int = picture.width;
         var realHeight:int = picture.height;
         if(picture is §9!S§)
         {
            dimension *= 1.4;
            picture.x = -5;
            picture.y = -5;
            scale = dimension / realHeight;
            picture.scaleX = scale;
            picture.scaleY = scale;
         }
         if(picture is §3!1§)
         {
            realWidth = (picture as §3!1§).§&!i§;
            realHeight = (picture as §3!1§).§0o§;
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
