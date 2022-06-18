package §3'§
{
   import §+n§.§3P§;
   import flash.display.MovieClip;
   
   public class §?-§ extends §3P§
   {
      
      private static const §^r§:Number = 1000 / 60;
       
      
      private var §%G§:String;
      
      private var §8e§:String;
      
      private var §`!8§:int = 0;
      
      private var §#!%§:int = 0;
      
      private var §]L§:Number = 0;
      
      private var §]!=§:Boolean = false;
      
      public function §?-§(param1:XML, param2:§8I§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §1!D§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§]L§ += param1;
         this.§#!%§ = this.§]L§ / §^r§;
         while(this.§`!8§ < this.§#!%§)
         {
            ++this.§`!8§;
            mClip.gotoAndStop(this.§`!8§);
            this.§%G§ = mClip.currentLabel;
            if(this.§%G§ != this.§8e§)
            {
               _loc2_ = this.§%G§;
               this.§#!%§ = this.§`!8§;
               this.§]L§ = this.§#!%§ * §^r§;
            }
         }
         this.§`!8§ = this.§#!%§;
         this.§8e§ = this.§%G§;
         return _loc2_;
      }
      
      public function §4n§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §^]§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §^2§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §=!E§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§%G§ = param1;
         this.§8e§ = param1;
         this.§#!%§ = mClip.currentFrame;
         this.§`!8§ = mClip.currentFrame;
         this.§]L§ = mClip.currentFrame * §^r§;
      }
      
      public function §=w§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §;N§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §-D§() : Boolean
      {
         return this.§]!=§;
      }
      
      public function set §-D§(param1:Boolean) : void
      {
         this.§]!=§ = param1;
      }
   }
}
