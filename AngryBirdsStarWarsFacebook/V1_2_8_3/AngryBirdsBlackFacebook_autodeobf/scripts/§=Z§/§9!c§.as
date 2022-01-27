package §=Z§
{
   import §8!h§.§%"z§;
   import §=!4§.§8"U§;
   import flash.display.MovieClip;
   
   public class §9!c§ extends §%"z§
   {
      
      private static const §8§:Number = 1000 / 60;
       
      
      private var §@!o§:String;
      
      private var §"!N§:String;
      
      private var §+"g§:int = 0;
      
      private var §2C§:int = 0;
      
      private var §="T§:Number = 0;
      
      private var §"";§:Boolean = false;
      
      public function §9!c§(param1:XML, param2:§@!8§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §8"U§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function §=D§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§="T§ += param1;
         this.§2C§ = this.§="T§ / §8§;
         while(this.§+"g§ < this.§2C§)
         {
            ++this.§+"g§;
            mClip.gotoAndStop(this.§+"g§);
            this.§@!o§ = mClip.currentLabel;
            if(this.§@!o§ != this.§"!N§)
            {
               _loc2_ = this.§@!o§;
               this.§2C§ = this.§+"g§;
               this.§="T§ = this.§2C§ * §8§;
            }
         }
         this.§+"g§ = this.§2C§;
         this.§"!N§ = this.§@!o§;
         return _loc2_;
      }
      
      public function §8!"§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §2E§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §+"v§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function § g§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§@!o§ = param1;
         this.§"!N§ = param1;
         this.§2C§ = mClip.currentFrame;
         this.§+"g§ = mClip.currentFrame;
         this.§="T§ = mClip.currentFrame * §8§;
      }
      
      public function §!!x§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §%!8§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §["z§() : Boolean
      {
         return this.§"";§;
      }
      
      public function set §["z§(param1:Boolean) : void
      {
         this.§"";§ = param1;
      }
   }
}
