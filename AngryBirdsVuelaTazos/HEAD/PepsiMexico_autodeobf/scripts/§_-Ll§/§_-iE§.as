package §_-Ll§
{
   import §_-7V§.§_-LB§;
   import flash.display.MovieClip;
   
   public class §_-iE§ extends §_-LB§
   {
      
      private static const §_-HG§:Number = 1000 / 60;
       
      
      private var §_-F5§:String;
      
      private var §_-uo§:String;
      
      private var §_-dJ§:int = 0;
      
      private var §_-6b§:int = 0;
      
      private var §_-zd§:Number = 0;
      
      private var §_-b9§:Boolean = false;
      
      public function §_-iE§(param1:XML, param2:§_-4G§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §_-no§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§_-zd§ += param1;
         this.§_-6b§ = this.§_-zd§ / §_-HG§;
         while(this.§_-dJ§ < this.§_-6b§)
         {
            ++this.§_-dJ§;
            mClip.gotoAndStop(this.§_-dJ§);
            this.§_-F5§ = mClip.currentLabel;
            if(this.§_-F5§ != this.§_-uo§)
            {
               _loc2_ = this.§_-F5§;
               this.§_-6b§ = this.§_-dJ§;
               this.§_-zd§ = this.§_-6b§ * §_-HG§;
            }
         }
         this.§_-dJ§ = this.§_-6b§;
         this.§_-uo§ = this.§_-F5§;
         return _loc2_;
      }
      
      public function §_-Eu§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §_-JT§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §_-kA§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §_-8w§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§_-F5§ = param1;
         this.§_-uo§ = param1;
         this.§_-6b§ = mClip.currentFrame;
         this.§_-dJ§ = mClip.currentFrame;
         this.§_-zd§ = mClip.currentFrame * §_-HG§;
      }
      
      public function §_-B2§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §_-ZB§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §_-jk§() : Boolean
      {
         return this.§_-b9§;
      }
      
      public function set §_-jk§(param1:Boolean) : void
      {
         this.§_-b9§ = param1;
      }
   }
}
