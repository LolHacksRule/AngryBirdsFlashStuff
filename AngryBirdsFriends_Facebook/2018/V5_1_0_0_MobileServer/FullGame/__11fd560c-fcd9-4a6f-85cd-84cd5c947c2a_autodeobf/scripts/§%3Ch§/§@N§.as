package §<h§
{
   import §3"I§.§ E§;
   import §3#T§.§,#[§;
   import flash.display.MovieClip;
   
   public class §@N§ extends §,#[§
   {
      
      private static const §8!?§:Number = 1000 / 60;
       
      
      private var §]c§:String;
      
      private var § t§:String;
      
      private var §=!Z§:int = 0;
      
      private var §8!J§:int = 0;
      
      private var §-"[§:Number = 0;
      
      private var §,]§:Boolean = false;
      
      public function §@N§(param1:XML, param2:§[#K§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : § E§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function §4$ §(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§-"[§ += param1;
         this.§8!J§ = this.§-"[§ / §8!?§;
         while(this.§=!Z§ < this.§8!J§)
         {
            ++this.§=!Z§;
            mClip.gotoAndStop(this.§=!Z§);
            this.§]c§ = mClip.currentLabel;
            if(this.§]c§ != this.§ t§)
            {
               _loc2_ = this.§]c§;
               this.§8!J§ = this.§=!Z§;
               this.§-"[§ = this.§8!J§ * §8!?§;
            }
         }
         this.§=!Z§ = this.§8!J§;
         this.§ t§ = this.§]c§;
         return _loc2_;
      }
      
      public function §@!X§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §+!q§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §>#-§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §4#y§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§]c§ = param1;
         this.§ t§ = param1;
         this.§8!J§ = mClip.currentFrame;
         this.§=!Z§ = mClip.currentFrame;
         this.§-"[§ = mClip.currentFrame * §8!?§;
      }
      
      public function §0&§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §]"w§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get isPlaying() : Boolean
      {
         return this.§,]§;
      }
      
      public function set isPlaying(param1:Boolean) : void
      {
         this.§,]§ = param1;
      }
   }
}
