package com.angrybirds.friendsbar.ui.profile
{
   import flash.display.Bitmap;
   import flash.events.Event;
   
   public class BirdBotProfilePicture extends ImageLoaderProfilePicture
   {
      
      public static const BIRD_BOT_1:String = "-1";
      
      public static const BIRD_BOT_2:String = "-2";
       
      
      private var mRedBirdBotImage:Class;
      
      private var mYellowBirdBotImage:Class;
      
      public function BirdBotProfilePicture(userId:String, imageURL:String)
      {
         this.mRedBirdBotImage = BirdBotProfilePicture_mRedBirdBotImage;
         this.mYellowBirdBotImage = BirdBotProfilePicture_mYellowBirdBotImage;
         super();
         if(imageURL && imageURL.length > 0)
         {
            addEventListener(Event.COMPLETE,this.cbOnImageloaded);
            mUrl = imageURL;
            load();
         }
         else
         {
            this.loadDefaultImage(userId);
         }
      }
      
      public static function isBot(userId:String) : Boolean
      {
         return userId == BIRD_BOT_1 || userId == BIRD_BOT_2;
      }
      
      private function loadDefaultImage(userId:String) : void
      {
         var redBird:Bitmap = null;
         var yellowBird:Bitmap = null;
         switch(userId)
         {
            case BIRD_BOT_1:
               redBird = new this.mRedBirdBotImage();
               this.addPic(redBird);
               break;
            case BIRD_BOT_2:
               yellowBird = new this.mYellowBirdBotImage();
               this.addPic(yellowBird);
         }
      }
      
      private function addPic(redBird:Bitmap) : void
      {
         redBird.smoothing = true;
         redBird.width = 50;
         redBird.height = 50;
         addChild(redBird);
      }
      
      private function cbOnImageloaded(event:Event) : void
      {
         removeEventListener(Event.COMPLETE,this.cbOnImageloaded);
         var bmp:Bitmap = Bitmap(loader.content);
         this.addPic(bmp);
      }
   }
}
