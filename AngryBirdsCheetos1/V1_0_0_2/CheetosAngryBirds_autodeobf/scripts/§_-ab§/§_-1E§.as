package §_-ab§
{
   import §_-A§.§_-YT§;
   import flash.display.MovieClip;
   
   public class §_-1E§ extends §_-YT§
   {
      
      private static const §_-df§:Number = 1000 / 60;
       
      
      private var §_-Ql§:String;
      
      private var §_-Y2§:String;
      
      private var §_-tX§:int = 0;
      
      private var §_-Rw§:int = 0;
      
      private var §_-tI§:Number = 0;
      
      private var §_-Hq§:Boolean = false;
      
      public function §_-1E§(param1:XML, param2:§_-IP§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §_-qS§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§_-tI§ += param1;
         this.§_-Rw§ = this.§_-tI§ / §_-df§;
         while(this.§_-tX§ < this.§_-Rw§)
         {
            ++this.§_-tX§;
            mClip.gotoAndStop(this.§_-tX§);
            this.§_-Ql§ = mClip.currentLabel;
            if(this.§_-Ql§ != this.§_-Y2§)
            {
               _loc2_ = this.§_-Ql§;
               this.§_-Rw§ = this.§_-tX§;
               this.§_-tI§ = this.§_-Rw§ * §_-df§;
            }
         }
         this.§_-tX§ = this.§_-Rw§;
         this.§_-Y2§ = this.§_-Ql§;
         return _loc2_;
      }
      
      public function §false§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §_-TY§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §_-Z5§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §_-fE§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§_-Ql§ = param1;
         this.§_-Y2§ = param1;
         this.§_-Rw§ = mClip.currentFrame;
         this.§_-tX§ = mClip.currentFrame;
         this.§_-tI§ = mClip.currentFrame * §_-df§;
      }
      
      public function §_-SG§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §_-JJ§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §_-96§() : Boolean
      {
         return this.§_-Hq§;
      }
      
      public function set §_-96§(param1:Boolean) : void
      {
         this.§_-Hq§ = param1;
      }
   }
}
