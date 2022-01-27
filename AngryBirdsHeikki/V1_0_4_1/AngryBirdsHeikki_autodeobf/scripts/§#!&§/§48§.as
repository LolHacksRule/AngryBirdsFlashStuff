package §#!&§
{
   import flash.display.MovieClip;
   import §var§.§8!_§;
   
   public class §48§ extends §8!_§
   {
      
      private static const §"!7§:Number = 1000 / 60;
       
      
      private var §=!7§:String;
      
      private var §<`§:String;
      
      private var §#!>§:int = 0;
      
      private var §=! §:int = 0;
      
      private var §5!B§:Number = 0;
      
      private var §"q§:Boolean = false;
      
      public function §48§(param1:XML, param2:§59§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §&!H§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§5!B§ += param1;
         this.§=! § = this.§5!B§ / §"!7§;
         while(this.§#!>§ < this.§=! §)
         {
            ++this.§#!>§;
            mClip.gotoAndStop(this.§#!>§);
            this.§=!7§ = mClip.currentLabel;
            if(this.§=!7§ != this.§<`§)
            {
               _loc2_ = this.§=!7§;
               this.§=! § = this.§#!>§;
               this.§5!B§ = this.§=! § * §"!7§;
            }
         }
         this.§#!>§ = this.§=! §;
         this.§<`§ = this.§=!7§;
         return _loc2_;
      }
      
      public function §7![§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §28§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §'!<§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §0S§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§=!7§ = param1;
         this.§<`§ = param1;
         this.§=! § = mClip.currentFrame;
         this.§#!>§ = mClip.currentFrame;
         this.§5!B§ = mClip.currentFrame * §"!7§;
      }
      
      public function §9!=§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §2_§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §2Z§() : Boolean
      {
         return this.§"q§;
      }
      
      public function set §2Z§(param1:Boolean) : void
      {
         this.§"q§ = param1;
      }
   }
}
