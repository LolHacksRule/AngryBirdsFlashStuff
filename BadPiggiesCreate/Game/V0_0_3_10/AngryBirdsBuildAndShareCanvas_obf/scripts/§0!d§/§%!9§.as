package §0!d§
{
   import §<8§.§"h§;
   import flash.display.MovieClip;
   
   public class §%!9§ extends §"h§
   {
      
      private static const §3'§:Number = 1000 / 60;
       
      
      private var §[y§:String;
      
      private var §"!U§:String;
      
      private var §8!+§:int = 0;
      
      private var §1!c§:int = 0;
      
      private var §88§:Number = 0;
      
      private var §3E§:Boolean = false;
      
      public function §%!9§(param1:XML, param2:§7!a§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §[2§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§88§ += param1;
         this.§1!c§ = this.§88§ / §3'§;
         while(this.§8!+§ < this.§1!c§)
         {
            ++this.§8!+§;
            mClip.gotoAndStop(this.§8!+§);
            this.§[y§ = mClip.currentLabel;
            if(this.§[y§ != this.§"!U§)
            {
               _loc2_ = this.§[y§;
               this.§1!c§ = this.§8!+§;
               this.§88§ = this.§1!c§ * §3'§;
            }
         }
         this.§8!+§ = this.§1!c§;
         this.§"!U§ = this.§[y§;
         return _loc2_;
      }
      
      public function §5!>§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §]!O§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §return§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §?!D§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§[y§ = param1;
         this.§"!U§ = param1;
         this.§1!c§ = mClip.currentFrame;
         this.§8!+§ = mClip.currentFrame;
         this.§88§ = mClip.currentFrame * §3'§;
      }
      
      public function §49§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §<!L§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §#N§() : Boolean
      {
         return this.§3E§;
      }
      
      public function set §#N§(param1:Boolean) : void
      {
         this.§3E§ = param1;
      }
   }
}
