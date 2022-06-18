package §"!B§
{
   import §]!=§.§&P§;
   import flash.display.MovieClip;
   
   public class §"t§ extends §&P§
   {
      
      private static const §[!A§:Number = 1000 / 60;
       
      
      private var §^!@§:String;
      
      private var §;!+§:String;
      
      private var §&K§:int = 0;
      
      private var §;!!§:int = 0;
      
      private var §[I§:Number = 0;
      
      private var §!I§:Boolean = false;
      
      public function §"t§(param1:XML, param2:§58§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §#G§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§[I§ += param1;
         this.§;!!§ = this.§[I§ / §[!A§;
         while(this.§&K§ < this.§;!!§)
         {
            ++this.§&K§;
            mClip.gotoAndStop(this.§&K§);
            this.§^!@§ = mClip.currentLabel;
            if(this.§^!@§ != this.§;!+§)
            {
               _loc2_ = this.§^!@§;
               this.§;!!§ = this.§&K§;
               this.§[I§ = this.§;!!§ * §[!A§;
            }
         }
         this.§&K§ = this.§;!!§;
         this.§;!+§ = this.§^!@§;
         return _loc2_;
      }
      
      public function §,"§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §%v§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §6!+§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §-A§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§^!@§ = param1;
         this.§;!+§ = param1;
         this.§;!!§ = mClip.currentFrame;
         this.§&K§ = mClip.currentFrame;
         this.§[I§ = mClip.currentFrame * §[!A§;
      }
      
      public function §9!I§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §&9§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §?d§() : Boolean
      {
         return this.§!I§;
      }
      
      public function set §?d§(param1:Boolean) : void
      {
         this.§!I§ = param1;
      }
   }
}
