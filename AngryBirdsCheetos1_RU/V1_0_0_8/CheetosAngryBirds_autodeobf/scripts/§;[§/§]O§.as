package §;[§
{
   import §'!N§.§71§;
   import flash.display.MovieClip;
   
   public class §]O§ extends §71§
   {
      
      private static const §+'§:Number = 1000 / 60;
       
      
      private var §3!;§:String;
      
      private var §["§:String;
      
      private var §!4§:int = 0;
      
      private var §"!N§:int = 0;
      
      private var §6F§:Number = 0;
      
      private var §&x§:Boolean = false;
      
      public function §]O§(param1:XML, param2:§>!^§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §4W§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§6F§ += param1;
         this.§"!N§ = this.§6F§ / §+'§;
         while(this.§!4§ < this.§"!N§)
         {
            ++this.§!4§;
            mClip.gotoAndStop(this.§!4§);
            this.§3!;§ = mClip.currentLabel;
            if(this.§3!;§ != this.§["§)
            {
               _loc2_ = this.§3!;§;
               this.§"!N§ = this.§!4§;
               this.§6F§ = this.§"!N§ * §+'§;
            }
         }
         this.§!4§ = this.§"!N§;
         this.§["§ = this.§3!;§;
         return _loc2_;
      }
      
      public function §3!R§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §2!Z§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §,!P§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §1!"§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§3!;§ = param1;
         this.§["§ = param1;
         this.§"!N§ = mClip.currentFrame;
         this.§!4§ = mClip.currentFrame;
         this.§6F§ = mClip.currentFrame * §+'§;
      }
      
      public function §=Q§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §!!J§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §'!S§() : Boolean
      {
         return this.§&x§;
      }
      
      public function set §'!S§(param1:Boolean) : void
      {
         this.§&x§ = param1;
      }
   }
}
