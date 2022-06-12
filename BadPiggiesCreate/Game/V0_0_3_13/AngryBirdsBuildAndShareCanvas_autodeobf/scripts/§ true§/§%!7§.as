package § true§
{
   import §4!j§.§""3§;
   import flash.display.MovieClip;
   
   public class §%!7§ extends §""3§
   {
      
      private static const §7!B§:Number = 1000 / 60;
       
      
      private var § "§:String;
      
      private var §`! §:String;
      
      private var §=!s§:int = 0;
      
      private var §9!Z§:int = 0;
      
      private var §="'§:Number = 0;
      
      private var § !B§:Boolean = false;
      
      public function §%!7§(param1:XML, param2:§1H§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function § k§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§="'§ += param1;
         this.§9!Z§ = this.§="'§ / §7!B§;
         while(this.§=!s§ < this.§9!Z§)
         {
            ++this.§=!s§;
            mClip.gotoAndStop(this.§=!s§);
            this.§ "§ = mClip.currentLabel;
            if(this.§ "§ != this.§`! §)
            {
               _loc2_ = this.§ "§;
               this.§9!Z§ = this.§=!s§;
               this.§="'§ = this.§9!Z§ * §7!B§;
            }
         }
         this.§=!s§ = this.§9!Z§;
         this.§`! § = this.§ "§;
         return _loc2_;
      }
      
      public function §%Y§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §,!0§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §^9§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §9!c§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§ "§ = param1;
         this.§`! § = param1;
         this.§9!Z§ = mClip.currentFrame;
         this.§=!s§ = mClip.currentFrame;
         this.§="'§ = mClip.currentFrame * §7!B§;
      }
      
      public function §&!5§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §5D§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §9!8§() : Boolean
      {
         return this.§ !B§;
      }
      
      public function set §9!8§(param1:Boolean) : void
      {
         this.§ !B§ = param1;
      }
   }
}
