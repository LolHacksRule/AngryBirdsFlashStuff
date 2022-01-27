package §=u§
{
   import §5f§.§=;§;
   import flash.display.MovieClip;
   
   public class §"x§ extends §=;§
   {
      
      private static const §-M§:Number = 1000 / 60;
       
      
      private var §9!D§:String;
      
      private var §@B§:String;
      
      private var §8!%§:int = 0;
      
      private var §8I§:int = 0;
      
      private var §0N§:Number = 0;
      
      private var §?v§:Boolean = false;
      
      public function §"x§(param1:XML, param2:§>v§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §[!H§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§0N§ += param1;
         this.§8I§ = this.§0N§ / §-M§;
         while(this.§8!%§ < this.§8I§)
         {
            ++this.§8!%§;
            mClip.gotoAndStop(this.§8!%§);
            this.§9!D§ = mClip.currentLabel;
            if(this.§9!D§ != this.§@B§)
            {
               _loc2_ = this.§9!D§;
               this.§8I§ = this.§8!%§;
               this.§0N§ = this.§8I§ * §-M§;
            }
         }
         this.§8!%§ = this.§8I§;
         this.§@B§ = this.§9!D§;
         return _loc2_;
      }
      
      public function §]0§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §?O§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §6>§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §<!3§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§9!D§ = param1;
         this.§@B§ = param1;
         this.§8I§ = mClip.currentFrame;
         this.§8!%§ = mClip.currentFrame;
         this.§0N§ = mClip.currentFrame * §-M§;
      }
      
      public function §]"§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §6!-§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §#!"§() : Boolean
      {
         return this.§?v§;
      }
      
      public function set §#!"§(param1:Boolean) : void
      {
         this.§?v§ = param1;
      }
   }
}
