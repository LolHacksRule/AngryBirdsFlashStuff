package §<!I§
{
   import §&!&§.§+!A§;
   import flash.display.MovieClip;
   
   public class §&5§ extends §+!A§
   {
      
      private static const §-y§:Number = 1000 / 60;
       
      
      private var §5!_§:String;
      
      private var §&1§:String;
      
      private var §?!8§:int = 0;
      
      private var §1!r§:int = 0;
      
      private var §!!t§:Number = 0;
      
      private var §9!A§:Boolean = false;
      
      public function §&5§(param1:XML, param2:§>"-§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §-+§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§!!t§ += param1;
         this.§1!r§ = this.§!!t§ / §-y§;
         while(this.§?!8§ < this.§1!r§)
         {
            ++this.§?!8§;
            mClip.gotoAndStop(this.§?!8§);
            this.§5!_§ = mClip.currentLabel;
            if(this.§5!_§ != this.§&1§)
            {
               _loc2_ = this.§5!_§;
               this.§1!r§ = this.§?!8§;
               this.§!!t§ = this.§1!r§ * §-y§;
            }
         }
         this.§?!8§ = this.§1!r§;
         this.§&1§ = this.§5!_§;
         return _loc2_;
      }
      
      public function §^m§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §7!-§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §##§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §9!T§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§5!_§ = param1;
         this.§&1§ = param1;
         this.§1!r§ = mClip.currentFrame;
         this.§?!8§ = mClip.currentFrame;
         this.§!!t§ = mClip.currentFrame * §-y§;
      }
      
      public function §-m§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §<!3§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §[r§() : Boolean
      {
         return this.§9!A§;
      }
      
      public function set §[r§(param1:Boolean) : void
      {
         this.§9!A§ = param1;
      }
   }
}
