package §_-E-§
{
   import §_-PK§.§_-ds§;
   import flash.display.MovieClip;
   
   public class §_-RT§ extends §_-ds§
   {
       
      
      private var §_-CX§:String;
      
      private var §_-eA§:String;
      
      private var §_-uu§:int = 0;
      
      private var §_-Om§:int = 0;
      
      private var §_-Np§:Number = 0;
      
      private var §_-bY§:Boolean = false;
      
      public function §_-RT§(param1:XML, param2:§_-hw§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §_-7d§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§_-Np§ += param1;
         this.§_-Om§ = this.§_-Np§ / 16;
         while(this.§_-uu§ < this.§_-Om§)
         {
            ++this.§_-uu§;
            mClip.gotoAndStop(this.§_-uu§);
            this.§_-CX§ = mClip.currentLabel;
            if(this.§_-CX§ != this.§_-eA§)
            {
               _loc2_ = this.§_-CX§;
               this.§_-Om§ = this.§_-uu§;
               this.§_-Np§ = this.§_-Om§ * 16;
            }
         }
         this.§_-uu§ = this.§_-Om§;
         this.§_-eA§ = this.§_-CX§;
         return _loc2_;
      }
      
      public function §_-iK§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §_-cJ§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §_-X-§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §_-PZ§(param1:String) : void
      {
         this.§_-bY§ = false;
         mClip.gotoAndStop(param1);
         this.§_-CX§ = param1;
         this.§_-eA§ = param1;
         this.§_-Om§ = mClip.currentFrame;
         this.§_-uu§ = mClip.currentFrame;
         this.§_-Np§ = mClip.currentFrame * 16;
      }
      
      public function §_-48§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §_-pU§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §_-sE§() : Boolean
      {
         return this.§_-bY§;
      }
      
      public function set §_-sE§(param1:Boolean) : void
      {
         this.§_-bY§ = param1;
      }
   }
}
