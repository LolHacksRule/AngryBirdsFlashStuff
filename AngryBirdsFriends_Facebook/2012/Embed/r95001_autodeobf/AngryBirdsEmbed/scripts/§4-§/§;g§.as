package §4-§
{
   import §0u§.§"`§;
   import flash.display.MovieClip;
   
   public class §;g§ extends §"`§
   {
      
      private static const §8=§:Number = 1000 / 60;
       
      
      private var §4!7§:String;
      
      private var §9!5§:String;
      
      private var §"T§:int = 0;
      
      private var §%D§:int = 0;
      
      private var §=L§:Number = 0;
      
      private var §5=§:Boolean = false;
      
      public function §;g§(param1:XML, param2:§'J§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §[K§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§=L§ += param1;
         this.§%D§ = this.§=L§ / §8=§;
         while(this.§"T§ < this.§%D§)
         {
            ++this.§"T§;
            mClip.gotoAndStop(this.§"T§);
            this.§4!7§ = mClip.currentLabel;
            if(this.§4!7§ != this.§9!5§)
            {
               _loc2_ = this.§4!7§;
               this.§%D§ = this.§"T§;
               this.§=L§ = this.§%D§ * §8=§;
            }
         }
         this.§"T§ = this.§%D§;
         this.§9!5§ = this.§4!7§;
         return _loc2_;
      }
      
      public function §-5§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §",§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §&=§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §#!6§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§4!7§ = param1;
         this.§9!5§ = param1;
         this.§%D§ = mClip.currentFrame;
         this.§"T§ = mClip.currentFrame;
         this.§=L§ = mClip.currentFrame * §8=§;
      }
      
      public function §=,§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §%!B§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §,N§() : Boolean
      {
         return this.§5=§;
      }
      
      public function set §,N§(param1:Boolean) : void
      {
         this.§5=§ = param1;
      }
   }
}
