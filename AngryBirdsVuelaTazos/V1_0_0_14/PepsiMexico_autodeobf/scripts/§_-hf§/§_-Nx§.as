package §_-hf§
{
   import §_-Jx§.§_-Tc§;
   import flash.display.MovieClip;
   
   public class §_-Nx§ extends §_-Tc§
   {
      
      private static const §_-aB§:Number = 1000 / 60;
       
      
      private var §_-Bx§:String;
      
      private var §_-fM§:String;
      
      private var §_-rX§:int = 0;
      
      private var §_-8A§:int = 0;
      
      private var §_-us§:Number = 0;
      
      private var §_-ty§:Boolean = false;
      
      public function §_-Nx§(param1:XML, param2:§_-WL§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §_-Q3§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§_-us§ += param1;
         this.§_-8A§ = this.§_-us§ / §_-aB§;
         while(this.§_-rX§ < this.§_-8A§)
         {
            ++this.§_-rX§;
            mClip.gotoAndStop(this.§_-rX§);
            this.§_-Bx§ = mClip.currentLabel;
            if(this.§_-Bx§ != this.§_-fM§)
            {
               _loc2_ = this.§_-Bx§;
               this.§_-8A§ = this.§_-rX§;
               this.§_-us§ = this.§_-8A§ * §_-aB§;
            }
         }
         this.§_-rX§ = this.§_-8A§;
         this.§_-fM§ = this.§_-Bx§;
         return _loc2_;
      }
      
      public function §_-c5§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §_-Mj§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §_-1h§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §_-ET§(param1:String) : void
      {
         this.§_-ty§ = false;
         mClip.gotoAndStop(param1);
         this.§_-Bx§ = param1;
         this.§_-fM§ = param1;
         this.§_-8A§ = mClip.currentFrame;
         this.§_-rX§ = mClip.currentFrame;
         this.§_-us§ = mClip.currentFrame * §_-aB§;
      }
      
      public function §_-qA§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §_-yu§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §_-Os§() : Boolean
      {
         return this.§_-ty§;
      }
      
      public function set §_-Os§(param1:Boolean) : void
      {
         this.§_-ty§ = param1;
      }
   }
}
