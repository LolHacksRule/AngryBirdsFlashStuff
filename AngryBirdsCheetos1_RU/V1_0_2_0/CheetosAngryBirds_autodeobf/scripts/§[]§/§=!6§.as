package §[]§
{
   import §7L§.§+!$§;
   import flash.display.MovieClip;
   
   public class §=!6§ extends §+!$§
   {
      
      private static const §5!I§:Number = 1000 / 60;
       
      
      private var §`!V§:String;
      
      private var §#%§:String;
      
      private var §3N§:int = 0;
      
      private var §6!-§:int = 0;
      
      private var §"p§:Number = 0;
      
      private var §#4§:Boolean = false;
      
      public function §=!6§(param1:XML, param2:§`!`§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §]=§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§"p§ += param1;
         this.§6!-§ = this.§"p§ / §5!I§;
         while(this.§3N§ < this.§6!-§)
         {
            ++this.§3N§;
            mClip.gotoAndStop(this.§3N§);
            this.§`!V§ = mClip.currentLabel;
            if(this.§`!V§ != this.§#%§)
            {
               _loc2_ = this.§`!V§;
               this.§6!-§ = this.§3N§;
               this.§"p§ = this.§6!-§ * §5!I§;
            }
         }
         this.§3N§ = this.§6!-§;
         this.§#%§ = this.§`!V§;
         return _loc2_;
      }
      
      public function §%_§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §98§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §-z§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §%?§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§`!V§ = param1;
         this.§#%§ = param1;
         this.§6!-§ = mClip.currentFrame;
         this.§3N§ = mClip.currentFrame;
         this.§"p§ = mClip.currentFrame * §5!I§;
      }
      
      public function §5!Y§() : String
      {
         return mClip.currentLabel;
      }
      
      public function § !=§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §]!K§() : Boolean
      {
         return this.§#4§;
      }
      
      public function set §]!K§(param1:Boolean) : void
      {
         this.§#4§ = param1;
      }
   }
}
