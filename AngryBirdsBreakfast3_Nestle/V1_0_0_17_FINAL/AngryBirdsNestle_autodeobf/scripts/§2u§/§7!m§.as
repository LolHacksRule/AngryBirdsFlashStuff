package §2u§
{
   import §!""§.§]H§;
   import §'"!§.§-!g§;
   import flash.display.MovieClip;
   
   public class §7!m§ extends §-!g§
   {
      
      private static const §0!Z§:Number = 1000 / 60;
       
      
      private var §[L§:String;
      
      private var §6"4§:String;
      
      private var §;"'§:int = 0;
      
      private var §"!J§:int = 0;
      
      private var § !Z§:Number = 0;
      
      private var §"!G§:Boolean = false;
      
      public function §7!m§(param1:XML, param2:§,6§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §]H§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function §<t§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§ !Z§ += param1;
         this.§"!J§ = this.§ !Z§ / §0!Z§;
         while(this.§;"'§ < this.§"!J§)
         {
            ++this.§;"'§;
            mClip.gotoAndStop(this.§;"'§);
            this.§[L§ = mClip.currentLabel;
            if(this.§[L§ != this.§6"4§)
            {
               _loc2_ = this.§[L§;
               this.§"!J§ = this.§;"'§;
               this.§ !Z§ = this.§"!J§ * §0!Z§;
            }
         }
         this.§;"'§ = this.§"!J§;
         this.§6"4§ = this.§[L§;
         return _loc2_;
      }
      
      public function §#u§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §%" §(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §@!2§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §;U§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§[L§ = param1;
         this.§6"4§ = param1;
         this.§"!J§ = mClip.currentFrame;
         this.§;"'§ = mClip.currentFrame;
         this.§ !Z§ = mClip.currentFrame * §0!Z§;
      }
      
      public function §&O§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §7!B§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §2x§() : Boolean
      {
         return this.§"!G§;
      }
      
      public function set §2x§(param1:Boolean) : void
      {
         this.§"!G§ = param1;
      }
   }
}
