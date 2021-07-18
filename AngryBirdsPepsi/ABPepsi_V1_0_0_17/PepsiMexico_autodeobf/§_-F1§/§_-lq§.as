package §_-F1§
{
   import §_-6r§.§_-h3§;
   import flash.display.MovieClip;
   
   public class §_-lq§ extends §_-h3§
   {
      
      private static const §_-33§:Number = 1000 / 60;
       
      
      private var §_-F§:String;
      
      private var §_-DQ§:String;
      
      private var §_-Mr§:int = 0;
      
      private var §_-iI§:int = 0;
      
      private var §_-3m§:Number = 0;
      
      private var §_-Fv§:Boolean = false;
      
      public function §_-lq§(param1:XML, param2:§_-k4§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §_-fu§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§_-3m§ += param1;
         this.§_-iI§ = this.§_-3m§ / §_-33§;
         while(this.§_-Mr§ < this.§_-iI§)
         {
            ++this.§_-Mr§;
            mClip.gotoAndStop(this.§_-Mr§);
            this.§_-F§ = mClip.currentLabel;
            if(this.§_-F§ != this.§_-DQ§)
            {
               _loc2_ = this.§_-F§;
               this.§_-iI§ = this.§_-Mr§;
               this.§_-3m§ = this.§_-iI§ * §_-33§;
            }
         }
         this.§_-Mr§ = this.§_-iI§;
         this.§_-DQ§ = this.§_-F§;
         return _loc2_;
      }
      
      public function §_-fT§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §_-Cb§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §_-PO§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §_-XC§(param1:String) : void
      {
         this.§_-Fv§ = false;
         mClip.gotoAndStop(param1);
         this.§_-F§ = param1;
         this.§_-DQ§ = param1;
         this.§_-iI§ = mClip.currentFrame;
         this.§_-Mr§ = mClip.currentFrame;
         this.§_-3m§ = mClip.currentFrame * §_-33§;
      }
      
      public function §_-9z§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §_-OE§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §_-Z§() : Boolean
      {
         return this.§_-Fv§;
      }
      
      public function set §_-Z§(param1:Boolean) : void
      {
         this.§_-Fv§ = param1;
      }
   }
}
