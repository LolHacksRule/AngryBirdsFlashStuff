package §[V§
{
   import §8B§.§+;§;
   import flash.display.MovieClip;
   
   public class §02§ extends §+;§
   {
      
      private static const §%&§:Number = 1000 / 60;
       
      
      private var §>C§:String;
      
      private var §&!E§:String;
      
      private var §#t§:int = 0;
      
      private var §0x§:int = 0;
      
      private var §+!,§:Number = 0;
      
      private var §1=§:Boolean = false;
      
      public function §02§(param1:XML, param2:§=!'§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §,c§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§+!,§ += param1;
         this.§0x§ = this.§+!,§ / §%&§;
         while(this.§#t§ < this.§0x§)
         {
            ++this.§#t§;
            mClip.gotoAndStop(this.§#t§);
            this.§>C§ = mClip.currentLabel;
            if(this.§>C§ != this.§&!E§)
            {
               _loc2_ = this.§>C§;
               this.§0x§ = this.§#t§;
               this.§+!,§ = this.§0x§ * §%&§;
            }
         }
         this.§#t§ = this.§0x§;
         this.§&!E§ = this.§>C§;
         return _loc2_;
      }
      
      public function §>!<§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §4!@§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §5L§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §[Z§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§>C§ = param1;
         this.§&!E§ = param1;
         this.§0x§ = mClip.currentFrame;
         this.§#t§ = mClip.currentFrame;
         this.§+!,§ = mClip.currentFrame * §%&§;
      }
      
      public function §`-§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §[T§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §4I§() : Boolean
      {
         return this.§1=§;
      }
      
      public function set §4I§(param1:Boolean) : void
      {
         this.§1=§ = param1;
      }
   }
}
