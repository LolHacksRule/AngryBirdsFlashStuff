package §#,§
{
   import §!"'§.§0"Z§;
   import §,!Q§.§+!2§;
   import flash.display.MovieClip;
   
   public class §'!`§ extends §+!2§
   {
      
      private static const §6!Z§:Number = 1000 / 60;
       
      
      private var §0$,§:String;
      
      private var §4"#§:String;
      
      private var §&A§:int = 0;
      
      private var §<!h§:int = 0;
      
      private var §`_§:Number = 0;
      
      private var §5!q§:Boolean = false;
      
      public function §'!`§(param1:XML, param2:§]$+§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §0"Z§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function §1"d§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§`_§ += param1;
         this.§<!h§ = this.§`_§ / §6!Z§;
         while(this.§&A§ < this.§<!h§)
         {
            ++this.§&A§;
            mClip.gotoAndStop(this.§&A§);
            this.§0$,§ = mClip.currentLabel;
            if(this.§0$,§ != this.§4"#§)
            {
               _loc2_ = this.§0$,§;
               this.§<!h§ = this.§&A§;
               this.§`_§ = this.§<!h§ * §6!Z§;
            }
         }
         this.§&A§ = this.§<!h§;
         this.§4"#§ = this.§0$,§;
         return _loc2_;
      }
      
      public function §>#I§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function § "!§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §>#6§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §!!q§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§0$,§ = param1;
         this.§4"#§ = param1;
         this.§<!h§ = mClip.currentFrame;
         this.§&A§ = mClip.currentFrame;
         this.§`_§ = mClip.currentFrame * §6!Z§;
      }
      
      public function §4"D§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §-"@§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get isPlaying() : Boolean
      {
         return this.§5!q§;
      }
      
      public function set isPlaying(param1:Boolean) : void
      {
         this.§5!q§ = param1;
      }
   }
}
