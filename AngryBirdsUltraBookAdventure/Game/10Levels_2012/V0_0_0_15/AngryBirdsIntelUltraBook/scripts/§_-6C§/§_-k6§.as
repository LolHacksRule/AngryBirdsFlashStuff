package §_-6C§
{
   import §_-MN§.§_-rR§;
   import flash.display.MovieClip;
   
   public class §_-k6§ extends §_-rR§
   {
      
      private static const §_-2Y§:Number = 1000 / 60;
       
      
      private var §_-Ti§:String;
      
      private var §_-qe§:String;
      
      private var §_-08K§:int = 0;
      
      private var §_-8z§:int = 0;
      
      private var §_-bs§:Number = 0;
      
      private var §_-05P§:Boolean = false;
      
      public function §_-k6§(param1:XML, param2:§_-gt§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §_-eB§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§_-bs§ += param1;
         this.§_-8z§ = this.§_-bs§ / §_-2Y§;
         while(this.§_-08K§ < this.§_-8z§)
         {
            ++this.§_-08K§;
            mClip.gotoAndStop(this.§_-08K§);
            this.§_-Ti§ = mClip.currentLabel;
            if(this.§_-Ti§ != this.§_-qe§)
            {
               _loc2_ = this.§_-Ti§;
               this.§_-8z§ = this.§_-08K§;
               this.§_-bs§ = this.§_-8z§ * §_-2Y§;
            }
         }
         this.§_-08K§ = this.§_-8z§;
         this.§_-qe§ = this.§_-Ti§;
         return _loc2_;
      }
      
      public function §_-Y5§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §_-kb§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §_-07k§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §_-0Du§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§_-Ti§ = param1;
         this.§_-qe§ = param1;
         this.§_-8z§ = mClip.currentFrame;
         this.§_-08K§ = mClip.currentFrame;
         this.§_-bs§ = mClip.currentFrame * §_-2Y§;
      }
      
      public function §_-T8§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §_-0BQ§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §_-3t§() : Boolean
      {
         return this.§_-05P§;
      }
      
      public function set §_-3t§(param1:Boolean) : void
      {
         this.§_-05P§ = param1;
      }
   }
}
