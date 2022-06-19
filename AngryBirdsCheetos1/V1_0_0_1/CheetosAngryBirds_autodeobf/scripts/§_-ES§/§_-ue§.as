package §_-ES§
{
   import §_-9J§.§_-DA§;
   import flash.display.MovieClip;
   
   public class §_-ue§ extends §_-DA§
   {
      
      private static const §_-bv§:Number = 1000 / 60;
       
      
      private var §_-tq§:String;
      
      private var §_-7w§:String;
      
      private var §_-fF§:int = 0;
      
      private var §_-rp§:int = 0;
      
      private var §_-zr§:Number = 0;
      
      private var §_-8g§:Boolean = false;
      
      public function §_-ue§(param1:XML, param2:§_-L8§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §_-YT§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§_-zr§ += param1;
         this.§_-rp§ = this.§_-zr§ / §_-bv§;
         while(this.§_-fF§ < this.§_-rp§)
         {
            ++this.§_-fF§;
            mClip.gotoAndStop(this.§_-fF§);
            this.§_-tq§ = mClip.currentLabel;
            if(this.§_-tq§ != this.§_-7w§)
            {
               _loc2_ = this.§_-tq§;
               this.§_-rp§ = this.§_-fF§;
               this.§_-zr§ = this.§_-rp§ * §_-bv§;
            }
         }
         this.§_-fF§ = this.§_-rp§;
         this.§_-7w§ = this.§_-tq§;
         return _loc2_;
      }
      
      public function §_-4E§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §_-wj§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §_-Os§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §_-FJ§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§_-tq§ = param1;
         this.§_-7w§ = param1;
         this.§_-rp§ = mClip.currentFrame;
         this.§_-fF§ = mClip.currentFrame;
         this.§_-zr§ = mClip.currentFrame * §_-bv§;
      }
      
      public function §_-GV§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §_-DO§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §_-5k§() : Boolean
      {
         return this.§_-8g§;
      }
      
      public function set §_-5k§(param1:Boolean) : void
      {
         this.§_-8g§ = param1;
      }
   }
}
