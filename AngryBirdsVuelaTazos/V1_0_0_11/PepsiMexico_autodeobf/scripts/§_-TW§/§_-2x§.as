package §_-TW§
{
   import §_-xN§.§_-WL§;
   import flash.display.MovieClip;
   
   public class §_-2x§ extends §_-WL§
   {
      
      private static const §_-8B§:Number = 1000 / 60;
       
      
      private var §_-M7§:String;
      
      private var §_-hW§:String;
      
      private var §_-sb§:int = 0;
      
      private var §_-iv§:int = 0;
      
      private var §_-v5§:Number = 0;
      
      private var §_-MT§:Boolean = false;
      
      public function §_-2x§(param1:XML, param2:§_-qq§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §_-Yq§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§_-v5§ += param1;
         this.§_-iv§ = this.§_-v5§ / §_-8B§;
         while(this.§_-sb§ < this.§_-iv§)
         {
            ++this.§_-sb§;
            mClip.gotoAndStop(this.§_-sb§);
            this.§_-M7§ = mClip.currentLabel;
            if(this.§_-M7§ != this.§_-hW§)
            {
               _loc2_ = this.§_-M7§;
               this.§_-iv§ = this.§_-sb§;
               this.§_-v5§ = this.§_-iv§ * §_-8B§;
            }
         }
         this.§_-sb§ = this.§_-iv§;
         this.§_-hW§ = this.§_-M7§;
         return _loc2_;
      }
      
      public function §_-kk§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §_-0-§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §_-ci§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §_-4J§(param1:String) : void
      {
         this.§_-MT§ = false;
         mClip.gotoAndStop(param1);
         this.§_-M7§ = param1;
         this.§_-hW§ = param1;
         this.§_-iv§ = mClip.currentFrame;
         this.§_-sb§ = mClip.currentFrame;
         this.§_-v5§ = mClip.currentFrame * §_-8B§;
      }
      
      public function §_-W0§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §_-tX§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §_-q3§() : Boolean
      {
         return this.§_-MT§;
      }
      
      public function set §_-q3§(param1:Boolean) : void
      {
         this.§_-MT§ = param1;
      }
   }
}
