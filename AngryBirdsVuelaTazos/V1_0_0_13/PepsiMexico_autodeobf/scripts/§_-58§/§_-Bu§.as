package §_-58§
{
   import §_-J-§.§_-BT§;
   import flash.display.MovieClip;
   
   public class §_-Bu§ extends §_-BT§
   {
      
      private static const §_-Sg§:Number = 1000 / 60;
       
      
      private var §_-aU§:String;
      
      private var §_-tJ§:String;
      
      private var §_-Wj§:int = 0;
      
      private var §_-IP§:int = 0;
      
      private var §_-5Y§:Number = 0;
      
      private var §_-Uq§:Boolean = false;
      
      public function §_-Bu§(param1:XML, param2:§_-WC§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §_-Sj§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§_-5Y§ += param1;
         this.§_-IP§ = this.§_-5Y§ / §_-Sg§;
         while(this.§_-Wj§ < this.§_-IP§)
         {
            ++this.§_-Wj§;
            mClip.gotoAndStop(this.§_-Wj§);
            this.§_-aU§ = mClip.currentLabel;
            if(this.§_-aU§ != this.§_-tJ§)
            {
               _loc2_ = this.§_-aU§;
               this.§_-IP§ = this.§_-Wj§;
               this.§_-5Y§ = this.§_-IP§ * §_-Sg§;
            }
         }
         this.§_-Wj§ = this.§_-IP§;
         this.§_-tJ§ = this.§_-aU§;
         return _loc2_;
      }
      
      public function §catch§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §_-s§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §_-dY§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §_-Z9§(param1:String) : void
      {
         this.§_-Uq§ = false;
         mClip.gotoAndStop(param1);
         this.§_-aU§ = param1;
         this.§_-tJ§ = param1;
         this.§_-IP§ = mClip.currentFrame;
         this.§_-Wj§ = mClip.currentFrame;
         this.§_-5Y§ = mClip.currentFrame * §_-Sg§;
      }
      
      public function §_-Ps§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §_-8-§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §_-54§() : Boolean
      {
         return this.§_-Uq§;
      }
      
      public function set §_-54§(param1:Boolean) : void
      {
         this.§_-Uq§ = param1;
      }
   }
}
