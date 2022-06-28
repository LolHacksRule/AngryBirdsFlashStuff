package §?!7§
{
   import §9Y§.§+!!§;
   import flash.display.MovieClip;
   
   public class §[I§ extends §+!!§
   {
      
      private static const §1k§:Number = 1000 / 60;
       
      
      private var §2!%§:String;
      
      private var §2!k§:String;
      
      private var §;T§:int = 0;
      
      private var §55§:int = 0;
      
      private var §^V§:Number = 0;
      
      private var §1!S§:Boolean = false;
      
      public function §[I§(param1:XML, param2:§8;§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §+#§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§^V§ += param1;
         this.§55§ = this.§^V§ / §1k§;
         while(this.§;T§ < this.§55§)
         {
            ++this.§;T§;
            mClip.gotoAndStop(this.§;T§);
            this.§2!%§ = mClip.currentLabel;
            if(this.§2!%§ != this.§2!k§)
            {
               _loc2_ = this.§2!%§;
               this.§55§ = this.§;T§;
               this.§^V§ = this.§55§ * §1k§;
            }
         }
         this.§;T§ = this.§55§;
         this.§2!k§ = this.§2!%§;
         return _loc2_;
      }
      
      public function §=!g§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §;t§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §-!H§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §2!?§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§2!%§ = param1;
         this.§2!k§ = param1;
         this.§55§ = mClip.currentFrame;
         this.§;T§ = mClip.currentFrame;
         this.§^V§ = mClip.currentFrame * §1k§;
      }
      
      public function §!!#§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §1!!§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §;J§() : Boolean
      {
         return this.§1!S§;
      }
      
      public function set §;J§(param1:Boolean) : void
      {
         this.§1!S§ = param1;
      }
   }
}
