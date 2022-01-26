package §_-of§
{
   import §_-Ys§.§_-TM§;
   import flash.display.MovieClip;
   
   public class §_-3Q§ extends §_-TM§
   {
      
      private static const §_-XT§:Number = 1000 / 60;
       
      
      private var §_-qW§:String;
      
      private var §_-iK§:String;
      
      private var §_-M2§:int = 0;
      
      private var §_-Uh§:int = 0;
      
      private var §_-O7§:Number = 0;
      
      private var §_-K-§:Boolean = false;
      
      public function §_-3Q§(param1:XML, param2:§_-H4§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §_-cL§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§_-O7§ += param1;
         this.§_-Uh§ = this.§_-O7§ / §_-XT§;
         while(this.§_-M2§ < this.§_-Uh§)
         {
            ++this.§_-M2§;
            mClip.gotoAndStop(this.§_-M2§);
            this.§_-qW§ = mClip.currentLabel;
            if(this.§_-qW§ != this.§_-iK§)
            {
               _loc2_ = this.§_-qW§;
               this.§_-Uh§ = this.§_-M2§;
               this.§_-O7§ = this.§_-Uh§ * §_-XT§;
            }
         }
         this.§_-M2§ = this.§_-Uh§;
         this.§_-iK§ = this.§_-qW§;
         return _loc2_;
      }
      
      public function §_-eM§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §_-Lv§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §_-ME§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §_-5n§(param1:String) : void
      {
         this.§_-K-§ = false;
         mClip.gotoAndStop(param1);
         this.§_-qW§ = param1;
         this.§_-iK§ = param1;
         this.§_-Uh§ = mClip.currentFrame;
         this.§_-M2§ = mClip.currentFrame;
         this.§_-O7§ = mClip.currentFrame * §_-XT§;
      }
      
      public function §_-V5§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §_-xP§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get get() : Boolean
      {
         return this.§_-K-§;
      }
      
      public function set get(param1:Boolean) : void
      {
         this.§_-K-§ = param1;
      }
   }
}
