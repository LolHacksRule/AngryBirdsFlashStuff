package §;!A§
{
   import §+!d§.§"r§;
   import flash.display.MovieClip;
   
   public class §%!`§ extends §"r§
   {
      
      private static const §4;§:Number = 1000 / 60;
       
      
      private var §&9§:String;
      
      private var §;! §:String;
      
      private var §=B§:int = 0;
      
      private var §>U§:int = 0;
      
      private var §,^§:Number = 0;
      
      private var §=!R§:Boolean = false;
      
      public function §%!`§(param1:XML, param2:§;!u§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §3!_§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§,^§ += param1;
         this.§>U§ = this.§,^§ / §4;§;
         while(this.§=B§ < this.§>U§)
         {
            ++this.§=B§;
            mClip.gotoAndStop(this.§=B§);
            this.§&9§ = mClip.currentLabel;
            if(this.§&9§ != this.§;! §)
            {
               _loc2_ = this.§&9§;
               this.§>U§ = this.§=B§;
               this.§,^§ = this.§>U§ * §4;§;
            }
         }
         this.§=B§ = this.§>U§;
         this.§;! § = this.§&9§;
         return _loc2_;
      }
      
      public function §^9§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §[G§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §[[§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §try§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§&9§ = param1;
         this.§;! § = param1;
         this.§>U§ = mClip.currentFrame;
         this.§=B§ = mClip.currentFrame;
         this.§,^§ = mClip.currentFrame * §4;§;
      }
      
      public function §8!$§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §5!r§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §@!K§() : Boolean
      {
         return this.§=!R§;
      }
      
      public function set §@!K§(param1:Boolean) : void
      {
         this.§=!R§ = param1;
      }
   }
}
