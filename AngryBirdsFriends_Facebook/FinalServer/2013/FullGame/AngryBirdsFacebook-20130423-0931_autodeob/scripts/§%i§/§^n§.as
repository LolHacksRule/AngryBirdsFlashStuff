package §%i§
{
   import §1!t§.§!!G§;
   import flash.display.MovieClip;
   
   public class §^n§ extends §!!G§
   {
      
      private static const § "-§:Number = 1000 / 60;
       
      
      private var §^"V§:String;
      
      private var §]X§:String;
      
      private var §,!L§:int = 0;
      
      private var §#s§:int = 0;
      
      private var §%t§:Number = 0;
      
      private var §-"C§:Boolean = false;
      
      public function §^n§(param1:XML, param2:§0!Y§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §=;§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§%t§ += param1;
         this.§#s§ = this.§%t§ / § "-§;
         while(this.§,!L§ < this.§#s§)
         {
            ++this.§,!L§;
            mClip.gotoAndStop(this.§,!L§);
            this.§^"V§ = mClip.currentLabel;
            if(this.§^"V§ != this.§]X§)
            {
               _loc2_ = this.§^"V§;
               this.§#s§ = this.§,!L§;
               this.§%t§ = this.§#s§ * § "-§;
            }
         }
         this.§,!L§ = this.§#s§;
         this.§]X§ = this.§^"V§;
         return _loc2_;
      }
      
      public function §%"C§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §<"2§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §&8§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §!!a§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§^"V§ = param1;
         this.§]X§ = param1;
         this.§#s§ = mClip.currentFrame;
         this.§,!L§ = mClip.currentFrame;
         this.§%t§ = mClip.currentFrame * § "-§;
      }
      
      public function §[!z§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §=!5§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §6",§() : Boolean
      {
         return this.§-"C§;
      }
      
      public function set §6",§(param1:Boolean) : void
      {
         this.§-"C§ = param1;
      }
   }
}
