package §_-Eg§
{
   import §_-16§.§_-8n§;
   import flash.display.MovieClip;
   
   public class §_-AG§ extends §_-8n§
   {
      
      private static const §_-8g§:Number = 1000 / 60;
       
      
      private var §_-F6§:String;
      
      private var dynamic:String;
      
      private var §_-pI§:int = 0;
      
      private var §_-nD§:int = 0;
      
      private var §_-iq§:Number = 0;
      
      private var §_-Ki§:Boolean = false;
      
      public function §_-AG§(param1:XML, param2:§_-Up§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §_-pE§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§_-iq§ += param1;
         this.§_-nD§ = this.§_-iq§ / §_-8g§;
         while(this.§_-pI§ < this.§_-nD§)
         {
            ++this.§_-pI§;
            mClip.gotoAndStop(this.§_-pI§);
            this.§_-F6§ = mClip.currentLabel;
            if(this.§_-F6§ != this.dynamic)
            {
               _loc2_ = this.§_-F6§;
               this.§_-nD§ = this.§_-pI§;
               this.§_-iq§ = this.§_-nD§ * §_-8g§;
            }
         }
         this.§_-pI§ = this.§_-nD§;
         this.dynamic = this.§_-F6§;
         return _loc2_;
      }
      
      public function §_-1Y§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §_-cP§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §_-Sk§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §_-bg§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§_-F6§ = param1;
         this.dynamic = param1;
         this.§_-nD§ = mClip.currentFrame;
         this.§_-pI§ = mClip.currentFrame;
         this.§_-iq§ = mClip.currentFrame * §_-8g§;
      }
      
      public function §_-hm§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §_-uk§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §_-Ll§() : Boolean
      {
         return this.§_-Ki§;
      }
      
      public function set §_-Ll§(param1:Boolean) : void
      {
         this.§_-Ki§ = param1;
      }
   }
}
