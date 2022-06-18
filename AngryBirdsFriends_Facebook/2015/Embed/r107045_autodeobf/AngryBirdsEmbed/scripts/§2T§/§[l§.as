package §2T§
{
   import §7J§.§=U§;
   import flash.display.MovieClip;
   
   public class §[l§ extends §=U§
   {
      
      private static const §?!$§:Number = 1000 / 60;
       
      
      private var §4-§:String;
      
      private var §#'§:String;
      
      private var §4!G§:int = 0;
      
      private var §^r§:int = 0;
      
      private var § h§:Number = 0;
      
      private var §#X§:Boolean = false;
      
      public function §[l§(param1:XML, param2:§&M§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §3!C§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§ h§ += param1;
         this.§^r§ = this.§ h§ / §?!$§;
         while(this.§4!G§ < this.§^r§)
         {
            ++this.§4!G§;
            mClip.gotoAndStop(this.§4!G§);
            this.§4-§ = mClip.currentLabel;
            if(this.§4-§ != this.§#'§)
            {
               _loc2_ = this.§4-§;
               this.§^r§ = this.§4!G§;
               this.§ h§ = this.§^r§ * §?!$§;
            }
         }
         this.§4!G§ = this.§^r§;
         this.§#'§ = this.§4-§;
         return _loc2_;
      }
      
      public function §>"§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §>!I§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function § z§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §7!1§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§4-§ = param1;
         this.§#'§ = param1;
         this.§^r§ = mClip.currentFrame;
         this.§4!G§ = mClip.currentFrame;
         this.§ h§ = mClip.currentFrame * §?!$§;
      }
      
      public function § !3§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §?!@§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §50§() : Boolean
      {
         return this.§#X§;
      }
      
      public function set §50§(param1:Boolean) : void
      {
         this.§#X§ = param1;
      }
   }
}
