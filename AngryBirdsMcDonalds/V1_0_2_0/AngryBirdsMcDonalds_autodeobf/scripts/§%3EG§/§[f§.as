package §>G§
{
   import §"%§.§9j§;
   import flash.display.MovieClip;
   
   public class §[f§ extends §9j§
   {
      
      private static const §+!`§:Number = 1000 / 60;
       
      
      private var §]U§:String;
      
      private var §"f§:String;
      
      private var §7!Z§:int = 0;
      
      private var §3]§:int = 0;
      
      private var §"L§:Number = 0;
      
      private var §%!-§:Boolean = false;
      
      public function §[f§(param1:XML, param2:§]f§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §<@§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§"L§ += param1;
         this.§3]§ = this.§"L§ / §+!`§;
         while(this.§7!Z§ < this.§3]§)
         {
            ++this.§7!Z§;
            mClip.gotoAndStop(this.§7!Z§);
            this.§]U§ = mClip.currentLabel;
            if(this.§]U§ != this.§"f§)
            {
               _loc2_ = this.§]U§;
               this.§3]§ = this.§7!Z§;
               this.§"L§ = this.§3]§ * §+!`§;
            }
         }
         this.§7!Z§ = this.§3]§;
         this.§"f§ = this.§]U§;
         return _loc2_;
      }
      
      public function §5!Q§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §,!m§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §@S§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §9!@§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§]U§ = param1;
         this.§"f§ = param1;
         this.§3]§ = mClip.currentFrame;
         this.§7!Z§ = mClip.currentFrame;
         this.§"L§ = mClip.currentFrame * §+!`§;
      }
      
      public function §<-§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §4!?§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §['§() : Boolean
      {
         return this.§%!-§;
      }
      
      public function set §['§(param1:Boolean) : void
      {
         this.§%!-§ = param1;
      }
   }
}
