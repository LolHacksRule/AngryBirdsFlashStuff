package §'!N§
{
   import §8P§.§4!Y§;
   import flash.display.MovieClip;
   
   public class §25§ extends §4!Y§
   {
      
      private static const §9!U§:Number = 1000 / 60;
       
      
      private var §'!e§:String;
      
      private var §6v§:String;
      
      private var §1X§:int = 0;
      
      private var §%d§:int = 0;
      
      private var §'n§:Number = 0;
      
      private var §[!T§:Boolean = false;
      
      public function §25§(param1:XML, param2:§2O§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §>Z§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§'n§ += param1;
         this.§%d§ = this.§'n§ / §9!U§;
         while(this.§1X§ < this.§%d§)
         {
            ++this.§1X§;
            mClip.gotoAndStop(this.§1X§);
            this.§'!e§ = mClip.currentLabel;
            if(this.§'!e§ != this.§6v§)
            {
               _loc2_ = this.§'!e§;
               this.§%d§ = this.§1X§;
               this.§'n§ = this.§%d§ * §9!U§;
            }
         }
         this.§1X§ = this.§%d§;
         this.§6v§ = this.§'!e§;
         return _loc2_;
      }
      
      public function §]I§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §-S§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §]$§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §<v§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§'!e§ = param1;
         this.§6v§ = param1;
         this.§%d§ = mClip.currentFrame;
         this.§1X§ = mClip.currentFrame;
         this.§'n§ = mClip.currentFrame * §9!U§;
      }
      
      public function §!o§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §!!S§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §&A§() : Boolean
      {
         return this.§[!T§;
      }
      
      public function set §&A§(param1:Boolean) : void
      {
         this.§[!T§ = param1;
      }
   }
}
